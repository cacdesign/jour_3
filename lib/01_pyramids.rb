#METHODE SUR LA DEMIE PYRAMIDE

def half_pyramid

#On salut notre visiteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "

#On demande le nombre d'étages
	etages = gets.chomp.to_i

#On affiche la pyramide
	puts "Voici la pyramide :"
	etages.times do |i|
	puts " " * (etages - (i+1)) + "#" * (i+1)
end
end


#METHODE SUR LA PYRAMIDE

def full_pyramid

#On salut notre visiteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "

#On demande le nombre d'étages
	etages = gets.chomp.to_i

#On affiche la pyramide
	puts "Voici la pyramide :"
	etages.times do |i|
	puts " " * (etages - ( i + 1 )) + "#" * ( 2 * i + 1) + " " * (etages - ( i + 1 ))
end
end


#METHODE SUR LE LOSANGE

def wtf_pyramid

#On salut notre visiteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "

#On demande le nombre d'étages
	etages = gets.chomp.to_i

#On teste si le nombre est pair
	if etages % 2 != 0

#S'il est impair, on affiche la pyramide 
		puts "Voici la pyramide :"
			etages.times do |i|

#Partie haute du losange
				if i < etages / 2 
				puts " " * (etages - ( i + 1 )) + "#" * ( 2 * i + 1) + " " * (etages - ( i + 1 ))

#Partie basse du losange
				else 
				puts " " * i + "#" * (2 *etages - (2 *i + 1)) + " " * i
				end
			end

#S'il est pair, on envoie l'utilisateur bouler
	else 
		puts "NON NON! Tu dois saisir un nombre impair, donc tu dégages et tu relances le programme !"
	end
end

wtf_pyramid