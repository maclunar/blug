module Blug
  class Article < ApplicationRecord
    attr_accessor :author_name

    belongs_to :author, class_name: Blug.author_class.to_s
    has_many :comments

    before_validation :set_author

    private

      def set_author
        self.author = Blug.author_class.find_or_create_by(name: author_name)
      end
  end
end
