task default: %w[build]

desc 'Build the app and throw it into secret_sauce_api'
task :build do
  sh 'rm -rf build'
  sh 'middleman build'
end

