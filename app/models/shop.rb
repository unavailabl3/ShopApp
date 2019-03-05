class Shop < ActiveRecord::Base
  attr_accessible :address, :city, :companyphone, :fio, :inn, :phone, :site, :title, :yml

  before_save   :downcase_email
  validates     :title, :site, :city, :companyphone, :yml, :inn, :fio, :address, :phone, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates     :address, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  private

    def downcase_email
        self.address = address.downcase
    end
end
