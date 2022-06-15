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
    latitude: -9.544128267122234,
    longitude: -35.81282494950382
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
  },
  {
    cnpj: '13004510032706',
    company_name: 'BOMPRECO SUPERMERCADOS DO NORDESTE LTDA',
    trade_name: 'TODO DIA',
    phone: nil,
    street: 'Rua CLETO CAMPELO',
    number: nil,
    neighborhood: 'JACINTINHO',
    zip_code: '57041000',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6380304,
    longitude: -35.7177797
  },
  {
    cnpj: '41185455001692',
    company_name: 'UNI COMPRA SUPERMERCADOS LTDA',
    trade_name: nil,
    phone: nil,
    street: 'AV COMENDADOR GUSTAVO PAIVA',
    number: nil,
    neighborhood: 'CRUZ DAS ALMAS',
    zip_code: '57038000',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6276766,
    longitude: -35.6992105
  },
  {
    cnpj: '12207619000150',
    company_name: 'RENATO CAVALCANTE LINS - ME',
    trade_name: nil,
    phone: nil,
    street: 'Rua DONA MARIA JOSE CAVALCANTE',
    number: nil,
    neighborhood: 'CHA DE BEBEDOURO',
    zip_code: '57018780',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.612596,
    longitude: -35.757464
  },
  {
    cnpj: '08618647000355',
    company_name: 'SUPERMERCADOS CESTA DE ALIMENTOS LTDA',
    trade_name: 'CESTA DE ALIMENTOS',
    phone: nil,
    street: 'Rua CLETO CAMPELO',
    number: nil,
    neighborhood: 'JACINTINHO',
    zip_code: '57041000',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6432331,
    longitude: -35.7190686
  },
  {
    cnpj: '22506147000190',
    company_name: 'M & M COMÉRCIO DE ALIMENTOS LTDA - - EPP',
    trade_name: 'MEGAMARX SUPERMERCADO E PANIFICACAO',
    phone: nil,
    street: 'Rua CICERO TORRES',
    number: nil,
    neighborhood: 'LEVADA',
    zip_code: '57017140',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6588,
    longitude: -35.74771
  },
  {
    cnpj: '23419932000179',
    company_name: 'MERCADO SANTA LUCIA EIRELI',
    trade_name: nil,
    phone: nil,
    street: 'Rua DO TRIUNFO',
    number: nil,
    neighborhood: 'JACINTINHO',
    zip_code: '57040180',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6510149,
    longitude: -35.7269524
  },
  {
    cnpj: '39346861008308',
    company_name: 'CENCOSUD BRASIL COMERCIAL S.A.',
    trade_name: 'G. BARBOSA',
    phone: nil,
    street: 'AV GUSTAVO PAIVA',
    number: nil,
    neighborhood: 'CRUZ DAS ALMAS',
    zip_code: '57038000',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.6311235,
    longitude: -35.7016483
  },
  {
    cnpj: '17083095000157',
    company_name: 'PANETUTTI PANIFICACAO LTDA',
    trade_name: 'PANETUTTI',
    phone: nil,
    street: 'Rua PAULINA MARIA MENDONCA',
    number: nil,
    neighborhood: 'JATIUCA',
    zip_code: '57035557',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.644518,
    longitude: -35.704607
  },
  {
    cnpj: '13004510039638',
    company_name: 'BOMPRECO SUPERMERCADOS DO NORDESTE LTDA',
    trade_name: 'TODO DIA',
    phone: nil,
    street: 'Rua JOAO DE OLIVEIRA MELO',
    number: nil,
    neighborhood: 'CIDADE UNIVERSITARIA',
    zip_code: '57072060',
    city_ibge_code: nil,
    city: 'MACEIO',
    state: 'AL',
    latitude: -9.5411357,
    longitude: -35.7864802
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
    getin_code: '7896481130229', # Cuscuz Coringa 500g
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
  },
  {
    code: nil,
    getin_code: '7896005030356',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'BISC PILAR CREAM CRACKER PREMIUM 350G'
  },
  {
    code: nil,
    getin_code: '7894904015108',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'FILE DE PEITO BAND. FRANGO BOM TODO 1KG'
  },
  {
    code: nil,
    getin_code: '7896013105886',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'DT LQ DIL BRILUX AZU'
  },
  {
    code: nil,
    getin_code: '7891350034639',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'DESOD MONANGE 90G UN'
  },
  {
    code: nil,
    getin_code: '7896744000498',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'Polpa Shups 100g Mara'
  },
  {
    code: nil,
    getin_code: '7896065200072',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'ACUCAR CORURIPE CRISTAL 1KG'
  },
  {
    code: nil,
    getin_code: '7896224813082',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'CAFE SANTA CLARA CLASSICO 250g'
  },
  {
    code: nil,
    getin_code: '7891527062991',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'PEIXE FILE DE TILAPIA COPACOL 800G'
  },
  {
    code: nil,
    getin_code: '7896481130328',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'FUBA CORINGA FERRO 500G'
  },
  {
    code: nil,
    getin_code: '7893000340107',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'MORT SADIA 1KG'
  },
  {
    code: nil,
    getin_code: '7896013106951',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'CR.DENTAL EVEN JUA E HORTELA 70G'
  },
  {
    code: nil,
    getin_code: '7893218003603',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'VODKA SMIRNOFF ICE LN 275ML'
  },
  {
    code: nil,
    getin_code: '7891107101621',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'OLEO SOJ SOY 900ml UN'
  },
  {
    code: nil,
    getin_code: '7891091061659',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'SALG PIPPOS VITAM SAO BRAZ QUEIJO 75G'
  },
  {
    code: nil,
    getin_code: '7898090130096',
    cfop_code: nil,
    ncm_code: nil,
    anp_code: nil,
    comercial_unit_code: nil,
    description: 'AGUA SANIT TROIA 1LT'
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
    getin_code: '7894900010398', # COCA COLA MINI LATA
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 2.29,
    value_last_sale: 2.29,
    minimum_value_sold: 2.29,
    maximum_value_sold: 2.29,
    last_sale_issue_date: '2022-06-13T19:46:53.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 22 hora'
  },
  {
    getin_code: '7896224813082', # CAF AL TR CLARA 250G
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 9.39,
    value_last_sale: 9.39,
    minimum_value_sold: 9.39,
    maximum_value_sold: 9.39,
    last_sale_issue_date: '2022-06-15T14:32:52.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 57 minutos'
  },
  {
    getin_code: '7896005030356', # BISC C CRAKER PREMIU
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 3.69,
    value_last_sale: 3.69,
    minimum_value_sold: 3.69,
    maximum_value_sold: 3.69,
    last_sale_issue_date: '2022-06-14T20:28:49.000+0000',
    last_sale_issue_date_description: 'Há 22 horas e 4 minutos'
  },
  {
    getin_code: '7893000340107', # MORT MN SADIA 1KG 1K
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 13.5,
    value_last_sale: 13.5,
    minimum_value_sold: 13.5,
    maximum_value_sold: 13.5,
    last_sale_issue_date: '2022-06-13T14:05:57.000+0000',
    last_sale_issue_date_description: 'Há 2 dias e 4 horas'
  },
  {
    getin_code: '7896744000498', # POLP SHUPS MARAC SHU
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 2.89,
    value_last_sale: 2.89,
    minimum_value_sold: 2.89,
    maximum_value_sold: 2.89,
    last_sale_issue_date: '2022-06-15T14:33:58.000+0000',
    last_sale_issue_date_description: 'Há 4 horas'
  },
  {
    getin_code: '7891350034639', #DEO AERO MONANGE DES
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 11.99,
    value_last_sale: 11.99,
    minimum_value_sold: 11.99,
    maximum_value_sold: 11.99,
    last_sale_issue_date: '2022-06-15T16:13:44.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 21 minutos'
  },
  {
    getin_code: '7891107101621', # OLEO SOJA SOYA 900ML
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 10.99,
    value_last_sale: 10.99,
    minimum_value_sold: 10.99,
    maximum_value_sold: 10.99,
    last_sale_issue_date: '2022-06-15T17:44:52.000+0000',
    last_sale_issue_date_description: 'Há 52 minutos'
  },
  {
    getin_code: '7896013105886', # DT LQ DIL BRILUX AZU
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 29.99,
    value_last_sale: 29.99,
    minimum_value_sold: 29.99,
    maximum_value_sold: 29.99,
    last_sale_issue_date: '2022-06-15T16:13:44.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 24 minutos'
  },
  {
    getin_code: '7898090130096', # AGUA SANITARIA TROIA
    cnpj: '13004510039638', # TODO DIA
    unit_value_last_sale: 1.89,
    value_last_sale: 1.89,
    minimum_value_sold: 1.89,
    maximum_value_sold: 1.89,
    last_sale_issue_date: '2022-06-15T16:28:28.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 10 minutos'
  },
  {
    getin_code: '7894900010398', # REF.COCA COLA MINI
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 2.49,
    value_last_sale: 2.49,
    minimum_value_sold: 2.49,
    maximum_value_sold: 2.49,
    last_sale_issue_date: '2022-06-15T13:40:56.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 1 minutos'
  },
  {
    getin_code: '7896045523412', # Cerveja Heineken La
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 4.79,
    value_last_sale: 4.79,
    minimum_value_sold: 4.79,
    maximum_value_sold: 4.79,
    last_sale_issue_date: '2022-06-14T10:55:33.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 6 horas'
  },
  {
    getin_code: '7896038306053', # ARR PBO URBANO 1KG
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 3.99,
    value_last_sale: 3.99,
    minimum_value_sold: 3.99,
    maximum_value_sold: 3.99,
    last_sale_issue_date: '2022-06-15T14:16:06.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 19 minutos'
  },
  {
    getin_code: '7896224813082', # CAFE S CLARA SCHET UN
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 8.19,
    value_last_sale: 8.19,
    minimum_value_sold: 8.19,
    maximum_value_sold: 8.19,
    last_sale_issue_date: '2022-06-15T14:57:21.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 38 minutos'
  },
  {
    getin_code: '7896481130328', # FUBA CORINGA
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 1.79,
    value_last_sale: 1.79,
    minimum_value_sold: 1.79,
    maximum_value_sold: 1.79,
    last_sale_issue_date: '2022-06-15T14:52:09.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 45 minutos'
  },
  {
    getin_code: '7896005030356', # BISC.PILAR
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 5.99,
    value_last_sale: 5.99,
    minimum_value_sold: 5.99,
    maximum_value_sold: 5.99,
    last_sale_issue_date: '2022-06-15T14:55:29.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 43 minutos'
  },
  {
    getin_code: '7891091061659', # SALG.PIPPOS
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 3.59,
    value_last_sale: 3.59,
    minimum_value_sold: 3.59,
    maximum_value_sold: 3.59,
    last_sale_issue_date: '2022-06-15T00:49:29.000+0000',
    last_sale_issue_date_description: 'Há 16 horas e 50 minutos'
  },
  {
    getin_code: '7893000340107', # MORT.SADILAR FAMILIA
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 8.99,
    value_last_sale: 8.99,
    minimum_value_sold: 8.99,
    maximum_value_sold: 8.99,
    last_sale_issue_date: '2022-06-15T14:26:09.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 14 minutos'
  },
  {
    getin_code: '7891350034639', # DES.MONANGE AERO FRT
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 7.19,
    value_last_sale: 7.19,
    minimum_value_sold: 7.19,
    maximum_value_sold: 7.19,
    last_sale_issue_date: '2022-06-15T14:55:19.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 46 minutos'
  },
  {
    getin_code: '7893218003603', # BEB.ALC MISTA
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 6.49,
    value_last_sale: 6.49,
    minimum_value_sold: 6.49,
    maximum_value_sold: 6.49,
    last_sale_issue_date: '2022-06-15T14:55:19.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 46 minutos'
  },
  {
    getin_code: '7896013106951', # CR.DENTAL EVEN
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 1.68,
    value_last_sale: 1.68,
    minimum_value_sold: 1.68,
    maximum_value_sold: 1.68,
    last_sale_issue_date: '2022-06-15T14:38:43.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 5 minutos'
  },
  {
    getin_code: '7894904015108', # FILE PEITO FGO SEARA
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 22.9,
    value_last_sale: 22.9,
    minimum_value_sold: 22.9,
    maximum_value_sold: 22.9,
    last_sale_issue_date: '2022-06-15T14:17:51.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 27 minutos'
  },
  {
    getin_code: '7896065200072', # ACUC.CRIST.CORURIPE
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 3.95,
    value_last_sale: 3.95,
    minimum_value_sold: 3.95,
    maximum_value_sold: 3.95,
    last_sale_issue_date: '2022-06-15T14:57:21.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 49 minutos'
  },
  {
    getin_code: '7891107101621', # OLEO SOJA SOYA
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 10.19,
    value_last_sale: 10.19,
    minimum_value_sold: 10.19,
    maximum_value_sold: 10.19,
    last_sale_issue_date: '2022-06-15T14:57:21.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 50 minutos'
  },
  {
    getin_code: '7896013105886', # LAV.ROUPA LIQ.BRILUX
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 27.9,
    value_last_sale: 27.9,
    minimum_value_sold: 27.9,
    maximum_value_sold: 27.9,
    last_sale_issue_date: '2022-06-15T00:00:10.000+0000',
    last_sale_issue_date_description: 'Há 17 horas e 48 minutos'
  },
  {
    getin_code: '7898090130096', # AGUA SANITARIA TROIA
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 1.79,
    value_last_sale: 1.79,
    minimum_value_sold: 1.79,
    maximum_value_sold: 1.79,
    last_sale_issue_date: '2022-06-15T14:55:19.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 54 minutos'
  },
  {
    getin_code: '7891527062991', # File Tilapia Copacol
    cnpj: '75315333009831', # ATACADÃO
    unit_value_last_sale: 48.99,
    value_last_sale: 48.99,
    minimum_value_sold: 48.99,
    maximum_value_sold: 48.99,
    last_sale_issue_date: '2022-06-14T12:45:12.000+0000',
    last_sale_issue_date_description: ''
  },
  {
    getin_code: '7894900010398', # REF.COCA COLA MINI
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 2.49,
    value_last_sale: 2.49,
    minimum_value_sold: 2.49,
    maximum_value_sold: 2.49,
    last_sale_issue_date: '2022-06-15T13:14:37.000+0000',
    last_sale_issue_date_description: 'Há 4 horas e 36 minutos'
  },
  {
    getin_code: '7896045523412', # Cerveja Heineken La
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 4.59,
    value_last_sale: 4.59,
    minimum_value_sold: 4.59,
    maximum_value_sold: 4.59,
    last_sale_issue_date: '2022-06-15T13:19:27.000+0000',
    last_sale_issue_date_description: 'Há 4 horas e 32 minutos'
  },
  {
    getin_code: '7896038306053', # ARR PBO URBANO 1KG
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 4.65,
    value_last_sale: 4.65,
    minimum_value_sold: 4.65,
    maximum_value_sold: 4.65,
    last_sale_issue_date: '2022-06-15T12:25:32.000+0000',
    last_sale_issue_date_description: 'Há 5 horas e 27 minutos'
  },
  {
    getin_code: '7896224813082', # Cafe Santa Clara 250
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 8.49,
    value_last_sale: 8.49,
    minimum_value_sold: 8.49,
    maximum_value_sold: 8.49,
    last_sale_issue_date: '2022-06-15T14:54:53.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 58 minutos'
  },
  {
    getin_code: '7891000062661', # LEIT NESTLE NINHO 1+ LT 800G
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 35.79,
    value_last_sale: 35.79,
    minimum_value_sold: 35.79,
    maximum_value_sold: 35.79,
    last_sale_issue_date: '2022-06-15T14:07:08.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 47 minutos'
  },
  {
    getin_code: '7891527062991', # File Tilapia Copacol
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 47.99,
    value_last_sale: 47.99,
    minimum_value_sold: 47.99,
    maximum_value_sold: 47.99,
    last_sale_issue_date: '2022-06-15T12:45:12.000+0000',
    last_sale_issue_date_description: 'Há 5 horas e 10 minutos'
  },
  {
    getin_code: '7896005030356', # Bisc Pilar c Cr 350g
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 4.38,
    value_last_sale: 4.38,
    minimum_value_sold: 4.38,
    maximum_value_sold: 4.38,
    last_sale_issue_date: '2022-06-15T14:03:31.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 53 minutos'
  },
  {
    getin_code: '7893000340107', # Mort Sadilar Peq 1kg
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 13.79,
    value_last_sale: 13.79,
    minimum_value_sold: 13.79,
    maximum_value_sold: 13.79,
    last_sale_issue_date: '2022-06-15T12:23:45.000+0000',
    last_sale_issue_date_description: 'Há 5 horas e 34 minutos'
  },
  {
    getin_code: '7896744000498', # Polpa Shups Maracuja
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 2.6,
    value_last_sale: 2.6,
    minimum_value_sold: 2.6,
    maximum_value_sold: 2.6,
    last_sale_issue_date: '2022-06-15T13:09:51.000+0000',
    last_sale_issue_date_description: 'Há 4 horas e 49 minutos'
  },
  {
    getin_code: '7893218003603', # Vodka Smirnoff Ice 2
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 7.65,
    value_last_sale: 7.65,
    minimum_value_sold: 7.65,
    maximum_value_sold: 7.65,
    last_sale_issue_date: '2022-06-15T13:15:44.000+0000',
    last_sale_issue_date_description: 'Há 4 horas e 44 minutos'
  },
  {
    getin_code: '7896013106951', # Creme Dt Even 70g Ju
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 1.89,
    value_last_sale: 1.89,
    minimum_value_sold: 1.89,
    maximum_value_sold: 1.89,
    last_sale_issue_date: '2022-06-15T12:25:32.000+0000',
    last_sale_issue_date_description: 'Há 5 horas e 35 minutos'
  },
  {
    getin_code: '7896065200072', # Acucar Coruripe 1kg
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 4.35,
    value_last_sale: 4.35,
    minimum_value_sold: 4.35,
    maximum_value_sold: 4.35,
    last_sale_issue_date: '2022-06-15T14:04:23.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 57 minutos'
  },
  {
    getin_code: '7891107101621', # Oleo Soja Soya 900ml
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 11.49,
    value_last_sale: 11.49,
    minimum_value_sold: 11.49,
    maximum_value_sold: 11.49,
    last_sale_issue_date: '2022-06-15T14:10:34.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 52 minutos'
  },
  {
    getin_code: '7896013105886', # Lava Rp Brilux Dil 1
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 32.48,
    value_last_sale: 32.48,
    minimum_value_sold: 32.48,
    maximum_value_sold: 32.48,
    last_sale_issue_date: '2022-06-14T20:02:10.000+000',
    last_sale_issue_date_description: 'Há 22 horas e 1 minutos'
  },
  {
    getin_code: '7898090130096', # Agua Sanitaria Troia
    cnpj: '08618647000193', # CESTA DE ALIMENTOS
    unit_value_last_sale: 1.84,
    value_last_sale: 1.84,
    minimum_value_sold: 1.84,
    maximum_value_sold: 1.84,
    last_sale_issue_date: '2022-06-15T14:54:53.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 10 minutos'
  },
  {
    getin_code: '7894900010398', # REF.COCA COLA MINI
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 2.49,
    value_last_sale: 2.49,
    minimum_value_sold: 2.49,
    maximum_value_sold: 2.49,
    last_sale_issue_date: '2022-06-13T19:00:00.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 23 horas'
  },
  {
    getin_code: '7896045523412', # Cerveja Heineken La
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 4.59,
    value_last_sale: 4.59,
    minimum_value_sold: 4.59,
    maximum_value_sold: 4.59,
    last_sale_issue_date: '2022-06-15T14:10:00.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 58 minutos'
  },
  {
    getin_code: '7896038306053', # ARR PBO URBANO 1KG
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 4.99,
    value_last_sale: 4.99,
    minimum_value_sold: 4.99,
    maximum_value_sold: 4.99,
    last_sale_issue_date: '2022-06-13T23:35:00.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 18 horas'
  },
  {
    getin_code: '7896224813082', # CAFE STA CLARA TRAD 250G
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 8.49,
    value_last_sale: 8.49,
    minimum_value_sold: 8.49,
    maximum_value_sold: 8.49,
    last_sale_issue_date: '2022-06-15T13:39:00.000+0000',
    last_sale_issue_date_description: 'Há 4 horas e 31 minutos'
  },
  {
    getin_code: '7896005030356', # BISC PILAR C.CRACKER PREMIUM 350G
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 5.55,
    value_last_sale: 5.55,
    minimum_value_sold: 5.55,
    maximum_value_sold: 5.55,
    last_sale_issue_date: '2022-06-15T14:43:00.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 28 minutos'
  },
  {
    getin_code: '7896744000498', # POLPA SHUPS MARACUJA 100G
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 2.39,
    value_last_sale: 2.39,
    minimum_value_sold: 2.39,
    maximum_value_sold: 2.39,
    last_sale_issue_date: '2022-06-13T22:17:00.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 19 horas'
  },
  {
    getin_code: '7893218003603', # VODK SMIRNOFF ICE LN 275ML
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 6.99,
    value_last_sale: 6.99,
    minimum_value_sold: 6.99,
    maximum_value_sold: 6.99,
    last_sale_issue_date: '2022-06-12T18:59:00.000+0000',
    last_sale_issue_date_description: 'Há 2 dias e 23 horas'
  },
  {
    getin_code: '7896013106951', # CREM D.EVEN JUA HORTELA 70G
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 1.99,
    value_last_sale: 1.99,
    minimum_value_sold: 1.99,
    maximum_value_sold: 1.99,
    last_sale_issue_date: '2022-06-14T13:14:00.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 5 horas'
  },
  {
    getin_code: '7891107101621', # OLEO SOYA DE SOJA PET 900ML
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 10.99,
    value_last_sale: 10.99,
    minimum_value_sold: 10.99,
    maximum_value_sold: 10.99,
    last_sale_issue_date: '2022-06-14T13:19:00.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 4 horas'
  },
  {
    getin_code: '7898090130096', # AGUA SANIT TROIA 1L
    cnpj: '10840716000827', # SUPERMERCADO SAO DOMINGOS
    unit_value_last_sale: 1.85,
    value_last_sale: 1.85,
    minimum_value_sold: 1.85,
    maximum_value_sold: 1.85,
    last_sale_issue_date: '2022-06-14T15:49:00.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 2 horas'
  },
  {
    getin_code: '7896224813082', # CAFE SANTA CLARA 250 G
    cnpj: '17083095000157', # PANETUTTI
    unit_value_last_sale: 10.99,
    value_last_sale: 10.99,
    minimum_value_sold: 10.99,
    maximum_value_sold: 10.99,
    last_sale_issue_date: '2022-06-13T19:57:54.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 14 horas'
  },
  {
    getin_code: '7896744000498', # POLPA DE MARACUJA
    cnpj: '17083095000157', # PANETUTTI
    unit_value_last_sale: 3,
    value_last_sale: 3,
    minimum_value_sold: 3,
    maximum_value_sold: 3,
    last_sale_issue_date: '2022-06-15T09:10:01.000+0000',
    last_sale_issue_date_description: 'Há 4 horas e 9 minutos'
  },
  {
    getin_code: '7898090130096', # AGUA SANITARIA TROIA 1L
    cnpj: '17083095000157', # PANETUTTI
    unit_value_last_sale: 2.99,
    value_last_sale: 2.99,
    minimum_value_sold: 2.99,
    maximum_value_sold: 2.99,
    last_sale_issue_date: '2022-06-14T22:32:51.000+0000',
    last_sale_issue_date_description: 'Há 14 horas e 49 minutos'
  },
  {
    getin_code: '7894900010398', # Coca Cola La 220ml
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 2.49,
    value_last_sale: 2.49,
    minimum_value_sold: 2.49,
    maximum_value_sold: 2.49,
    last_sale_issue_date: '2022-06-14T23:04:37.000+0000',
    last_sale_issue_date_description: 'Há 11 horas e 50 minutos'
  },
  {
    getin_code: '7896038306053', # Arroz Urbano Parbo T
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 4.65,
    value_last_sale: 4.65,
    minimum_value_sold: 4.65,
    maximum_value_sold: 4.65,
    last_sale_issue_date: '2022-06-15T00:32:09.000+0000',
    last_sale_issue_date_description: 'Há 10 horas e 24 minutos'
  },
  {
    getin_code: '7896224813082', # Cafe Santa Clara 250
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 8.49,
    value_last_sale: 8.49,
    minimum_value_sold: 8.49,
    maximum_value_sold: 8.49,
    last_sale_issue_date: '2022-06-15T00:25:15.000+0000',
    last_sale_issue_date_description: 'Há 10 horas e 33 minutos'
  },
  {
    getin_code: '7891000062661', # Leite Ninho Po 800g
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 35.79,
    value_last_sale: 35.79,
    minimum_value_sold: 35.79,
    maximum_value_sold: 35.79,
    last_sale_issue_date: '2022-06-14T21:28:04.000+0000',
    last_sale_issue_date_description: 'Há 13 horas e 33 minutos'
  },
  {
    getin_code: '7891527062991', # File Tilapia Copacol
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 46.99,
    value_last_sale: 46.99,
    minimum_value_sold: 46.99,
    maximum_value_sold: 46.99,
    last_sale_issue_date: '2022-06-14T17:08:51.000+0000',
    last_sale_issue_date_description: 'Há 20 horas e 24 minutos'
  },
  {
    getin_code: '7896481130328', # Fuba Coringa 500g
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 1.99,
    value_last_sale: 1.99,
    minimum_value_sold: 1.99,
    maximum_value_sold: 1.99,
    last_sale_issue_date: '2022-06-14T22:17:04.000+0000',
    last_sale_issue_date_description: 'Há 15 horas e 17 minutos'
  },
  {
    getin_code: '7896005030356', # Bisc Pilar c Cr 350g
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 4.32,
    value_last_sale: 4.32,
    minimum_value_sold: 4.32,
    maximum_value_sold: 4.32,
    last_sale_issue_date: '2022-06-15T01:59:35.000+0000',
    last_sale_issue_date_description: 'Há 11 horas e 40 minutos'
  },
  {
    getin_code: '7893000340107', # Mort Sadilar Peq 1kg
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 12.78,
    value_last_sale: 12.78,
    minimum_value_sold: 12.78,
    maximum_value_sold: 12.78,
    last_sale_issue_date: '2022-06-15T00:05:09.000+0000',
    last_sale_issue_date_description: 'Há 13 horas e 36 minutos'
  },
  {
    getin_code: '7896744000498', # Polpa Shups Maracuja
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 2.6,
    value_last_sale: 2.6,
    minimum_value_sold: 2.6,
    maximum_value_sold: 2.6,
    last_sale_issue_date: '2022-06-15T00:05:09.000+0000',
    last_sale_issue_date_description: 'Há 13 horas e 36 minutos'
  },
  {
    getin_code: '7893218003603', # Vodka Smirnoff Ice 2
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 7.65,
    value_last_sale: 7.65,
    minimum_value_sold: 7.65,
    maximum_value_sold: 7.65,
    last_sale_issue_date: '2022-06-15T00:05:09.000+0000',
    last_sale_issue_date_description: 'Há 13 horas e 36 minutos'
  },
  {
    getin_code: '7896013106951', # Creme Dt Even 70g Ju
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 1.89,
    value_last_sale: 1.89,
    minimum_value_sold: 1.89,
    maximum_value_sold: 1.89,
    last_sale_issue_date: '2022-06-15T00:05:09.000+0000',
    last_sale_issue_date_description: 'Há 13 horas e 36 minutos'
  },
  {
    getin_code: '7894904015108', # File Peito Seara Con
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 26.58,
    value_last_sale: 26.58,
    minimum_value_sold: 26.58,
    maximum_value_sold: 26.58,
    last_sale_issue_date: '2022-06-12T12:33:00.000+0000',
    last_sale_issue_date_description: 'Há 3 dias e 1 hora'
  },
  {
    getin_code: '7891107101621', # Oleo Soja Soya 900ml
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 11.49,
    value_last_sale: 11.49,
    minimum_value_sold: 11.49,
    maximum_value_sold: 11.49,
    last_sale_issue_date: '2022-06-15T11:10:23.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 37 minutos'
  },
  {
    getin_code: '7896013105886', # Lava Rp Brilux Dil 1
    cnpj: '08618647000355', # CESTA DE ALIMENTOS
    unit_value_last_sale: 32.48,
    value_last_sale: 32.48,
    minimum_value_sold: 32.48,
    maximum_value_sold: 32.48,
    last_sale_issue_date: '2022-06-15T00:54:10.000+0000',
    last_sale_issue_date_description: 'Há 12 horas e 54 minutos'
  },
  {
    getin_code: '7894900010398', # COCA COLA MINI LATA
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 2.19,
    value_last_sale: 2.19,
    minimum_value_sold: 2.19,
    maximum_value_sold: 2.19,
    last_sale_issue_date: '2022-06-14T23:48:26.000+0000',
    last_sale_issue_date_description: 'Há 11 horas e 16 minutos'
  },
  {
    getin_code: '7896038306053', # ARR PBO URBANO 1KG
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 3.99,
    value_last_sale: 3.99,
    minimum_value_sold: 3.99,
    maximum_value_sold: 3.99,
    last_sale_issue_date: '2022-06-14T15:20:05.000+0000',
    last_sale_issue_date_description: 'Há 19 horas e 47 minutos'
  },
  {
    getin_code: '7896224813082', # CAF AL TR CLARA 250G
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 9.19,
    value_last_sale: 9.19,
    minimum_value_sold: 9.19,
    maximum_value_sold: 9.19,
    last_sale_issue_date: '2022-06-15T11:42:51.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 8 minutos'
  },
  {
    getin_code: '7896005030356', # BISC C CRAKER PREMIU
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 3.69,
    value_last_sale: 3.69,
    minimum_value_sold: 3.69,
    maximum_value_sold: 3.69,
    last_sale_issue_date: '2022-06-15T11:46:56.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 5 minutos'
  },
  {
    getin_code: '7891091061659', # SALG QUEIJO PIPPOS 7
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 3.89,
    value_last_sale: 3.89,
    minimum_value_sold: 3.89,
    maximum_value_sold: 3.89,
    last_sale_issue_date: '2022-06-15T11:13:21.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 41 minutos'
  },
  {
    getin_code: '7893000340107', # MORT MN SADIA 1KG 1K
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 15.99,
    value_last_sale: 15.99,
    minimum_value_sold: 15.99,
    maximum_value_sold: 15.99,
    last_sale_issue_date: '2022-06-14T22:19:45.000+0000',
    last_sale_issue_date_description: 'Há 15 horas e 35 minutos'
  },
  {
    getin_code: '7896744000498', # POLP SHUPS MARAC SHU
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 2.99,
    value_last_sale: 2.99,
    minimum_value_sold: 2.99,
    maximum_value_sold: 2.99,
    last_sale_issue_date: '2022-06-15T01:20:10.000+0000',
    last_sale_issue_date_description: 'Há 12 horas e 36 minutos'
  },
  {
    getin_code: '7891350034639', # DEO AERO MONANGE DES
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 7.99,
    value_last_sale: 7.99,
    minimum_value_sold: 7.99,
    maximum_value_sold: 7.99,
    last_sale_issue_date: '2022-06-14T23:48:26.000+0000',
    last_sale_issue_date_description: 'Há 14 horas e 9 minutos'
  },
  {
    getin_code: '7893218003603', # VDK SMIRN ICE RED LN
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 7.79,
    value_last_sale: 7.79,
    minimum_value_sold: 7.79,
    maximum_value_sold: 7.79,
    last_sale_issue_date: '2022-06-13T22:02:28.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 15 horas'
  },
  {
    getin_code: '7894904015108', # FILE PT FGO SEARA BD
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 25.99,
    value_last_sale: 25.99,
    minimum_value_sold: 25.99,
    maximum_value_sold: 25.99,
    last_sale_issue_date: '2022-06-14T20:23:47.000+0000',
    last_sale_issue_date_description: 'Há 17 horas e 36 minutos'
  },
  {
    getin_code: '7896013105886', # DT LQ DIL BRILUX AZU
    cnpj: '13004510017235', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 29.99,
    value_last_sale: 29.99,
    minimum_value_sold: 29.99,
    maximum_value_sold: 29.99,
    last_sale_issue_date: '2022-06-14T13:29:26.000+0000',
    last_sale_issue_date_description: 'Há 1 dia'
  },
  {
    getin_code: '7896224813082', # CAF AL TR CLARA 250G
    cnpj: '13004510032706', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 9.39,
    value_last_sale: 9.39,
    minimum_value_sold: 9.39,
    maximum_value_sold: 9.39,
    last_sale_issue_date: '2022-06-15T10:09:28.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 53 minutos'
  },
  {
    getin_code: '7896005030356', # BISC C CRAKER PREMIU
    cnpj: '13004510032706', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 3.69,
    value_last_sale: 3.69,
    minimum_value_sold: 3.69,
    maximum_value_sold: 3.69,
    last_sale_issue_date: '2022-06-14T22:42:00.000+0000',
    last_sale_issue_date_description: 'Há 15 horas e 39 minutos'
  },
  {
    getin_code: '7893000340107', # MORT MN SADIA 1KG 1K
    cnpj: '13004510032706', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 13.5,
    value_last_sale: 13.5,
    minimum_value_sold: 13.5,
    maximum_value_sold: 13.5,
    last_sale_issue_date: '2022-06-14T22:24:07.000+0000',
    last_sale_issue_date_description: 'Há 15 horas e 58 minutos'
  },
  {
    getin_code: '7893218003603', # VDK SMIRN ICE RED LN
    cnpj: '13004510032706', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 6.29,
    value_last_sale: 6.29,
    minimum_value_sold: 6.29,
    maximum_value_sold: 6.29,
    last_sale_issue_date: '2022-06-13T13:55:39.000+0000',
    last_sale_issue_date_description: 'Há 2 dias'
  },
  {
    getin_code: '7891107101621', # OLEO SOJA SOYA 900ML
    cnpj: '13004510032706', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 10.99,
    value_last_sale: 10.99,
    minimum_value_sold: 10.99,
    maximum_value_sold: 10.99,
    last_sale_issue_date: '2022-06-15T11:04:02.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 21 minutos'
  },
  {
    getin_code: '7896013105886', # DT LQ DIL BRILUX AZU
    cnpj: '13004510032706', # BOMPRECO SUPERMERCADOS DO NORDESTE LTDA
    unit_value_last_sale: 29.99,
    value_last_sale: 29.99,
    minimum_value_sold: 29.99,
    maximum_value_sold: 29.99,
    last_sale_issue_date: '2022-06-13T11:11:25.000+0000',
    last_sale_issue_date_description: 'Há 2 dias e 3 horas'
  },
  {
    getin_code: '7896045523412', # CERVEJA HEINEKEN LT 350ML
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 4.69,
    value_last_sale: 4.69,
    minimum_value_sold: 4.69,
    maximum_value_sold: 4.69,
    last_sale_issue_date: '2022-06-14T20:51:03.000+0000',
    last_sale_issue_date_description: 'Há 14 horas e 24 minutos'
  },
  {
    getin_code: '7896038306053', # ARROZ PARB URBANO TP1 1KG
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 4.49,
    value_last_sale: 4.49,
    minimum_value_sold: 4.49,
    maximum_value_sold: 4.49,
    last_sale_issue_date: '2022-06-13T20:46:02.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 14 horas'
  },
  {
    getin_code: '7896224813082', # CAFE ALMOF SANTA CLARA 250G
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 8.69,
    value_last_sale: 8.69,
    minimum_value_sold: 8.69,
    maximum_value_sold: 8.69,
    last_sale_issue_date: '2022-06-14T23:20:05.000+0000',
    last_sale_issue_date_description: 'Há 15 horas e 8 minutos'
  },
  {
    getin_code: '7896481130328', # FUBA CORINGA 500G
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 2.39,
    value_last_sale: 2.39,
    minimum_value_sold: 2.39,
    maximum_value_sold: 2.39,
    last_sale_issue_date: '2022-06-15T10:53:17.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 36 minutos'
  },
  {
    getin_code: '7896005030356', # BISC CR.CRACK.PILAR PREMIUM 350G
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 5.15,
    value_last_sale: 5.15,
    minimum_value_sold: 5.15,
    maximum_value_sold: 5.15,
    last_sale_issue_date: '2022-06-15T11:48:00.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 43 minutos'
  },
  {
    getin_code: '7891091061659', # SALG. PIPPOS QUEIJO 75G
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 3.69,
    value_last_sale: 3.69,
    minimum_value_sold: 3.69,
    maximum_value_sold: 3.69,
    last_sale_issue_date: '2022-06-12T21:09:48.000+0000',
    last_sale_issue_date_description: 'Há 2 dias e 17 horas'
  },
  {
    getin_code: '7893000340107', # MORTADELA TRAD SADIA 1KG
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 15.99,
    value_last_sale: 15.99,
    minimum_value_sold: 15.99,
    maximum_value_sold: 15.99,
    last_sale_issue_date: '2022-06-13T22:51:59.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 15 horas'
  },
  {
    getin_code: '7896744000498', # POLPA DE FRUTA SHUPS MARACUJA 100G
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 2.79,
    value_last_sale: 2.79,
    minimum_value_sold: 2.79,
    maximum_value_sold: 2.79,
    last_sale_issue_date: '2022-06-14T23:16:08.000+0000',
    last_sale_issue_date_description: 'Há 15 horas e 17 minutos'
  },
  {
    getin_code: '7893218003603', # BEB.SMINORFF ICE ORIGINAL 275ML
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 7.19,
    value_last_sale: 7.19,
    minimum_value_sold: 7.19,
    maximum_value_sold: 7.19,
    last_sale_issue_date: '2022-06-12T21:09:41.000+0000',
    last_sale_issue_date_description: 'Há 2 dias e 17 horas'
  },
  {
    getin_code: '7891107101621', # OLEO DE SOJA SOYA PET 900ML
    cnpj: '22506147000190', # MEGAMARX SUPERMERCADO E PANIFICACAO
    unit_value_last_sale: 11.99,
    value_last_sale: 11.99,
    minimum_value_sold: 11.99,
    maximum_value_sold: 11.99,
    last_sale_issue_date: '2022-06-15T10:56:22.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 39 minutos'
  },
  {
    getin_code: '7894900010398', # REFR COCA COLA LATA 220ML
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 2.19,
    value_last_sale: 2.19,
    minimum_value_sold: 2.19,
    maximum_value_sold: 2.19,
    last_sale_issue_date: '2022-06-15T00:01:57.000+0000',
    last_sale_issue_date_description: 'Há 11 horas e 29 minutos'
  },
  {
    getin_code: '7896045523412', # CERVEJA HEINEKEN LATA 350ML
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 4.79,
    value_last_sale: 4.79,
    minimum_value_sold: 4.79,
    maximum_value_sold: 4.79,
    last_sale_issue_date: '2022-06-14T22:45:20.000+0000',
    last_sale_issue_date_description: 'Há 12 horas e 49 minutos'
  },
  {
    getin_code: '7896038306053', # ARROZ URBANO PARBOILIZADO 1KG
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 4.49,
    value_last_sale: 4.49,
    minimum_value_sold: 4.49,
    maximum_value_sold: 4.49,
    last_sale_issue_date: '2022-06-14T23:54:01.000+0000',
    last_sale_issue_date_description: 'Há 11 horas e 42 minutos'
  },
  {
    getin_code: '7896224813082', # CAFE SANTA CLARA CLASSICO ALMOFADA 250G
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 8.69,
    value_last_sale: 8.69,
    minimum_value_sold: 8.69,
    maximum_value_sold: 8.69,
    last_sale_issue_date: '2022-06-15T11:40:48.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 57 minutos'
  },
  {
    getin_code: '7891000062661', # COMPOSTO LACTEO NINHO FASES 1  LATA 800G
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 34.98,
    value_last_sale: 34.98,
    minimum_value_sold: 34.98,
    maximum_value_sold: 34.98,
    last_sale_issue_date: '2022-06-14T22:14:22.000+0000',
    last_sale_issue_date_description: 'Há 13 horas e 26 minutos'
  },
  {
    getin_code: '7896005030356', # BISC PILAR CREAM CRACKER PREMIUM 350G
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 4.99,
    value_last_sale: 4.99,
    minimum_value_sold: 4.99,
    maximum_value_sold: 4.99,
    last_sale_issue_date: '2022-06-15T11:10:37.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 28 minutos'
  },
  {
    getin_code: '7893000340107', # MORTADELA SADIA TUB 1KG
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 15.94,
    value_last_sale: 15.94,
    minimum_value_sold: 15.94,
    maximum_value_sold: 15.94,
    last_sale_issue_date: '2022-06-14T20:40:47.000+0000',
    last_sale_issue_date_description: 'Há 17 horas e 59 minutos'
  },
  {
    getin_code: '7896744000498', # POLPA SHUPS MARACUJA 100G
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 2.47,
    value_last_sale: 2.47,
    minimum_value_sold: 2.47,
    maximum_value_sold: 2.47,
    last_sale_issue_date: '2022-06-15T11:17:41.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 23 minutos'
  },
  {
    getin_code: '7893218003603', # VODKA SMIRNOFF ICE ORIGINAL 275ML
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 7.69,
    value_last_sale: 7.69,
    minimum_value_sold: 7.69,
    maximum_value_sold: 7.69,
    last_sale_issue_date: '2022-06-15T00:21:34.000+0000',
    last_sale_issue_date_description: 'Há 14 horas e 20 minutos'
  },
  {
    getin_code: '7894904015108', # FILE PEITO FRANGO SEARA MET CG BDJ 1KG
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 28.99,
    value_last_sale: 28.99,
    minimum_value_sold: 28.99,
    maximum_value_sold: 28.99,
    last_sale_issue_date: '2022-06-13T21:09:53.000+0000',
    last_sale_issue_date_description: 'Há 1 dia e 17 horas'
  },
  {
    getin_code: '7896065200072', # ACUCAR CORURIPE CRISTAL ESP. 1KG
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 4.15,
    value_last_sale: 4.15,
    minimum_value_sold: 4.15,
    maximum_value_sold: 4.15,
    last_sale_issue_date: '2022-06-15T11:44:17.000+0000',
    last_sale_issue_date_description: 'Há 2 horas e 59 minutos'
  },
  {
    getin_code: '7891107101621', # OLEO SOYA SOJA PET 900ML
    cnpj: '41185455001501', # UNI COMPRA
    unit_value_last_sale: 11.69,
    value_last_sale: 11.69,
    minimum_value_sold: 11.69,
    maximum_value_sold: 11.69,
    last_sale_issue_date: '2022-06-15T11:23:48.000+0000',
    last_sale_issue_date_description: 'Há 3 horas e 21 minutos'
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
