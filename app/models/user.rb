class User < ActiveRecord::Base
  include BCrypt
  validates :username, presence: true, uniqueness: true
  validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(pass)
    @password ||= Password.create(pass)
    self.password_hash = @password
  end

  def self.authenticate(password)
    matched_user = User.find_by(username: username)
    return matched_user if matched_user && (matched_user.password == password)
  end

end
