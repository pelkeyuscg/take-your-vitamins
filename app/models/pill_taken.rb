class PillTaken < ApplicationRecord

  belongs_to :pill, :required => true, :class_name => "Pill", :foreign_key => "pill_id", :counter_cache => true

end
