# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "## POPULANDO O BANCO... ##\n"

# BusinessEstablishment

business_establishments = [
  {
    cnpj: '75315333027309',
    company_name: 'ATACADAO S.A.',
    trade_name: 'ATACADAO S.A.',
    phone: '(11) 29678461',
    street: 'AV DOUTOR DURVAL DE GOES MONTEIRO',
    number: '6775',
    neighborhood: 'PETROPOLIS',
    zip_code: '57062280',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.59674145,
    longitude: -35.7524047758447
  },
  {
    cnpj: '21789819000150',
    company_name: 'BIG SUPERMERCADO EIRELI',
    trade_name: 'BIG SUPERMERCADO',
    phone: '(82) 32233567',
    street: 'Rua JOAO DE OLIVEIRA MELO',
    number: '182',
    neighborhood: 'CIDADE UNIVERSITARIA',
    zip_code: '57072060',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.540984,
    longitude: -35.786635
  },
  {
    cnpj: '08618647000193',
    company_name: 'SUPERMERCADOS CESTA DE ALIMENTOS LTDA',
    trade_name: 'CESTA DE ALIMENTOS',
    phone: nil,
    street: 'AV MACEIO',
    number: '798',
    neighborhood: 'TAB DOS MARTINS',
    zip_code: '57061110',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.5855581,
    longitude: -35.7680095
  },
  {
    cnpj: '10840716000827',
    company_name: 'BARROS COMERCIO LTDA',
    trade_name: 'SUPERMERCADO SAO DOMINGOS',
    phone: '(82) 999970753',
    street: 'AV AV EM PROJETO ,DESMEMBRAMENTO LOTE 08 A3',
    number: 'S/N',
    neighborhood: 'CENTRO',
    zip_code: '57120000',
    city_ibge_code: nil,
    city: 'SATUBA',
    state: 'AL',
    latitude: -9.5716038,
    longitude: -35.8249956
  },
  {
    cnpj: '34333209000350',
    company_name: 'SUPER-AZUL COMERCIO VAREJISTA E ATACADISTA DE ALIMENTOS - EIRELI',
    trade_name: 'SUPERMERCADO AZULAO',
    phone: '(82) 11111111',
    street: 'Rua BENEDITO CALACA LOUREIRO',
    number: '114 A',
    neighborhood: 'CIDADE UNIVERSITARIA',
    zip_code: '57073510',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.544181,
    longitude: -35.755639
  },
  {
    cnpj: '39346861009894',
    company_name: 'CENCOSUD BRASIL COMERCIAL S.A.',
    trade_name: 'G BARBOSA',
    phone: '(79) 32165211',
    street: 'AV MACEIO',
    number: 'S/N',
    neighborhood: 'TABULEIRO',
    zip_code: '57061110',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.580944299999999,
    longitude: -35.7699013
  },
  {
    cnpj: '41185455001501',
    company_name: 'UNI COMPRA SUPERMERCADOS LTDA',
    trade_name: 'UNI COMPRA',
    phone: nil,
    street: 'Rua DURVAL GUIMARAES',
    number: 'SN',
    neighborhood: 'PONTA VERDE',
    zip_code: '57035060',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.661121000000001,
    longitude: -35.7022994
  },
  {
    cnpj: '13004510017235',
    company_name: 'BOMPRECO SUPERMERCADOS DO NORDESTE LTDA',
    trade_name: nil,
    phone: '(81) 32246024',
    street: 'AV PROF. SANDOVAL ARROXELAS',
    number: '425',
    neighborhood: 'PONTA VERDE',
    zip_code: '57035230',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6592443,
    longitude: -35.7025463
  },
  {
    cnpj: '75315333009831',
    company_name: 'ATACADAO S.A.',
    trade_name: 'ATACADAO',
    phone: nil,
    street: 'AV DOUTOR DURVAL DE GOES MONTEIRO',
    number: '12650',
    neighborhood: 'TABULEIRO DO MARTINS',
    zip_code: '57081285',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.5697151,
    longitude: -35.7750271
  },
  {
    cnpj: '41185455000610',
    company_name: 'UNI COMPRA SUPERMERCADOS LTDA',
    trade_name: 'UNI COMPRA',
    phone: nil,
    street: 'AV TOMAS ESPINDOLA',
    number: '472',
    neighborhood: 'FAROL',
    zip_code: '57051000',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6549186,
    longitude: -35.7327541
  },
  {
    cnpj: '30753042000164',
    company_name: 'JSR COMERCIO DE ALIMENTOS LTDA',
    trade_name: 'HAVANNA',
    phone: '(82) 96003715',
    street: 'AV COMENDADOR GUSTAVO PAIVA',
    number: '2990',
    neighborhood: 'MANGABEIRAS',
    zip_code: '57037901',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6375949,
    longitude: -35.7036772
  },
  {
    cnpj: '12303616000463',
    company_name: 'S. VIEIRA DA SILVA EIRELI',
    trade_name: 'CASA VIEIRA',
    phone: '(82) 21234382',
    street: 'AV FERNANDES LIMA',
    number: '2723',
    neighborhood: 'FAROL',
    zip_code: '57050000',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6266644,
    longitude: -35.738505
  }
]

