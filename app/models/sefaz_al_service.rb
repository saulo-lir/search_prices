# frozen_string_literal: true

class SefazAlService
  def search_products_in_establishments(getin_codes_indexed_by_cnpj)
    getin_codes_indexed_by_cnpj.map do |products|
      cnpj = products.first
      getin_codes = products.second
      result = []

      getin_codes.each do |getin_code|
        response = post(authorization_params[:url], body_parms(cnpj, getin_code), authorization_params[:headers])

        next if response.body.empty?

        result << JSON.parse(response.body)
      end

      next if result.empty?

      result
    end.compact
  end

  private

  def authorization_params
    {
      url: 'http://api.sefaz.al.gov.br/sfz_nfce_api/api/public/consultarPrecoProdutoEmEstabelecimento',
      headers: {
        'Content-Type' => 'application/json',
        'AppToken' => '982394dc00816a2c39240fd9ae291ec202b420fa'
      }
    }
  end

  def body_parms(cnpj, getin_code)
    {
      cnpj: cnpj,
      codigoBarras: getin_code,
      quantidadeDeDias: 3
    }.to_json
  end

  def post(url, body, header)
    HTTParty.post(
      url,
      body: body,
      headers: header
    )
  end
end
