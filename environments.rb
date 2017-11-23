# configure :development do
# 	# set :database, 'sqlite:///dev.db'
# 	# set :show_exceptions, true
# 	# require 'dotenv/load'
# 	# Dotenv.load('.env.development')
# end

# configure :production do
# 	db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

# 	ActiveRecord::Base.establish_connection(
# 		:adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
# 		:host     => db.host,
# 		:username => db.user,
# 		:password => db.password,
# 		:database => db.path[1..-1],
# 		:encoding => 'utf8'
# 	)
# end