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

# ProgramingLanguage.create(name:'Ruby', description:'A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.')
# ProgramingLanguage.create(name:'React', description:'React makes it painless to create interactive UIs. Design simple views for each state in your application, and React will efficiently update and render just the right components when your data changes.')
# ProgramingLanguage.create(name:'CSS', description:'Cascading Style Sheets (CSS) is a simple mechanism for adding style (e.g., fonts, colors, spacing) to Web documents.')
# ProgramingLanguage.create(name:'Python', description:'Python is a programming language that lets you work quickly
#     and integrate systems more effectively')
# ProgramingLanguage.create(name:'HTML', description:'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript. ... HTML elements are the building blocks of HTML pages.')
# ProgramingLanguage.create(name:'C++', description:'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".')
# ProgramingLanguage.create(name:'Java', description:'Java is powering the innovation behind our digital world. Harness this potential with Java resources for student coders, hobbyists, developers, and IT leaders.

#     ')
# ProgramingLanguage.create(name:'Swift', description:'Swift is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS. Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love. Swift code is safe by design, yet also produces software that runs lightning-fast.')
# ProgramingLanguage.create(name:'Flutter', description:"Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase.")
# ProgramingLanguage.create(name:'Kotlin',description:'A modern programming language
#     that makes developers happier.')

# User.create(name:'Carlos', email:'carlos@email', password:'carlospass', github:'carlosgithub', image:'carlosimage', phone:'999999999')
# User.create(name:'Jhon', email:'jhon@email', password:'jhonpass', github:'jhongithub', image:'jhonimage', phone:'999999999')
# User.create(name:'Peter', email:'peter@email', password:'peterpass', github:'petergithub', image:'peterimage', phone:'999999999')
# User.create(name:'Greg', email:'Greg@email', password:'Gregpass', github:'Greggithub', image:'Gregimage', phone:'999999999')
# User.create(name:'Arthur', email:'Arthur@email', password:'Arthurpass', github:'Arthurgithub', image:'Arthurimage', phone:'999999999')
# User.create(name:'Kyle', email:'Kyle@email', password:'Kylepass', github:'Kylegithub', image:'Kyleimage', phone:'999999999')
# User.create(name:'Brendan', email:'Brendan@email', password:'Brendanpass', github:'Brendangithub', image:'Brendanimage', phone:'999999999')
# User.create(name:'Adreena', email:'Adreena@email', password:'Adreenapass', github:'Adreenagithub', image:'Adreenaimage', phone:'999999999')
# User.create(name:'Lucy', email:'Lucy@email', password:'Lucypass', github:'Lucygithub', image:'Lucyimage', phone:'999999999')
# User.create(name:'Edward', email:'Edward@email', password:'Edwardpass', github:'Edwardgithub', image:'Edwardimage', phone:'999999999')
# User.create(name:'Kenny', email:'Kenny@email', password:'Kennypass', github:'Kennygithub', image:'Kennyimage', phone:'999999999')
# User.create(name:'Terry', email:'Terry@email', password:'Terrypass', github:'Terrygithub', image:'Terryimage', phone:'999999999')
# User.create(name:'Darren', email:'Darren@email', password:'Darrenpass', github:'Darrengithub', image:'Darrenimage', phone:'999999999')
# User.create(name:'Shevon', email:'Shevon@email', password:'Shevonpass', github:'Shevongithub', image:'Shevonimage', phone:'999999999')
# User.create(name:'Nisa', email:'Nisa@email', password:'Nisapass', github:'Nisagithub', image:'Nisaimage', phone:'999999999')
# User.create(name:'Adrieene', email:'Adrieene@email', password:'Adrieenepass', github:'Adrieenegithub', image:'Adrieeneimage', phone:'999999999')
# User.create(name:'Dan', email:'Dan@email', password:'Danpass', github:'Dangithub', image:'Danimage', phone:'999999999')
# User.create(name:'Ryan', email:'Ryan@email', password:'Ryanpass', github:'Ryangithub', image:'Ryanimage', phone:'999999999')
# User.create(name:'Zeus', email:'Ryan@email', password:'Ryanpass', github:'Ryangithub', image:'Ryanimage', phone:'999999999')


