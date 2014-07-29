insert_into = []

Dir.glob('app/assets/images/**/*.jpg').each do |file|
	day = file.split('/').last.split('_').first[3..-1]
	location = file.split('/').last.split('_')[1]
	description = file.split('/').last.split('_')[2]
	date = file.split('/').last.split('_')[3].to_s[0..-5]
	uri = file

	if day.length == 1	
		day = "0"+day
	end

	case location
	when "ravenswood"
		location.capitalize!
	when "airplane1", "airplane2", "airplane3"
		location = "Airplane"
	when "drivetosonoma"
		location = "Drive to Sonoma"
	when "goldengate"
		location = "Golden Gate Bridge"
	when "home"
		location = "Chateau Layton"
	when "magdaluna"
		location = "Magdaluna Cafe"
	when "coit"
		location = "Coit Tower"
	when "driving"
		location = "Driving around Cali"
	when "ferry"
		location = "Sausalito Ferry"
	when "fisherswharf"
		location = "Fisherman''s Wharf"
	when "sausalito"
		location.capitalize!
	when "roche"
		location = "Roche Tasting Room"
	when "sunflower", "sunflowercafe"
		location = "Sunflower Cafe"
	when "westwood"
		location.capitalize!
	when "chatsj"
		location = "Chateau St. Jean"
	when "ledson"
		location.capitalize!
	when "park"
		location = "Annadel State Park"
	when "chappellet"
		location.capitalize!
	when "josphelps"
		location = "Joseph Phelps"
	when "picnic"
		location = "Lake Hennessey"
	when "sonomasq"
		location = "Sonoma Square"
	when "bartholomew"
		location = "Bartholomew Park"
	when "biking"
		location = "Biking around Cali"
	when "buenavista"
		location = "Buena Vista"
	when "grape"
		location = "The Red Grape"
	when "cline"
		location.capitalize!
	when "gloria"
		location = "Gloria Ferrer"
	when "jacuzzi"
		location.capitalize!
	when "lagunitas"
		location.capitalize!
	when "muir"
		location = "Muir Woods"
	when "tamalpais"
		location = "Mt. Tamalpais"
	when "carneros"
		location = "Domaine Carneros"
	when "jeanty"
		location = "Bistro Jeanty"
	when "silverado"
		location.capitalize!
	when "gunbun"
		location = "Gundlach Bundschu"
	end


	# puts day

	[day,location,description,date,uri].each do |item|
		if item.empty?
			puts "MISSING", day, location, description, date, uri
		end
	end

	insert_into << "('#{day}', '#{location}', '#{description}', '#{date}', '#{uri}'),"
end

puts insert_into
