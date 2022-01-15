#!/usr/bin/ruby

require 'rainbow'
require 'yaml'

print "¡Hola! ¿Cómo te llamas? "
username = Rainbow(gets.capitalize.chop).blue.bright

points = { ok: 0, fail: 0}
max = 10

puts "===================================================="
puts "Comienza el juego"
puts "Tienes que responder correctamente a #{max} retos."
puts "¡Mucha suerte!"
puts "===================================================="

words = YAML.load_file('aleman.yaml')
words.shuffle!
time_start = Time.now

(1..max).each do |i|
  w0 = words[i][:de].downcase
  w1 = words[i][:es].downcase
  val = nil
  if rand()<=0.5
    print "Reto ->  "
    print "#{words[i][:info]}\n         " if not words[i][:info].nil?
    print "¿Cómo se dice #{Rainbow(w0).yellow.bright} en español? "
    val = w1
  else
    print "Reto ->  "
    print "#{words[i][:info]}\n         " if not words[i][:info].nil?
    print "¿Cómo se dice #{Rainbow(w1).yellow.bright} en alemán? "
    val = w0
  end
  res = gets.downcase.strip
  if res == val
    points[:ok] += 1
    puts Rainbow("        ¡Muy bien!").green
  else
    points[:fail] += 1
    puts Rainbow("        #{username}, el valor correcto es ").red + Rainbow(val).red.bright
  end
end

time_interval = (Time.now - time_start).to_i

puts "===================================================="
puts "Has acertado #{points[:ok]}, y"
puts "has fallado  #{points[:fail]}."
puts "#{username}, tu puntuación final es #{Rainbow((100*points[:ok]/max).to_i).yellow.bright}%."
puts "Tiempo #{Rainbow(time_interval).yellow.bright}"
puts "===================================================="
