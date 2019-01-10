def def_password 

puts "Bonjour petit Mouss, pourrais-tu stp définir un mot de passe :) ?"
@password = gets.chomp

end 



def ask_password

puts "Maintenant, on va le vérifier, peux-tu confirmer ton mot de passe stp ?"
@password2 = gets.chomp

	if @password2 == @password 
		puts "Mot de passe confirmé"	
		else puts "Mot de passe erroné"
	end	

end

def_password
ask_password


