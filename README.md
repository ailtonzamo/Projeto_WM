O objetivo desse projeto é utilização do cucumber, capybara/rspec para fim de desenvolvimento de teste automatizado.
O cucumber é uma linguagem que permite o entendimento de todos envolvimentos no desenvolvimento do sistema, melhorarando
a comunicção entre todos.

Instalando Ruby 64 Bits

a) Fazer download da versão 2.3.3 x64 http://rubyinstaller.org/downloads/

b) Na instalação selecionar as Install Td/Tk suporte, Add Ruby to you Path e
associate .rb and .rbw files with this Ruby Installation.

c)Verificar a Instalação atráves do comando: ruby -v.
Instalando devkit 64bits

a) http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe

b)Criar um pasta do Ruby com o nome devkit

c)extrair o devkit na pasta criada

d no cmd, no diretório C:\Ruby23-x64\devkit, digitar o camando ruby dk.rb init

e)no diretório C:\Ruby23-x64\devkit deve contem o config.yml 

f)dentro do arquivo, devera ter o seguinte conteúdo:"--- - C:/Ruby24-x64"

g)no cmd, digitar o seguinte comando: ruby dk.rb install


Definição do Cucumber e instalação

Para utilização das gems é necessário primeiramente instalar:

No cmd, digitar o seguinte comando:"gem install bundler"

o sistema exibe a seguinte mensagem:
		λ gem install bundler
		Successfully installed bundler-1.15.1
		Parsing documentation for bundler-1.15.1
		Done installing documentation for bundler after 5 seconds
		1 gem installed
No cmd, digitar o seguinte comando:"cucumber --init"
		   features
		   features/step_definitions
		   features/support
		   features/support/env.rb
O sistema gerou os diretórios e subdiretórios

No features: é onde definito o caso funcional do teste, utilizando a estrutura do cucumber, salvo como "nome.feature".
Exemplo:

		# Language: pt
		Feature: Consultar o cep no sistema dos Correios atráves da ferramenta.

		Scenario: Realizar uma consulta com o cep valido
		Given Realizar um solicitação do Sistema dos Correios 
		When  Digitar um cep válido
		And   O sistema retonar a solicitação
		Then  Verificar se o cep é válido 
no suport: São definidos os gems que os sistema irá utilizar, que é salvo como "env.rb"
		# frozen_string_literal: true
		require "capybara/cucumber"
		require "selenium-webdriver"
		require 'capybara/rspec'
		Capybara.default_driver = :selenium
		Capybara.default_max_wait_time = 60
		
No diretório step_definitions: São definidos os passos de execução com a ferramenta, salvo como "nome.rb"

exemplo:

		Given(/^Acessar ao Sistema Heroukapp$/) do
		   visit "https://the-internet.herokuapp.com/login"
		end

		When(/^Digitando o usuário$/) do
		  fill_in "username", with: ""
		end

		When(/^Digitando a senha$/) do
		  fill_in "password", with: ""
		 end

		When(/^Clicar no botão Login$/) do
		   click_on "Login"
		end

		Then(/^Validar a mensagem “You logged out of the secure área!" na tela$/) do
			expect(page).to have_selector(:id , "flash" , wait:60) 
			page.has_content?("You logged into a secure area!")
		end




