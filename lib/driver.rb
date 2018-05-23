#! /usr/bin/env ruby
require_relative 'game'

game = Game.new
game.start

puts "Playing Rock, Paper, Scissors!"
puts "Rock vs Scissors:"
game.start
puts game.play(:rock, :scissors)
puts "Scissors vs Rock:"
game.start
puts game.play(:scissors, :rock)
puts "Rock vs Paper:"
game.start
puts game.play(:rock, :paper)
puts "Paper vs Rock:"
game.start
puts game.play(:paper, :rock)
puts "Scissors vs Paper:"
game.start
puts game.play(:scissors, :paper)
puts "Paper vs Scissors:"
game.start
puts game.play(:paper, :scissors)
puts "Tie games:"
game.start
puts game.play(:rock, :rock)
puts game.play(:paper, :paper)
puts game.play(:scissors, :scissors)
