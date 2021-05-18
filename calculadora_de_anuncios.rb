def criar_anuncio
  system("clear")
  puts '
  --------------------------------------
        Criardor de Anúncios
  --------------------------------------
  '
  # recebendo dados do anucio
  print ' Informe o nome do cliente.......: '
  nome_do_cliente = gets.chomp.capitalize

  print ' Informe o nome da campanha......: '
  nome_do_anuncio = gets.chomp.capitalize

  print ' Data de inicio (ex. 29072021)...: '
  data_inicio = gets.chomp
  data_inicio = calendario(data_inicio)

  print ' Data de fim (ex. 29082021)......: '
  data_do_termino = gets.chomp
  data_do_termino = calendario(data_do_termino)

  print ' Informe o investimento diario...: '
  investimento_por_dia = gets.chomp.to_f

  puts "
  ----- Dados do Anúncio - #{nome_do_anuncio} -----
  Cliente             - #{nome_do_cliente}
  Campanha            - #{nome_do_anuncio}
  Data de inicio      - #{data_inicio}
  Data de termino     - #{data_do_termino}
  Investimento diario - R$ #{investimento_por_dia}
  --------------------------------------
  "
  print ' Voltar para o menu? [S/n]: '
  voltar = gets.chomp
  if voltar == 'n'
    exit 0
  else
    menu
  end
end

# Calcula anuncios por data de inicio, data de fim e valor aunicio
def calcular_anuncio
  system("clear")
  puts 'Calcular'
end


def calendario(data)
  dia = data[0..1].to_i
  mes = data[2..3].to_i
  ano = data[4..].to_i
  datas = "#{dia}/#{mes}/#{ano}"
  return datas
end

######### Menu principal ###########

def menu
  system("clear")
  puts '
######### Divulga Tudo ###########

  1 - Cadastrar Anúncios
  2 - Calculadora de Anúncios
  3 - Sair
  '
  print '.........: '
  entrada = gets.chomp.to_i
  puts "*" * 30

  if entrada == 1
    criar_anuncio
  elsif entrada == 2
    calcular_anuncio
  else
    exit 0
  end
end

menu