count = 0

business_establishments.each do |establishment|
  result = BusinessEstablishment.find_by(cnpj: establishment[:cnpj])
  if result.nil?
    BusinessEstablishment.create!(establishment)
    count += 1
  end
end

puts "#{count} Estabelecimentos criados com sucesso!\n"

# Product

products = [
  {
    code: nil,
    getin_code: '7894900010398',
    cfop_code: nil,
    ncm_code: '22021000',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'REF.COCA COLA MINI'
  },
  {
    code: nil,
    getin_code: '7896336006686',
    cfop_code: nil,
    ncm_code: '17049090',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'D.PACOCA S.HELENA'
  },
  {
    code: nil,
    getin_code: '7896045523412',
    cfop_code: nil,
    ncm_code: '22030000',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'Cerveja Heineken La'
  },
  {
    code: nil,
    getin_code: '7896481130229',
    cfop_code: nil,
    ncm_code: '11041900',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'Cuscuz Coringa 500g'
  },
  {
    code: nil,
    getin_code: '7896481192036',
    cfop_code: nil,
    ncm_code: '19011090',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'MING CORINGA CHOCOLATE 200G'
  },
  {
    code: nil,
    getin_code: '7891000062661',
    cfop_code: nil,
    ncm_code: '19011010',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'LEIT NESTLE NINHO 1+ LT 800G'
  },
  {
    code: nil,
    getin_code: '7898552308681',
    cfop_code: nil,
    ncm_code: '96190000',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'FRALDA ZEUK M C/64 UN'
  },
  {
    code: nil,
    getin_code: '7896224800877',
    cfop_code: nil,
    ncm_code: '21011110',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'CAFE S CLARA SCHET UN'
  },
  {
    code: nil,
    getin_code: '7896038306053',
    cfop_code: nil,
    ncm_code: '10063011',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'ARR PBO URBANO 1KG'
  },
  {
    code: nil,
    getin_code: '7896102501605',
    cfop_code: nil,
    ncm_code: '20055100',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'FEIJAO QUERO CARIOCA PRONTO TP 340G'
  },
  {
    code: nil,
    getin_code: '7891008045154',
    cfop_code: nil,
    ncm_code: '18062000',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'COBER.CHOC.GAROTO'
  },
  {
    code: nil,
    getin_code: '7891000120606',
    cfop_code: nil,
    ncm_code: '19019090',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'NUTREN NESTLE SENIOR CAFE COM LEITE 370G'
  },
  {
    code: nil,
    getin_code: '7791875005360',
    cfop_code: nil,
    ncm_code: '19019020',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'POTE DOCE DE LEITE 800g'
  },
  {
    code: nil,
    getin_code: '7890130401173',
    cfop_code: nil,
    ncm_code: '18069000',
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'CHOC LINDT 235G LINDOR AO LEITE - 17.67'
  }
]

count = 0

products.each do |product|
  result = Product.find_by(getin_code: product[:getin_code])
  if result.nil?
    Product.create!(product)
    count += 1
  end
end

puts "#{count} Produtos criados com sucesso!\n"

# ProductsByBusinessEstablishment

