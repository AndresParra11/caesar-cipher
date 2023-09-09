# frozen_string_literal: true

def cifrado_cesar(string, factor)
  abecedario = ('a'..'z').to_a
  new_string = Array.new(string.length)
  string.split('').each do |letra|
    if letra == ' '
      new_string.push(' ')
    elsif !abecedario.include?(letra.downcase)
      new_string.push(letra)
    else
      index = abecedario.index(letra.downcase) - 26 + factor
      new_string.push(abecedario[index])
    end
  end
  p new_string.join
end

cifrado_cesar('What a string!', 5)
