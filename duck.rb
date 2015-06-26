class Duck
	def initialize(behaviours)
		@fly_behaviour=behaviours.fetch(:fly_behaviour)
		@quack_behaviour=behaviours.fetch(:quack_behaviour)
	end
	def perform_fly
		@fly_behaviour.fly
	end
	def perform_quack
		@quack_behaviour.quack
	end
end

class Quackbehaviour
	def quack
	end
end                                            

class Quaking < Quackbehaviour
	def quack
		puts "quack quack"
	end
end

class Notquackin < Quackbehaviour
	def quack
		puts "Silence"
	end
end

class Squeeking < Quackbehaviour
	def quack
		puts "squeek squeek"
	end
end

class Flybehaviour
	def fly
	end
end

class Flying < Flybehaviour
	def fly
		puts "flyyyiiing"
	end
end

class NotFlying < Flybehaviour
	def fly
		puts "not flying"
	end
end

 donald_duck = Duck.new(fly_behaviour: NotFlying.new, quack_behaviour: Quaking.new)
 donald_duck.perform_fly
 donald_duck.perform_quack
=begin
king = Characters.new( assigning_position:Position.new(xposition,yposition),moving_right:Right_move.new, moving_left:Left_move.new,moving_forward:Forward_move.new,moving_backward:Backward_move.new,moving_diagonalr:Diagonal_move_right.new,moving_diagonall:Diagonal_move_left.new )
king.perform_position
king.perform_right
king.perform_left=end