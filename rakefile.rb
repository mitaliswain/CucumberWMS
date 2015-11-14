task :deploy do |t|
  puts 'freezing gems'
  sh"RUBYOPT='' bundle install --deployment"
end
