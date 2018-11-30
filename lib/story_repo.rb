require 'json'

class StoryRepo

	def initialize
		file = file.read('data/nytimes.json')
		parsed = json.parse(file)
		results = parsed["results"]
		stories = []
		results.each do |result|
			stories << Story.new(result)
		end
	end


end