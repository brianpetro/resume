class Qscore < ActiveRecord::Base
  belongs_to :tag
  belongs_to :resource
end
