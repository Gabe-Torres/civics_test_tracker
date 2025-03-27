require 'csv'

namespace :import do 
  desc "Import Q and A from CSV into question model"
  task civics_questions: :environment do
    file_path = Rails.root.join('lib', 'data', 'Civics_QandA.csv')

    CSV.foreach(file_path, headers: true) do |row|
      Question.create!(row.to_hash)
    end

    puts "Questions imported"
  end
end