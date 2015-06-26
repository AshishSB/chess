class Characters
		def initialize(behaviours)
		@position=behaviours.fetch(:assigning_position)
		@right=behaviours.fetch(:moving_right)
		@left=behaviours.fetch(:moving_left)
		@forward=behaviours.fetch(:moving_forward)
		@backward=behaviours.fetch(:moving_backward)
		@diagonalr=behaviours.fetch(:moving_diagonalr)
		@diagonall=behaviours.fetch(:moving_diagonall)
	end
	def perform_position
		@position.kmoves
	end
	def perform_right
		@right.rightmove
	end
	def perform_left
		@left.leftmove
	end
	def perform_forward
		@forward.forwardmove
	end
	def perform_backward
		@backward.backwardmove
	end
	def perform_diagonalr
		@diagonalr.diagonalrmove
	end
	def perform_diagonall
		@diagonall.diagonallmove
	end
end

class Position
	
	public def kmoves
		print "enter x value"
		xpos=STDIN.gets.chomp
		print "enter y value"
		ypos=STDIN.gets.chomp
		print "#{xpos}, #{ypos}\n"
	end
end

class Right_move < Position
	def rightmove
		puts "compute right moves"
		xpos +=1
	end
end

class Left_move < Position
	def leftmove
		puts "compute left move"
		xpos-=1		
	end
end

class Forward_move < Position
	def forwardmove
		puts "compute forward move"
		ypos=ypos+1
	end
end

class Backward_move < Position
	def backwardmove
		puts "compute backward move"
		ypos=ypos-1
	end
end

class Diagonal_move_right < Position
	def diagonalrmove
		puts "compute diagonal move"
		xpos=xpos+1
		ypos=ypos+1
	end
end

class Diagonal_move_left < Position
	def diagonallmove
		puts "compute diagonal move"
		xpos=xpos-1
		ypos=ypos-1
	end
end

king = Characters.new( assigning_position:Position.new,moving_right:Right_move.new, moving_left:Left_move.new,moving_forward:Forward_move.new,moving_backward:Backward_move.new,moving_diagonalr:Diagonal_move_right.new,moving_diagonall:Diagonal_move_left.new )
king.perform_position
king.perform_right
king.perform_left