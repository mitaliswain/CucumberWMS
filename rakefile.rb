task :deploy do |t|
  Bundler.with_clean_env do
    sh "bundle install --deployment"
  end
end
