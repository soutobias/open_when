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

CSV.open(filepath, "r", { :col_sep => ";" }).each do |row|
  print(row)
end

# answer = ["Eu te amo"]
# questions = ["quiser!",
#   "estiver em dúvida sobre nós",
#   "quiser saber porquê eu te amo",
#   "sentir que ninguém se importa",
#   "você perde seu emprego",
#   "você se sentir sem coragem",
#   "você se sentir sozinho",
#   "você sentir falta de mim",
#   "você estiver chateada comigo",
#   "eu estiver chato",
#   "sentir saudade de casa",
#   "tivermos brigado",
#   "for o seu aniversário",
#   "você está tendo um ótimo dia",
#   "você está tendo um dia ruim",
#   "precisar se animar",
#   "as coisas estiverem difíceis",
#   "eu não estiver bem",
#   "estiver chorando",
#   "precisar de um abraço",
#   "estiver com raiva de mim",
#   "não conseguir dormir",
#   "estiver em um lugar novo e estranho",
#   "estiver preocupado",
#   "chove",
#   "estiver ensolarado",
#   "estiver doente",
#   "quiser relembrar",
#   "quiser socar alguém",
#   "você se sentir entediado",
#   "você estiver com medo",
#   "se sentir velho",
#   "precisar de inspiração",
#   "nos casarmos",
#   "tivermos o nosso primeiro filho",
#   "achar que não te amo",
#   "for dia dos namorados",
#   "Precisar de motivação",
#   "Receber uma promoção",
#   "Não aguenta mais",
#   "Quiser se lembrar da nossa música favorita",
#   "Estiver triste",
#   "Estiver feliz",
#   "precisar rir"]

# questions.each do |q|
#   Phrase.create(question: q, answer: answer[0])
# end
