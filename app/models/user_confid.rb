class UserConfid < ApplicationRecord
    include Gravtastic
    gravtastic
    acts_as_messageable
    has_secure_password
    before_save { self.email = email.downcase }
    validates :name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }

    def mailboxer_email(object)
        return nil
      end
end
