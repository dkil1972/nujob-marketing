class ContentItem
  include Mongoid::Document
  field :key, type: String
  field :text, type: String
  field :page, type: String
  public
  def test
    "test3333"
  end
end
