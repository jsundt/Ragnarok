module Fenrir::Components

  def ui_wrapper(type, options = {})
    defaults = {
      version: 'Master'
    }

    options = ui_props({
      version: String,
    }, defaults, options)
  end


  private

  def ui_props(requirements, defaults, options)
    args = defaults.merge(options)

    requirements.each do |name, req|
      if req == 'present'
        ui_requires_presence_of(args[name])
      else
        ui_requires_type_of(name, args[name], req)
      end
    end

    return args
  end

  def ui_requires_type_of(name, item, type)
    if item.present?
      unless item.is_a?(type)
        Rails.logger.info("#{name} should be of type: #{type}")
      end
    else
      Rails.logger.info("#{name} needs to be present!")
    end
  end

  def ui_requires_presence_of(item)
    unless item.present?
      Rails.logger.info("Needs to be present!")
    end
  end
end
