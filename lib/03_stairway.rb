def stairway
	marche = 0 
x = rand(1..6)
	puts x 
	if x > 4
		marche += 1
		puts "tu montes d'une marche, tu es desormais sur la marche" + marche
		
	elsif x == 1
		marche -= 1
		puts "tu descends d'une marche, tu es desormais sur la marche" + marche
		
	elsif x == 2 || 3 || 4
		puts " Tu restes ici, sur l'escalier, tu es sur la marche" + marche

	end
end

stairway