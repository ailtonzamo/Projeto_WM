Given(/^Informar o cep valido$/) do
  @response=HTTParty.get("http://correiosapi.apphb.com/cep/13040089")
end


When(/^Digitar um cep válido$/) do
 @response=HTTParty.get("http://correiosapi.apphb.com/cep/13040089")

end

When(/^O sistema retonar a solicitação$/) do
  # puts @response_id.body
  puts @response.message
   puts @response.body
    puts @response.code
end

Then(/^Verificar se o cep é válido$/) do
	
	 case  @response.code
		when 200
			puts"Cep é válido"
	   when 404
			puts"Cep é inválido"
	   end
end



Given(/^Informar o cep invalido$/) do
   @response=HTTParty.get("http://correiosapi.apphb.com/cep/04853011")
	puts"os dados do endereço "+@response.size.to_s
end
When(/^Verificar o retorno da consulta$/) do
   puts @response.message
   puts @response.body
    puts @response.code
end


Then(/^Verificar se o cep é invalido$/) do
   case  @response.code
		when 200
			puts"Cep é válido"
	   when 404
			puts"Cep é inválido"
	   end
end















