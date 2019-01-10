#METHODE SUR LA DEMIE PYRAMIDE

def half_pyramid

#On salut notre visiteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "

#On demande le nombre d'étages
	steps = gets.chomp.to_i

#On affiche la pyramide
	puts "Voici la pyramide :"
	steps.times do |i|
	puts " " * (steps - (i+1)) + "#" * (i+1)
end
end


#METHODE SUR LA PYRAMIDE

def full_pyramid

#On salut notre visiteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "

#On demande le nombre d'étages
	steps = gets.chomp.to_i

#On affiche la pyramide
	puts "Voici la pyramide :"
	steps.times do |i|
	puts " " * (steps - ( i + 1 )) + "#" * ( 2 * i + 1) + " " * (steps - ( i + 1 ))
end
end


#METHODE SUR LE LOSANGE

def wtf_pyramid

#On salut notre visiteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "

#On demande le nombre d'étages
	steps = gets.chomp.to_i

#On teste si le nombre est pair
	if steps % 2 != 0

#S'il est impair, on affiche la pyramide 
		puts "Voici la pyramide :"
			steps.times do |i|

#Partie haute du losange
				if i < steps / 2 
				puts " " * (steps - ( i + 1 )) + "#" * ( 2 * i + 1) + " " * (steps - ( i + 1 ))

#Partie basse du losange
				else 
				puts " " * i + "#" * (2 *steps - (2 *i + 1)) + " " * i
				end
			end

#S'il est pair, on envoie l'utilisateur bouler
	else 
		puts "NON NON! Tu dois saisir un nombre impair, donc tu dégages et tu relances le programme !"
	end
end

wtf_pyramid
