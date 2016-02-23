class User < ActiveRecord::Base
#    extend FriendlyId
    has_secure_password
# # #
  has_many :options
  has_many :goals
# # #
  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
#
# # # Validations
# # # TODO: Enter validations for:
 # # 1. first name is present
   validates :first_name, presence: { strict: true, maximum: 255 }
 # # 2. last name is present
   validates :last_name, presence: { strict: true, maximum: 255 }
# # # 3. email is present
   validates :email, presence: { strict: true, maximum: 255 }
# # # 4. all three must not be over 255 characters
   validates_uniqueness_of :email
#   # 5. email must be unique
   validates :email, presence: { strict: true }
#   # 6. email must have an @ symbol
   validates :email, format: {with: /@/}
#   # 7. password must be at least 8 characters
   validates :password, length: {maximum: 8}
#   # 8. password can only be letters and numbers
  #validates :email, format: {with: /[A-Za-z\d?/W/]}
# #
end
