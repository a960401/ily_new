class Bar < ApplicationRecord
  include SearchCop
  
  search_scope :search do
    attributes :title, :description, :content
  end

	has_many :comment_bars
end
