# Search Prices

API de consulta de preços em estabelecimentos comerciais de Alagoas.

## Requerimentos

Para consumir a API, basta usar um cliente REST. O mais recomendado é o software [Postman](https://www.postman.com/), que foi o utilizado ao longo do desenvolvimento deste projeto.

## Utilizando a API

### GET /v1/search_prices/establishments

Retorna os estabelecimentos comerciais mais próximos do usuário, dentro de um raio de 8km.

No Postman, inserir a url `http://45.33.92.165:3000/v1/search_prices/establishments` e disparar a requisição. Essa rota não precisa de parâmetros.

**Observação**: Devido a uma limitação do serviço gratuito de geocodifiação utilizado, só está sendo possível atualmente pegar a localização do centro de cada município. Em Maceió por exemplo, a localização selecionada é a da Rua do Sol, no centro (latitude: -9.6658, longitude: -35.7353).

### POST /v1/search_prices/products/prices

Retorna em quais estabelecimentos estão mais baratos os produtos pesquisados, na ordem em que eles devem ser visitados, com a descrição detalhada dos preços individuais e totais.

No Postman, inserir a url `http://45.33.92.165:3000/v1/search_prices/products/prices` e disparar a requisição. Essa rota utiliza os parâmetros informado abaixo.

#### Parâmetros

`cnpjs`: Lista de cnpjs dos estabelecimentos a serem consultados.

`getin_codes`: Lista de códigos de barras dos produtos a serem pesquisados, junto com a quantidade de cada um.

`current_location`: Latitude e longitude do usuário.

#### Exemplo

No Postman, alternar o formato do `Body` para `JSON`, e inserir os parâmetros:

```json
{
   "cnpjs":[
      "21789819000150",
      "75315333009831",
      "08618647000193",
      "10840716000827"
   ],
   "getin_codes":[
      {
         "quantity":4,
         "code":"7894900010398"
      },
      {
         "quantity":12,
         "code":"7896045523412"
      },
      {
         "quantity":3,
         "code":"7896102501605"
      },
      {
         "quantity":3,
         "code":"7896038306053"
      },
      {
         "quantity":2,
         "code":"7896224813082"
      },
      {
         "quantity":6,
         "code":"7891000062661"
      },
      {
         "quantity":2,
         "code":"7891527062991"
      },
      {
         "quantity":8,
         "code":"7896481130328"
      },
      {
         "quantity":6,
         "code":"7896005030356"
      },
      {
         "quantity":2,
         "code":"7891091061659"
      },
      {
         "quantity":1,
         "code":"7893000340107"
      },
      {
         "quantity":4,
         "code":"7896744000498"
      },
      {
         "quantity":2,
         "code":"7891350034639"
      },
      {
         "quantity":6,
         "code":"7893218003603"
      },
      {
         "quantity":4,
         "code":"7896013106951"
      },
      {
         "quantity":4,
         "code":"7894904015108"
      },
      {
         "quantity":3,
         "code":"7896065200072"
      },
      {
         "quantity":2,
         "code":"7891107101621"
      },
      {
         "quantity":1,
         "code":"7896013105886"
      },
      {
         "quantity":2,
         "code":"7898090130096"
      }
   ],
   "current_location":{
      "latitude":-9.549320146552429,
      "longitude":-35.80975881586224
   }
}
```

Disparar a requisição.

## Observações

### Estabelecimentos Comerciais

A pesquisa de preços em determinado estabelecimento só será possível se ele estiver cadastrado em nossa base de dados.

Atualmente existem 21 estabelecimentos cadastrados para teste. Abaixo listamos eles agrupados por bairro:

```json
{
  "PETROPOLIS": [
    {
      "cnpj": "75315333027309",
      "nome": "ATACADAO S.A."
    }
  ],
  "CIDADE UNIVERSITARIA": [
    {
      "cnpj": "21789819000150",
      "nome": "BIG SUPERMERCADO"
    },
    {
      "cnpj": "34333209000350",
      "nome": "SUPERMERCADO AZULAO"
    },
    {
      "cnpj": "13004510039638",
      "nome": "TODO DIA"
    }
  ],
  "SATUBA - CENTRO": [
    {
      "cnpj": "10840716000827",
      "nome": "SUPERMERCADO SAO DOMINGOS"
    }
  ],
  "PONTA VERDE": [
    {
      "cnpj": "41185455001501",
      "nome": "UNI COMPRA"
    },
    {
      "cnpj": "13004510017235",
      "nome": "BOMPRECO SUPERMERCADOS DO NORDESTE LTDA"
    }
  ],
  "TABULEIRO DO MARTINS": [
    {
      "cnpj": "75315333009831",
      "nome": "ATACADAO"
    },
    {
      "cnpj": "08618647000193",
      "nome": "CESTA DE ALIMENTOS"
    },
    {
      "cnpj": "39346861009894",
      "nome": "G BARBOSA"
    }
  ],
  "FAROL": [
    {
      "cnpj": "41185455000610",
      "nome": "UNI COMPRA"
    },
    {
      "cnpj": "12303616000463",
      "nome": "CASA VIEIRA"
    }
  ],
  "MANGABEIRAS": [
    {
      "cnpj": "30753042000164",
      "nome": "HAVANNA"
    }
  ],
  "JACINTINHO": [
    {
      "cnpj": "13004510032706",
      "nome": "TODO DIA"
    },
    {
      "cnpj": "08618647000355",
      "nome": "CESTA DE ALIMENTOS"
    },
    {
      "cnpj": "23419932000179",
      "nome": "MERCADO SANTA LUCIA EIRELI"
    }
  ],
  "CRUZ DAS ALMAS": [
    {
      "cnpj": "41185455001692",
      "nome": "UNI COMPRA SUPERMERCADOS LTDA"
    },
    {
      "cnpj": "39346861008308",
      "nome": "G. BARBOSA"
    }
  ],
  "CHA DE BEBEDOURO": [
    {
      "cnpj": "12207619000150",
      "nome": "RENATO CAVALCANTE LINS - ME"
    }
  ],
  "LEVADA": [
    {
      "cnpj": "22506147000190",
      "nome": "MEGAMARX SUPERMERCADO E PANIFICACAO"
    }
  ],
  "JATIUCA": [
    {
      "cnpj": "17083095000157",
      "nome": "PANETUTTI"
    }
  ]
}
```

Dessa forma, atualmente só será possível pesquisar preços com os cnpjs informados acima.

### Produtos

Qualquer produto que possua um código de barras aceito pela SEFAZ-AL poderá ser pesquisado.

Atualmente existem diversos produtos cadastrados em nossa base, e ele aumenta dinamicamente conforme novas pesquisas forem feitas.

Isso quer dizer que, caso um produto pesquisado não seja encontrado em nossa base, ele é automaticamente pesquisado diretamente na base da SEFAZ-AL, e caso seja encontrado, atualizado na nossa.

Abaixo segue alguns produtos que existem atualmente na nossa base, que você pode utilizar como exemplo:

```json
{
  "7894900010398": "REF.COCA COLA MINI",
  "7896045523412": "Cerveja Heineken La",
  "7896224813082": "CAFE SANTA CLARA CLASSICO 250g",
  "7896481130328": "FUBA CORINGA FERRO 500G",
  "7896038306053": "ARR PBO URBANO 1KG",
  "7891000062661": "LEIT NESTLE NINHO 1+ LT 800G",
  "7896065200072": "ACUCAR CORURIPE CRISTAL 1KG",
  "7891107101621": "OLEO SOJ SOY 900ml UN",
  "7896013105886": "DT LQ DIL BRILUX AZU",
  "7891350034639": "DESOD MONANGE 90G UN"
}
```