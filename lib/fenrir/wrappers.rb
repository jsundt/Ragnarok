module Fenrir::Wrappers

  def ui_wrapper(type, options = {}, &block)
    if block_given?
      content = capture(&block)
    else
      content_tag(:p, "Content not specified!")
    end

    case type
    when 'button'
      ui_wrapper_button(options, content)
    when 'section'
      ui_wrapper_section(options, content)
    when 'card'
      ui_wrapper_card(options, content)
    else
      raise "Wrapper of type: #{type} does not exist. Use button, section or card"
    end
  end


  private

  def ui_wrapper_button(options, content)
    content_tag(:button, type: "button", class: "w-btn u-bg--to-primary #{options[:class]}") do
      content
    end
  end

  def ui_wrapper_section(options, content)
    content_tag(:div, class: "#{options[:class]}") do
      content
    end
  end

  def ui_wrapper_card(options, content)
    content_tag(:div, class: "w-card test #{options[:class]}") do
      content
    end
  end

end
