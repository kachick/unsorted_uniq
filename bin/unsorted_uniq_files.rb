#!/usr/local/bin/ruby -w
# Copyright (C) 2012 Kenichi Kamiya

ARGV.each do |pathname|
  
  lines = File.readlines(pathname).each_with_index.map{|l, i|[i + 1, l]}
  uniq_lines = lines.uniq(&:last)

  open "#{pathname}.uniq", 'w' do |f|
    f.puts uniq_lines.map(&:last)
  end

  open "#{pathname}.dup", 'w' do |f|
    f.puts((lines - uniq_lines).map{|pair|pair.join(': ')})
  end
  
end
