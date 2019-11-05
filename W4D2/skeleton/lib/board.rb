class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    self.place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      next if i == 6 || i == 13
      4.times do
        cup << :stone
      end
    end 
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" 
    end 
    if @cups[start_pos].empty?
    raise "Starting cup is empty"
    end 
  end

  def make_move(start_pos, current_player_name)

    self.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }

  end

  def winner
    player_1 = @cups[6].count
    player_2 = @cups[13].count
    if player_1 == player_2
      :draw
    elsif
      player_1 > player_2
      @name1 
    else 
      @name2
    end 
  end
end
