class User < ApplicationRecord
  validates :login, presence: true, uniqueness: true
  #validates :name, presence: true
  validates :provider, presence: true
  #validates :avrtar_url, presence: true
  #validates :url, presence: true
end
