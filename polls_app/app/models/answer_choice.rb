# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  question_id :integer
#  choice      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
  validates :choice, presence: true
  
  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question
  
    has_many :responses,
      primary_key: :id,
      foreign_key: :answer_choice_id,
      class_name: :Response
  
      
end 
