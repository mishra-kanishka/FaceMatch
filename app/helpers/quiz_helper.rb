module QuizHelper
	def pick_image_obj_random
        Profile.all.sample
    end

 	def pick_image_obj names
		user1=Array.new
		user1 << names.name
		users=Array.new
		users = Profile.pluck(:name)
		users2 = users - user1
			if users.length > 4
				random_number = rand(users2.length)

				options=Array.new
				options << users2[0]
				options << users2[1]
				options << users2[2]
				options << names.name
				@options=options
			else
  				options=users
			end
		options.sort!{rand()-0.5}
		return options 
	end



	def image obj
	obj.image.url(:thumb).to_s
	end

	def labele obj
 	obj.name
	end

end
