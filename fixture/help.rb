#dir glob
Dir.glob("#{ARGV[0]}/*.rb") do |dir1|
end

#hash
hash = Hash.new

hash[key] = value

hash = hash.sort_by{|k, v| k} #.reverse

#write csv
require 'csv'

CSV.open("results.csv","w") do |csv|
	hash.each do |element|
		csv << element
	end
end

#correct name
def rightFormat(name)
	temp = name.split(/_/)
	if temp.length == 3
		firstName = temp.first
		lastName = temp[1]
		digit = temp.last.split(/\./).first
		if !(firstName =~ (/A-Za-z+/)) && !(lastName =~ (/A-Za-z/)) && !(digit =~ (/0-9+/))
			return true #correct
		end
	else
		return false #wrong
	end
end

#names match
def match(name1, name2)
	fullName1 = name1.split('_').first + name1.split('_')[1]
	fullName2 = name2.split('_').first + name2.split('_')[1]
	if (fullName1 == fullName2)
		return true #matches
	else
		return false #don't match
	end
end



