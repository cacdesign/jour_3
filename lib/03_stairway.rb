#METHODE POUR LE JEU STAIRWAY

def stairway

#On initialise la marche et le nombre de tours de départ
marche = 0
nb_tour = 0

puts ""
puts "NOUVELLE PARTIE"
puts ""

#On fait une boucle jusqu'à ce qu'on atteigne la dernière marche
	while marche < 10

#On lance le dé
		x = rand(1..6)
			
			puts "Bien joué ! Le dé indique : #{x}" 
			
#Si le dé > 4, il monte d'une marche
			if x > 4
				puts "tu montes d'une marche, tu es desormais sur la marche #{marche += 1}"
				puts ""

#Si le dé = 1 et qu'il n'est pas sur le seuil, il descend d'une marche
			elsif x == 1 && marche > 0
				puts "tu descends d'une marche, tu es desormais sur la marche #{marche -= 1}"
				puts ""

#Si le dé = 2 ou 3 ou 4 ou (1 et qu'il est sur le seuil), il ne bouge pas
			elsif (x == 2 || 3 || 4) || (x == 1 && marche == 0) 
				puts "Tu restes ici, tu es sur la marche #{marche}"
				puts ""
			end

#On incrémente le nombre de tour de 1
		nb_tour +=1

	end

#Une fois la 10ème marche atteinte, la partie se termine
puts ""
puts "You won ! Congratulations little Padawan avec un score de #{nb_tour}!"

#On retient le nombre de tours
return nb_tour

end


#METHODE POUR CALCULER LA MOYENNE D'UN JEU EN FONCTION D'UN NOMBRE DE PARTIES

def average_finish_time(game, nb_parties)

#On initialise la somme des nombres de tours
somme = 0

#On teste si le nombre de parties > 100, si non on n'accpete pas
	if nb_parties < 100 then puts "Il faut un nombre > 100 !"

#Si oui, on lance nb_parties (en l'occurence 150) fois le jeu (en l'occurence Stairways)
	else
			nb_parties.times do game
			somme += stairway
			end

#On affiche la moyenne du nombre de parties
		puts "**************************************************************************"
		puts "Le score moyen de vos #{nb_parties} parties est de #{somme/nb_parties} !"
		puts "**************************************************************************"

	end

end


#ON LANCE NOTRE FONCTION STATISTIQUES 150 FOIS SUR LE JEU STAIRWAYS
average_finish_time(stairway, 150)