puts "Digite um número inicial:"
start = gets.chomp.to_i

puts "Digite um número final:"
final = gets.chomp.to_i

if final <= start
  puts "O número final deve ser maior que o número inicial."
  return
end

range = (start..final)
rand =  Random.rand(range)

msgs = {
    -1 => "Mais Alto.",
    0 => "Parabéns! Você acertou o número.",
    1 => "Mais Baixo."
}

while true
    puts " Qual é o número ?"
    number = gets.chomp.to_i

    unless range.include?(number)
        puts "O valor não está na faixa!"
        next
    end
    comp = number <=> rand
    puts msgs[comp]

    return if comp == 0
end