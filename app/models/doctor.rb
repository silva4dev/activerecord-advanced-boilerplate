class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  after_create :send_email

  validates :first_name, :last_name, presence: true

  private

  def send_email

    puts "-" * 100
    puts "-" * 100
    puts "     ENVIANDO E - MAIL    "
    puts "-" * 100
    puts "-" * 100
  end
end
