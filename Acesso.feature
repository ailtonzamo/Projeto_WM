Feature: Acesso ao Sistema Heroukapp
com usuário e senha valida.

Scenario: Acesso ao sistema com usário validos
	Given Acessar ao Sistema Heroukapp 
	When Digitando o usuário
	And  Digitando a senha
	And  Clicar no botão Login
	Then Validar a mensagem “You logged out of the secure área!" na tela

	
