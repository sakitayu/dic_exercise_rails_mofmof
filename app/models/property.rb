class Property < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations
  validates :name, presence: true
  validates :price,
    presence: true,
    numericality: { only_interger: true, message: '数字を入力してください！！！'  }
  validates :address, presence: true
  validates :age,
    presence: true,
    numericality: { only_interger: true, message: '数字を入力してください！！！'  }
end