module QuizHelper
def pick_image_obj_random
  Profile.all.sample
end

def pick_image_obj names

 p "================================================================= #{names}"
user1=Array.new(1) { names.name }

 p "***********#{user1}"
 users=Array.new
 users = Profile.pluck(:name)
 puts users

 users2 = users - user1
p users
if users.length > 4
random_number = rand(users2.length)
puts random_number
options=Array.new
options << users[random_number]
options << users[random_number +1]
options << users[random_number +2]
options << names.name
@options=options
else
  options=users
end
puts "&&&&&&&&&&&&&&&&& #{options}"
options.sort!{rand()-0.5}
puts options
return options 
end



def image obj
 obj.image.url(:thumb).to_s
end

def labele obj
 obj.name
end

end
