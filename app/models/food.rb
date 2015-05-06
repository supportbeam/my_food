class Food < ActiveRecord::Base
  serialize :categories, Array
end
