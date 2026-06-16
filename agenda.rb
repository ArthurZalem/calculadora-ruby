puts "Bem-vindo à Agenda de Contatos!"
puts "As opções são: listar, guardar e sair."
puts "Se digitado outra coisa, será procurado o valor na agenda.\n\n"

agenda = {}

while true
  print "> "
  opt = gets.chomp

  case opt
  when /sair/i
    puts "Saindo ..."
    break
  when /listar/i
    agenda.each do |key, val|
      puts "#{key}: #{val}"
    end
    puts "---"
  when /guardar/i
    puts "Digite o nome do contato:"
    nome = gets.chomp.strip

    puts "Digite o número do contato:"
    number = gets.chomp.strip

    if nome.empty? || number.empty?
      puts "Nome e número não podem ser vazios!"
      next
    end

    agenda[nome] = number
    puts "Contato guardado com sucesso!"
  else
    resultado = agenda[opt]
    if resultado
      puts "#{opt}: #{resultado}"
    else
      puts "Contato '#{opt}' não encontrado."
    end
  end
end