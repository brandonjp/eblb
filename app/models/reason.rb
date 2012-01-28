# encoding: utf-8
class Reason
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :title, type: String
  field :detail, type: String

  belongs_to :user

  embedded_in :page
#  embeds_many :photos, as: :photographic, validate: false

  validates :title, presence: true
  
  def author
    if self.user_id?
      User.find(self.user_id).name
    else
      "Anonymous"
    end
  end
  
end
