#!/usr/bin/env elixir

defmodule Klause do
  def is_even(num) when num === 1 do
    false
  end

  def is_even(num) when num === 2 do
    true
  end

  def is_odd(num) when num === 1 do
    true
  end

  def is_odd(num) when num === 2 do
    false
  end
end

IO.puts "[ info ] odd? 1, 2"
IO.puts Klause.is_odd 1
IO.puts Klause.is_odd 2

IO.puts "[ info ] even? 1, 2"
IO.puts Klause.is_even 1
IO.puts Klause.is_even 2
