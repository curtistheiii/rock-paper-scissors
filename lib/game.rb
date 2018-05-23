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
    if (left == :rock && right == :scissors)
      @started = false
      "Rock beats scissors!"
    elsif (left == :scissors && right == :rock)
      @started = false
      "Rock beats scissors!"
    elsif (left == :paper && right == :rock)
      @started = false
      "Paper beats rock!"
    elsif (left == :rock && right == :paper)
      @started = false
      "Paper beats rock!"
    elsif (left == :paper && right == :scissors)
      @started = false
      "Scissors vs paper!"
    elsif (left == :scissors && right == :paper)
      @started = false
      "Scissors vs paper!"
    else
      :UNKNOWN
    end
  end

end
