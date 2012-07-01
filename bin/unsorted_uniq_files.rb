#!/usr/local/bin/ruby -w
# Copyright (C) 2012 Kenichi Kamiya

ARGV.each do |pathname|
  
  lines = File.readlines(pathname)
  uniq_lines = lines.uniq

  open "#{pathname}.uniq", 'w' do |f|
    f.puts uniq_lines
  end

  open "#{pathname}.dup", 'w' do |f|
    f.puts (lines - uniq_lines)
  end
  
end
