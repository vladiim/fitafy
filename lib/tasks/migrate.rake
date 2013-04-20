desc 'migrate & set up tests'
task :'db:update' => ['db:migrate', 'db:test:prepare']