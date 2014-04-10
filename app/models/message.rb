class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,        type: String
  field :email,       type: String
  field :phone,       type: String
  field :content,     type: String

  validates :email, :format => { :with => /\A([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}\z/ix}
  
  after_create :send_email

  private
    def send_email
      UserMailer.send_message(self.reload).deliver
    end
end