# encoding: utf-8
class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String
  field :slug, type: String
  field :description, type: String
  
  belongs_to :user
  
  embeds_many :reasons, validate: false

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  
  slug :slug

  # index "name", background: true, unique: false
  # index "slug", background: true, unique: true
  
end
