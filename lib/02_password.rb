#METHODE POUR DEFINIR UN MOT DE PASSE

def signup 

puts "Bonjour petit Mouss, pourrais-tu stp définir un mot de passe :) ?"
@password = gets.chomp

end 


#METHODE POUR VERIFIER LE MOT DE PASSE

def login

puts "Maintenant, on va le vérifier, peux-tu confirmer ton mot de passe stp ?"
@password2 = gets.chomp

#On vérifie que le second mot de passe correspond au premier saisi, sinon l'utilisateur recommence
	while @password2 != @password 
		puts "Mot de passe erroné, veuillez ressaisir svp"
		@password2 = gets.chomp
	end	

#Une fois le bon mot de passe saisi, on lui confirme
	puts "Mot de passe confirmé"

end


#METHODE AFFICHER UN CONTENU SECRET

def welcome_screen


puts ""
puts "**************************************************************************"
puts "Bienvenue dans la zone secrète, je vais te révéler tous les messages de Flo..."
puts "Réhausse ton slip et mets tes lunettes !"
puts "**************************************************************************"
puts ""
puts "**************************************************************************"
puts "1er secret : Pour accentuer l'opportunité solutionnelle, chaque entité doit anticiper les cibles vente."
puts "2ème secret : Pour accentuer la mondialisation situationnelle, il faut rapidement chiffrer les référents qualité."
puts "3ème secret : Face à l'adaptabilité quantitative, mieux vaut optimiser les intervenants organisation."
puts "**************************************************************************"
puts ""
puts "Fais en bon usage !"
puts ""


end


#METHODE POUR LANCER LE TOUT

def perform
signup
login
welcome_screen
end

perform


