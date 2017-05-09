class CardFacade < FenrirView::Facade
  properties :title, :subtitle
  property :links, default: []

  def title
    properties[:title].titleize
  end

  def show_links?
    links.any?
  end
end