class User < ApplicationRecord
  mount_uploader :image, ImageUploader

  attr_accessor :name, :age

  def initialize(name:, age:)
    self.name = name
    self.age = age
  end

  def disp_name
    if self.age > 19
      "#{self.name}さん"
    elsif self.age > 10
      "#{self.name}君"
    elsif self.age > 0
      "#{self.name}ちゃん"
    else
      "不正な数値です"
    end
  end
end
