class Solution
	def initialize(title, desc, generate_func)
		@title = title
		@description = desc
		@generate_func = generate_func
		@words_list = Array.new
	end
	
	def title
		@title
	end
	
	def title=(s)
		@title = s
	end
	
	def description
		@description
	end
	
	def description=(s)
		@description = s
	end
	
	def words_list
		@words_list
	end
	
	def show
		@start_time = DateTime.now
		@word_list = run
	end 
		
	def to_s
		@title
	end
	
	def run
		@words_list = @generate_func.call
	end
end
