# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Response < ApplicationRecord
  validate :question
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    
    belongs_to :respondent,
      primary_key: :id,
      foreign_key: :user_id,
      class_name: :User
      
    has_one :question,
      through: :answer_choice,
      source: :question
        
      def sibling_responses
        q = self.question
        q.responses
      end
end 
