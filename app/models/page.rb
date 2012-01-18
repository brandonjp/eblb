class Page
  include Mongoid::Document

  field :name
  field :slug
  validates_presence_of :name, :slug
  
  embeds_many :reasons
  
  belongs_to :user

end