### Ruby
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:1, difficulty:'biginners')
# CodeChallenge.create(name:'Fizzbuz', description:'can you fizz or buz' , user_created:false,  programing_language_id:1, difficulty:'biginners')
# CodeChallenge.create(name:'Calculator', description:'A calculator that can calculate' , user_created:false,  programing_language_id:1,difficulty:'biginners')
# CodeChallenge.create(name:'Snake Game', description:'Classic Snake game' , user_created:false,  programing_language_id:1,difficulty:'intermidiate')
# CodeChallenge.create(name:'Pong Game ', description:'Classic Pong game' , user_created:false,  programing_language_id:1,difficulty:'intermidiate')
# CodeChallenge.create(name:'First Rails App', description:'Rails app' , user_created:false,  programing_language_id:1,difficulty:'intermidiate')
# CodeChallenge.create(name:'Rails Active Record', description:'Create your first MVC' , user_created:false,  programing_language_id:1,difficulty:'Hard')
# CodeChallenge.create(name:'Rails Active Record, api', description:'Create your first Api' , user_created:false,  programing_language_id:1,difficulty:'Hard')
# CodeChallenge.create(name:'Rails auth', description:'Create your first Auth server' , user_created:false,  programing_language_id:1,difficulty:'Hard')
# CodeChallenge.create(name:'Rails Google clone', description:'Create a google search engine' , user_created:false,  programing_language_id:1,difficulty:'Expert')
# Group.create(name:'GregRubiers', programing_language_id:1)
# Group.create(name:'The Railers', programing_language_id:1)
# Group.create(name:'The superR', programing_language_id:1)
# Group.create(name:'RR', programing_language_id:1)
# Group.create(name:'Ruby a la cart', programing_language_id:1)
# Group.create(name:'ActiveRubiers', programing_language_id:1)
# Group.create(name:'Rubiers', programing_language_id:1)
########################

### React
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:2, difficulty:'biginners')
# CodeChallenge.create(name:'Fizzbuz', description:'can you fizz or buz' , user_created:false,  programing_language_id:2, difficulty:'biginners')
# CodeChallenge.create(name:'Calculator', description:'A calculator that can calculate' , user_created:false,  programing_language_id:2,difficulty:'biginners')
# CodeChallenge.create(name:'Snake Game', description:'Classic Snake game' , user_created:false,  programing_language_id:2,difficulty:'intermidiate')
# CodeChallenge.create(name:'Pong Game ', description:'Classic Pong game' , user_created:false,  programing_language_id:2,difficulty:'intermidiate')
# CodeChallenge.create(name:'Twitter Clone', description:'Create a Twitter Clone' , user_created:false,  programing_language_id:2,difficulty:'Hard')
# CodeChallenge.create(name:'Facebook Clone', description:'Create a Facebook Clone' , user_created:false,  programing_language_id:2,difficulty:'Hard')
# CodeChallenge.create(name:'Instagram Clone', description:'Create a Instagram Clone' , user_created:false,  programing_language_id:2,difficulty:'Hard')
# CodeChallenge.create(name:'Streaming', description:'Create a Streaming website' , user_created:false,  programing_language_id:2,difficulty:'Expert')
# Group.create(name:'GregReactors', programing_language_id:2)
# Group.create(name:'The Reactanators', programing_language_id:2)
# Group.create(name:'FirstReact', programing_language_id:2)
# Group.create(name:'ReactSpacers', programing_language_id:2)

########################

