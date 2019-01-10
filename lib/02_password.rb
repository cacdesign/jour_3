def signup 

puts "Bonjour petit Mouss, pourrais-tu stp définir un mot de passe :) ?"
@password = gets.chomp

end 


def login

puts "Maintenant, on va le vérifier, peux-tu confirmer ton mot de passe stp ?"
@password2 = gets.chomp

	while @password2 != @password 
		puts "Mot de passe erroné, veuillez ressaisir svp"
		@password2 = gets.chomp
	end	

	puts "Mot de passe confirmé"

end


def welcome_screen

puts "Bienvenue dans la zone secrète, je vais te révéler tous les messages de Flo..."
puts "Réhausse ton slip et mets tes lunettes !"

puts "1er secret : Pour accentuer l'opportunité solutionnelle, chaque entité doit anticiper les cibles vente."
puts "2ème secret : Pour accentuer la mondialisation situationnelle, il faut rapidement chiffrer les référents qualité."
puts "3ème secret : Face à l'adaptabilité quantitative, mieux vaut optimiser les intervenants organisation."

puts "Fais en bon usage"

end


def perform
signup
login
welcome_screen
end

perform


