class User < ApplicationRecord

  has_secure_password
  has_many :ticket

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }

  def return_data
    {
      id: id,
      username: username,
      email: email,
      fname: fname,
      lname: lname,
      company: company,
      addr1: addr1,
      addr2: addr2,
      city: city,
      state: state,
      zip: zip,
      phone: phone,
      level: level,
      permission: permission,
      created_at: created_at,
      updated_at: updated_at
    }
  end

end
