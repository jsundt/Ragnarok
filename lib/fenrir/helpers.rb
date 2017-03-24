module Fenrir::Helpers


  private

  # Enforce required props in options hash
  # Usage: options = ui_props({
  #          version: String,
  #        }, options)
  def ui_props(requirements, options)
    requirements.each do |name, req|
      begin
        if req == 'present'
          ui_requires_presence_of(name, options[name])
        else
          ui_requires_type_of(name, options[name], req)
        end
      rescue => error
        Rails.logger.error("❌ ❌ UI prop requirements failed!")
        Rails.logger.debug(error)
        Rails.logger.debug("options provided: #{options}")
        next
      end
    end

    return options
  end

  def ui_requires_type_of(name, item, type)
    ui_requires_presence_of(name, item)
    raise "#{name} needs to be of type: #{type}" unless item.is_a?(type)
  end

  def ui_requires_presence_of(name, item)
    raise "#{name} needs to be present" unless item.present?
  end
end
