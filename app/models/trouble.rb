class Trouble < ApplicationRecord
  with_options presence: true do
    validates :troubletitle
    validates :trouble_content
    validates :trouble_data_id
    validates :another_trouble
  end
    
  belongs_to :user
end
