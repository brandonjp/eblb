class Reason
  include Mongoid::Document

  field :text
  validates_presence_of :text
  
  belongs_to :user
  embedded_in :page

end
