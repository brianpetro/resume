class Qscore < ActiveRecord::Base
  belongs_to :tag
  belongs_to :resource

  def self.upvote_method(qscore_id)
  	qscore = Qscore.find(qscore_id)
  	qv = qscore.value.to_i
  	newQV = qv + 1
  	qscore.value = newQV
  	qscore.save
  end
end
