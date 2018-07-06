# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  
User.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
jose = User.create!(username: 'Jose')
peter = User.create!(username: 'Peter')
david = User.create!(username: 'David')
andy = User.create!(username: 'Andy')
ryan = User.create!(username: 'Ryan')
rose = User.create!(username: 'Rose')

color_poll = Poll.create!(author_id: jose.id, title: 'Color')
food_poll = Poll.create!(author_id: peter.id, title: 'Food')
season_poll = Poll.create!(author_id: peter.id, title: 'Season')
sports_poll = Poll.create!(author_id: andy.id, title: 'Sports')



color_question = Question.create!(poll_id: color_poll.id, body: 'What is your favorite color?')
food_question = Question.create!(poll_id: food_poll.id, body: 'Which of these foods do you prefer?')
season_question = Question.create!(poll_id: season_poll.id, body: 'What is your favorite season?')
sports_question = Question.create!(poll_id: sports_poll.id, body: 'What is your favorite sport?')

red_answer = AnswerChoice.create!(choice: 'Red', question_id: color_question.id)
blue_answer = AnswerChoice.create!(choice: 'Blue', question_id: color_question.id)
yellow_answer = AnswerChoice.create!(choice: 'Yellow', question_id: color_question.id)
green_answer = AnswerChoice.create!(choice: 'Green', question_id: color_question.id)

hamburger_answer = AnswerChoice.create!(choice: 'Hamburger', question_id: food_question.id)
pizza_answer = AnswerChoice.create!(choice: 'Pizza', question_id: food_question.id)
pasta_answer = AnswerChoice.create!(choice: 'Pasta', question_id: food_question.id)
taco_answer = AnswerChoice.create!(choice: 'Tacos', question_id: food_question.id)

fall_answer = AnswerChoice.create!(choice: 'Fall', question_id: season_question.id)
winter_answer = AnswerChoice.create!(choice: 'Winter', question_id: season_question.id)
spring_answer = AnswerChoice.create!(choice: 'Spring', question_id: season_question.id)
summer_answer = AnswerChoice.create!(choice: 'Summer', question_id: season_question.id)

football_answer = AnswerChoice.create!(choice: 'Football', question_id: sports_question.id)
baseball_answer = AnswerChoice.create!(choice: 'Baseball', question_id: sports_question.id)
basketball_answer = AnswerChoice.create!(choice: 'Basketball', question_id: sports_question.id)
hockey_answer = AnswerChoice.create!(choice: 'Hockey', question_id: sports_question.id)


end 