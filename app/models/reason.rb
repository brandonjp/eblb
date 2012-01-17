class Reason
  include Mongoid::Document

  field :text
  validates_presence_of :text

end
