class CardComponent < FenrirView::Presenter
  properties :title, :description, :link, :image
  property :data, default: []

  def title
    properties[:title].titleize
  end

  def linked?
    link.present?
  end

  def show_image?
    image.present?
  end

  def show_data?
    data.any?
  end
end
