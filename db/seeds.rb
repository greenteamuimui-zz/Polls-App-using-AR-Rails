# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user1 = User.create({ user_name: 'J white'})
user2 = User.create({ user_name: 'C Lam'})
user3 = User.create({ user_name: 'Clammy cheeks'})

poll1 = Poll.create( author_id: user1.id, title: "lunch")
poll2 = Poll.create( author_id: user2.id, title: "travel")
poll3 = Poll.create( author_id: user2.id, title: "tinder")

q1 = Question.create( poll_id: poll1.id, text: "Whens lunch?")
q2 = Question.create( poll_id: poll2.id, text: "Booze cruise?")
q3 = Question.create( poll_id: poll2.id, text: "Who wants beer?")

ac1 = AnswerChoice.create(question_id: q1.id, choice_text: "Noon")
ac2 = AnswerChoice.create(question_id: q2.id, choice_text: "Lame!")
ac3 = AnswerChoice.create(question_id: q3.id, choice_text: "ME!")
# ac4 = AnswerChoice.create(question_id: q1.id, choice_text: "No! 1")

re1 = Response.create(user_id: user3.id, answer_choice_id: ac1.id)
re2 = Response.create(user_id: user3.id, answer_choice_id: ac2.id)
re3 = Response.create(user_id: user3.id, answer_choice_id: ac3.id)
# re4 = Response.create(user_id: user3.id, answer_choice_id: ac4.id)
