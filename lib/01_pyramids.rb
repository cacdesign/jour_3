def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "
	etages = gets.chomp.to_i
	puts "Voici la pyramide :"
	etages.times do |i|
	puts " " * (etages - (i+1)) + "#" * (i+1)
end
end

def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "
	etages = gets.chomp.to_i
	puts "Voici la pyramide :"
	etages.times do |i|
	puts " " * (etages - ( i + 1 )) + "#" * ( 2 * i + 1) + " " * (etages - ( i + 1 ))
end
end
	
def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'etages veux-tu ?"
	print "> "
	etages = gets.chomp.to_i
	if etages % 2 != 0
		puts "Voici la pyramide :"
			etages.times do |i|
				if i < etages / 2 
				puts " " * (etages - ( i + 1 )) + "#" * ( 2 * i + 1) + " " * (etages - ( i + 1 ))
				else 
				puts " " * i + "#" * (2 *etages - (2 *i + 1)) + " " * i
				end
			end
	else 
		puts "NON NON! Tu dois saisir un nombre impair!"
	end
end

wtf_pyramid