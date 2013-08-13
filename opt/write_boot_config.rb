# Write config/boot.rb for mysql2 gem compatibility

puts "Writing config/boot.rb for mysql2 compatibility (if present)"

bootfile = File.join(File.join(ENV['HOME'], 'config', 'boot.rb'))
File.open(bootfile, 'a') do |fh|
  fh.puts(
"
if `gem list`.lines.grep(/^mysql2 \(.*\)/) and ENV['DATABASE_URL']
  ENV['DATABASE_URL'] = ENV['DATABASE_URL'].sub(/mysql:/, 'mysql2:')
end
" )
end
