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
			
	def start_time
		@start_time
	end
	
	def end_time
		@end_time
	end
	
	def duration
		@duration
	end
	
	def to_s
		@title
	end
	
	def run
		@start_time = DateTime.now
		@words_list = @generate_func.call
		@end_time = DateTime.now
		@duration = @end_time - @start_time
	end
end
