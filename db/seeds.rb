# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ProgramingLanguage.destroy_all
# User.destroy_all 
# CodeChallenge.destroy_all
# Group.destroy_all

# GroupMember.destroy_all
# UserChallenge.destroy_all 


# ActiveRecord::Base.connection.tables.each do |t|
#     ActiveRecord::Base.connection.reset_sequence!(t)
# end

# ProgramingLanguage.create(name:'Ruby')
# ProgramingLanguage.create(name:'React')
# ProgramingLanguage.create(name:'CSS')
# ProgramingLanguage.create(name:'HTML')


User.create(name:'Carlos', email:'carlos@email', password:'carlospass', github:'carlosgithub', image:'carlosimage', phone:'000000000')
User.create(name:'Jhon', email:'jhon@email', password:'jhonpass', github:'jhongithub', image:'jhonimage', phone:'000000000')
User.create(name:'peter', email:'peter@email', password:'peterpass', github:'petergithub', image:'peterimage', phone:'000000000')


# CodeChallenge.create(name:'Fizzbuz', description:'Do a fizzbuz' , user_created:false,  programing_language_id:1, difficulty:'biginners')
# CodeChallenge.create(name:'Card', description:'Do a card css' , user_created:false,  programing_language_id:3,difficulty:'biginners')
# CodeChallenge.create(name:'Calculator ', description:'React' , user_created:false,  programing_language_id:2,difficulty:'biginners')
# CodeChallenge.create(name:'Calculator ', description:'React' , user_created:false,  programing_language_id:2,difficulty:'biginners')


# Group.create(name:'ReactMasters', programing_language_id:2)



# GroupMember.create(user_id:1, group_id:1)
# UserChallenge.create(user_id:1, code_challenge_id:3)
