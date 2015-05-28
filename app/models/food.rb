class Food < ActiveRecord::Base
  serialize :categories, Array
  belongs_to :list
end
