def inicio
  puts "/****************/\n"
  puts "/ Jogo da Forca */\n"
  puts "/****************/\n"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo para você, #{nome}"
  nome
end

def desenha_forca erros
  cabeca = "   "
  bracos = "   "
  pernas = "   "
  corpo = " "

  if erros >= 1
    cabeca = "(_)"
  end
  if erros >= 2
    bracos = " | "
    corpo = " |"
  end
  if erros >= 3
    bracos = "\\|/"
  end
  if erros >= 4
    pernas = "/ \\"
  end

  puts "  _________      \n"
  puts " |/        |     \n"
  puts " |        #{cabeca}   \n"
  puts " |        #{bracos}   \n"
  puts " |        #{corpo}   \n"
  puts " |        #{pernas}  \n"
  puts " |                 \n"
  puts " |                 \n"
  puts " |                 \n"
  puts "_|___"
end

def avisa_escolhendo_palavra
  puts "Escolhendo a palavra secreta"
end

def avisa_palavra_escolhida palavra_secreta
  puts "Palavra secreta com #{palavra_secreta.size} caracteres escolhida... boa sorte!"
  palavra_secreta
end

def pede_um_chute
  puts "Digite uma letra ou a palavra certa"
  chute = gets.strip.downcase
  puts "Será que acertou? Você chutou #{chute}"
  chute
end

def cabecalho_de_tentativa chutes, erros, mascara
  puts "\n\n\n\n"
  desenha_forca erros
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora: #{chutes}"
end

def nao_quer_jogar?
  puts "Você deseja jogar novamente? (S/N)"
  quer_jogar = gets.strip
  nao_quer = quer_jogar.upcase == "N"
end

def avisa_chute_efetuado chute
  puts "#{chute} já foi chutado!"
end

def avisa_letra_nao_encontrada chute
  puts "Letra #{chute} não encontrada"
end

def avisa_letra_encontrada total_encontrado
  puts "Letra encontrada #{total_encontrado} vezes"
end

def avisa_acertou_palavra
  puts "Parabéns! Acertou!"
end

def avisa_errou_palavra
  puts "Palavra errada!"
end

def avisa_pontos pontos_ate_agora
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_pontos_totais pontos_totais
  puts "Você possui #{pontos_totais} pontos"
end

def avisa_campeao_atual dados
  puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos. "
end