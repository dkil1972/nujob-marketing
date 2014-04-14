class Course
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email,       type: String

  validates :email, :format => { :with => /\A([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}\z/ix}
  
end