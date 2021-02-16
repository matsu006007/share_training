class Trouble < ApplicationRecord
  with_options presence: true do
    validates :trouble_title
    validates :trouble_content
  end
    
  belongs_to :user
end
