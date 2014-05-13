# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  link       :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
	has_many :product_categories, :dependent => :destroy
    has_many :categories, :through => :product_categories
end
