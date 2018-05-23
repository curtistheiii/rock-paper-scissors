class Game

  attr_reader :started

  def start
    @started = true
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)

    roll = {:left => left, :right => right}
    if (roll.has_value?(:rock) && roll.has_value?(:scissors))
      @started = false
      "Rock beats scissors!"
    elsif (roll.has_value?(:rock) && roll.has_value?(:paper))
      @started = false
      "Paper beats rock!"
    elsif (roll.has_value?(:paper) && roll.has_value?(:scissors))
      @started = false
      "Scissors vs paper!"
    elsif (roll[])
      "Tie game. Try again!"
    else
      :UNKNOWN
    end
  end

end
