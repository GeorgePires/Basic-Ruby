notas = %w( 5 6 8)
alunos = %w(André Sophia Laura)

notas << 7.5
alunos << 'Paulo'

puts "#{alunos[0]} tirou nota #{notas[0]}"
puts "#{alunos[1]} tirou nota #{notas[1]}"
puts "#{alunos[2]} tirou nota #{notas[2]}"
puts "#{alunos[3]} tirou nota #{notas[3]}"

puts "Essa turma possi #{alunos.length} participantes"