#METHODE POUR DEMANDER SON PRENOM

	def ask_first_name
	puts "Quel est ton prénom ?"
	first_name = gets.chomp
	return first_name
	end

#METHODE POUR RENVOYER BONJOUR + PRENOM

	def say_hello(first_name)
		puts "Bonjour, " + first_name
	end	


say_hello(ask_first_name)

