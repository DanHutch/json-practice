require 'json'

class Story
	attr_reader :section,
							:subsection,
							:title,
							:abstract,
							:link,
							:published
							
	def initialize(story)
		@section = story["section"]
		@subsection = story["subsection"]
		@title = story["title"]
		@abstract = story["abstract"]
		@link = story["url"]
		@published = story["published_date"]
		@multimedia = story["multimedia"]
	end

	def photo
		find_normal_photo
	end

	private

	def find_normal_photo
		@multimedia.find(ifnone = "No Photo Available") do |entry|
		entry["url"] if entry["format"] == "normal"
		end
		
	end
end