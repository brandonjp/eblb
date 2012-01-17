class Page
  include Mongoid::Document

  field :name
  field :slug
  validates_presence_of :name, :slug

end
