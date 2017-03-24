module Fenrir::Slices

  def ui_slice(type, options = {}, &block)
    if block_given?
      content = capture(&block)
    else
      content_tag(:p, "Content not specified!")
    end

    case type
    when 'content'
      ui_slice_content(options, content)
    else
      raise "Slice of type: #{type} does not exist"
    end
  end


  private

  def ui_slice_content(options, content)
    options = {
      class: "u-padding-y-25"
    }.merge(options)

    content_tag(:div, class: "o-slice clearfix #{options[:class]}") do
      content
    end
  end

end