products_by_establishment = [
  {
    getin_code: '7894900010398',
    cnpj: '75315333027309',
    unit_value_last_sale: 2.19,
    value_last_sale: 2.19,
    minimum_value_sold: 2.19,
    maximum_value_sold: 2.19,
    last_sale_issue_date: '2022-03-27T13:41:12.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7896336006686',
    cnpj: '75315333027309',
    unit_value_last_sale: 25.9,
    value_last_sale: 25.9,
    minimum_value_sold: 25.9,
    maximum_value_sold: 25.9,
    last_sale_issue_date: '2022-03-25T12:43:42.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7896045523412',
    cnpj: '08618647000193',
    unit_value_last_sale: 4.39,
    value_last_sale: 4.39,
    minimum_value_sold: 4.39,
    maximum_value_sold: 4.39,
    last_sale_issue_date: '2022-03-27T13:34:20.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7896481130229',
    cnpj: '08618647000193',
    unit_value_last_sale: 1.85,
    value_last_sale: 1.85,
    minimum_value_sold: 1.85,
    maximum_value_sold: 1.85,
    last_sale_issue_date: '2022-03-27T13:33:53.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7896481192036',
    cnpj: '10840716000827',
    unit_value_last_sale: 1.99,
    value_last_sale: 1.99,
    minimum_value_sold: 1.99,
    maximum_value_sold: 1.99,
    last_sale_issue_date: '2022-03-26T12:16:00.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7891000062661',
    cnpj: '10840716000827',
    unit_value_last_sale: 36.49,
    value_last_sale: 36.49,
    minimum_value_sold: 36.49,
    maximum_value_sold: 36.49,
    last_sale_issue_date: '2022-03-25T21:02:00.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7891000062661',
    cnpj: '34333209000350',
    unit_value_last_sale: 38.64,
    value_last_sale: 38.64,
    minimum_value_sold: 38.64,
    maximum_value_sold: 38.64,
    last_sale_issue_date: '2022-03-25T20:32:38.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7898552308681',
    cnpj: '39346861009894',
    unit_value_last_sale: 46.99,
    value_last_sale: 46.99,
    minimum_value_sold: 46.99,
    maximum_value_sold: 46.99,
    last_sale_issue_date: '2022-03-27T13:33:10.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7896224800877',
    cnpj: '39346861009894',
    unit_value_last_sale: 4.95,
    value_last_sale: 4.95,
    minimum_value_sold: 4.95,
    maximum_value_sold: 4.95,
    last_sale_issue_date: '2022-03-26T22:14:38.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7896038306053',
    cnpj: '13004510017235',
    unit_value_last_sale: 4.29,
    value_last_sale: 4.29,
    minimum_value_sold: 4.29,
    maximum_value_sold: 4.29,
    last_sale_issue_date: '2022-03-27T13:50:42.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7891008045154',
    cnpj: '75315333009831',
    unit_value_last_sale: 64.9,
    value_last_sale: 64.9,
    minimum_value_sold: 64.9,
    maximum_value_sold: 64.9,
    last_sale_issue_date: '2022-04-15T15:41:13.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7891000120606',
    cnpj: '41185455000610',
    unit_value_last_sale: 67.28,
    value_last_sale: 67.28,
    minimum_value_sold: 67.28,
    maximum_value_sold: 67.28,
    last_sale_issue_date: '2022-04-13T15:26:25.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7791875005360',
    cnpj: '30753042000164',
    unit_value_last_sale: 69,
    value_last_sale: 69,
    minimum_value_sold: 69,
    maximum_value_sold: 69,
    last_sale_issue_date: '2022-04-15T22:57:42.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7890130401173',
    cnpj: '12303616000463',
    unit_value_last_sale: 79.99,
    value_last_sale: 79.99,
    minimum_value_sold: 79.99,
    maximum_value_sold: 79.99,
    last_sale_issue_date: '2022-04-14T13:48:15.000+0000',
    last_sale_issue_date_description: ''
  }
]

count = 0

products_by_establishment.each do |product|
  result = ProductsByBusinessEstablishment.find_by(getin_code: product[:getin_code], cnpj: product[:cnpj])
  if result.nil?
    ProductsByBusinessEstablishment.create!(product)
    count += 1
  end
end

puts "#{count} Produtos por estabelecimento criados com sucesso!\n"
