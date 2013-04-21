require 'resque/tasks'

# task "resque:setup" => :environment

task "resque:setup" => :environment do
  Resque.before_fork = Proc.new { ActiveRecord::Base.establish_connection }

  if defined?(ActiveRecord::Base)
  	ActiveRecord::Base.establish_connection
  end
end