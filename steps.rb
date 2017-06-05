Given(/^Acessar ao Sistema Heroukapp$/) do
   visit "https://the-internet.herokuapp.com/login"
end

When(/^Digitando o usuário$/) do
  fill_in "username", with: "tomsmith"
end

When(/^Digitando a senha$/) do
  fill_in "password", with: "SuperSecretPassword!"
 end

When(/^Clicar no botão Login$/) do
   click_on "Login"
end

Then(/^Validar a mensagem “You logged out of the secure área!" na tela$/) do
 	expect(page).to have_selector(:id , "flash" , wait:60) 
	page.has_content?("You logged into a secure area!")
end