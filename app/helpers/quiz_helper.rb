module QuizHelper
def pick_image_obj_random
  Profile.all.sample
end

def pick_image_obj
 Profile.pluck(:name) 
 
end


def random_profile(name)
  profiles = []
  users = Profile.find(:all)
  users = users - image.user
  random_no = users [users.length]
  profiles << users[random_no]
  profiles << users[random_no + 1]
  profiles << users[random_no + 2]
  profiles << image.user
  profiles.sort(rand(profiles.length))
end

def image obj
 obj.image.url(:thumb).to_s
end

def labele obj
 obj.name
end

end
