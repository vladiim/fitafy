Dir[File.dirname(__FILE__) + '/seed_files/exercises/*.rb'].each { |file| require file }

create_back
create_biceps
create_chest
create_core
create_forearms
create_legs
create_shoulders
create_triceps