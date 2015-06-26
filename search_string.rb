class Search_in_string
	def self.search
		print "What's your first name?"
        first_name = STDIN.gets
        puts (first_name.include? "bag")
        		
	end

end
