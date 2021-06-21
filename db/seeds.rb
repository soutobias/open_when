# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Phrase.destroy_all

require 'csv'

filepath = File.read(Rails.root.join('lib', 'seeds', 'open_when.csv'))

tables = CSV.parse(filepath, headers: true, :col_sep => ";")

tables.each do |row|
  phr = Phrase.new(question: row['questions'], answer: row['answers'], sentence: row['sentences'], link: row['links'])
  p row['photos'].to_i
  files = Dir.glob(Rails.root.join('lib', 'seeds', row['photos']).to_s + '/*.jpg')
  files.each do |file|
    filepath = File.open(Rails.root.join('lib', 'seeds', row['photos'], file))
    phr.photos.attach(io: filepath, filename: "1.jpg", content_type: 'image/jpg')
  end
  phr.save!
end
