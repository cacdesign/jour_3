#METHODE POUR LE JEU STAIRWAY

def stairway

#On initialise la step et le nombre de laps de départ
step = 0
nb_lap = 0

puts ""
puts "NOUVELLE PARTIE"
puts ""

#On fait une boucle jusqu'à ce qu'on atteigne la dernière step
	while step < 10

#On lance le dé
		x = rand(1..6)
			
			puts "Bien joué ! Le dé indique : #{x}" 
			
#Si le dé > 4, il monte d'une step
			if x > 4
				puts "tu montes d'une step, tu es desormais sur la step #{step += 1}"
				puts ""

#Si le dé = 1 et qu'il n'est pas sur le seuil, il descend d'une step
			elsif x == 1 && step > 0
				puts "tu descends d'une step, tu es desormais sur la step #{step -= 1}"
				puts ""

#Si le dé = 2 ou 3 ou 4 ou (1 et qu'il est sur le seuil), il ne bouge pas
			elsif (x == 2 || 3 || 4) || (x == 1 && step == 0) 
				puts "Tu restes ici, tu es sur la step #{step}"
				puts ""
			end

#On incrémente le nombre de lap de 1
		nb_lap +=1

	end

#Une fois la 10ème step atteinte, la partie se termine
puts ""
puts "You won ! Congratulations little Padawan avec un score de #{nb_lap}!"

#On retient le nombre de laps
return nb_lap

end


#METHODE POUR CALCULER LA MOYENNE D'UN JEU EN FONCTION D'UN NOMBRE DE PARTIES

def average_finish_time(game, nb_game)

#On initialise la somme des nombres de laps
somme = 0

#On teste si le nombre de parties > 100, si non on n'accpete pas
	if nb_game < 100 then puts "Il faut un nombre > 100 !"

#Si oui, on lance nb_parties (en l'occurence 150) fois le jeu (en l'occurence Stairways)
	else
			nb_game.times do game
			somme += stairway
			end

#On affiche la moyenne du nombre de parties
		puts "**************************************************************************"
		puts "Le score moyen de vos #{nb_game} parties est de #{somme/nb_game} !"
		puts "**************************************************************************"

	end

end


#ON LANCE NOTRE FONCTION STATISTIQUES 150 FOIS SUR LE JEU STAIRWAYS
average_finish_time(stairway, 150)
