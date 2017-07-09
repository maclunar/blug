module Blug
  class Article < ApplicationRecord
    has_many :comments
  end
end