### Css
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:3, difficulty:'biginners')
# CodeChallenge.create(name:'Card', description:'can you card' , user_created:false,  programing_language_id:3, difficulty:'biginners')
# CodeChallenge.create(name:'Shadow', description:'A shadow effect' , user_created:false,  programing_language_id:3,difficulty:'biginners')
# CodeChallenge.create(name:'Center', description:'Center all' , user_created:false,  programing_language_id:3,difficulty:'intermidiate')
# CodeChallenge.create(name:'Positioning ', description:'Position element in every corner' , user_created:false,  programing_language_id:3,difficulty:'intermidiate')
# CodeChallenge.create(name:'Grid Layout', description:'Create your Own Layout' , user_created:false,  programing_language_id:3,difficulty:'Hard')
# CodeChallenge.create(name:'Flex', description:'Create a Flex' , user_created:false,  programing_language_id:3,difficulty:'Hard')
# CodeChallenge.create(name:'Animation ', description:'Create a Ball Jumping Up and Down' , user_created:false,  programing_language_id:3,difficulty:'Hard')

# Group.create(name:'GregCss', programing_language_id:3)


########################

# ## python
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:4, difficulty:'biginners')
# CodeChallenge.create(name:'Fizzbuz', description:'can you fizz or buz' , user_created:false,  programing_language_id:4, difficulty:'biginners')
# CodeChallenge.create(name:'Calculator', description:'A calculator that can calculate' , user_created:false,  programing_language_id:4,difficulty:'biginners')
# CodeChallenge.create(name:'Snake Game', description:'Classic Snake game' , user_created:false,  programing_language_id:4,difficulty:'intermidiate')
# CodeChallenge.create(name:'Pong Game ', description:'Classic Pong game' , user_created:false,  programing_language_id:4,difficulty:'intermidiate')

# Group.create(name:'GregPythons', programing_language_id:4)
# Group.create(name:'Pythoneros', programing_language_id:4)
# Group.create(name:'Pip', programing_language_id:4)

# #######################

# ## Html
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:5, difficulty:'biginners')
# Group.create(name:'GregHtml', programing_language_id:5)
# #######################


# ## C++
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:6, difficulty:'biginners')
# CodeChallenge.create(name:'Fizzbuz', description:'can you fizz or buz' , user_created:false,  programing_language_id:6, difficulty:'biginners')
# CodeChallenge.create(name:'Calculator', description:'A calculator that can calculate' , user_created:false,  programing_language_id:6,difficulty:'biginners')
# CodeChallenge.create(name:'Snake Game', description:'Classic Snake game' , user_created:false,  programing_language_id:6,difficulty:'intermidiate')
# CodeChallenge.create(name:'Pong Game ', description:'Classic Pong game' , user_created:false,  programing_language_id:6,difficulty:'intermidiate')

# Group.create(name:'GregC', programing_language_id:6)
# Group.create(name:'+++', programing_language_id:6)
# #######################


# ## Java
# CodeChallenge.create(name:'Hello world', description:'print Hello world' , user_created:false,  programing_language_id:7, difficulty:'biginners')
# CodeChallenge.create(name:'Fizzbuz', description:'can you fizz or buz' , user_created:false,  programing_language_id:7, difficulty:'biginners')
# CodeChallenge.create(name:'Calculator', description:'A calculator that can calculate' , user_created:false,  programing_language_id:7,difficulty:'biginners')
# CodeChallenge.create(name:'Snake Game', description:'Classic Snake game' , user_created:false,  programing_language_id:7,difficulty:'intermidiate')
# CodeChallenge.create(name:'Pong Game ', description:'Classic Pong game' , user_created:false,  programing_language_id:7,difficulty:'intermidiate')

# Group.create(name:'GregJa', programing_language_id:7)
# Group.create(name:'Javiers', programing_language_id:7)
# #######################


# ## Swift
# CodeChallenge.create(name:'Hello swift', description:'print Hello world' , user_created:false,  programing_language_id:8, difficulty:'biginners')
# CodeChallenge.create(name:'Apple Card', description:'do a card component for ios' , user_created:false,  programing_language_id:8, difficulty:'biginners')
# CodeChallenge.create(name:'Calculator', description:'A calculator that can calculate' , user_created:false,  programing_language_id:8,difficulty:'biginners')


# Group.create(name:'GregSwift', programing_language_id:8)
# Group.create(name:'Swifters', programing_language_id:8)
# #######################




# GroupMember.create(user_id:1, group_id:1)
# UserChallenge.create(user_id:1, code_challenge_id:3)
