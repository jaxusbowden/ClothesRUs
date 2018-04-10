class Message 
    include ActiveModel::Model
    attr_accessor :name, :email, :message
    validates :name, :email, :message, presence: true
end
