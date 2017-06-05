# Language: pt
Feature: Consultar o cep no sistema dos Correios atráves da ferramenta.

Scenario: Realizar a consulta de endereço pelo cep valido
Given Informar o cep valido
When  Verificar o retorno da consulta
Then  Verificar se o cep é válido



Scenario: Realizar a consulta de endereço pelo cep valido
Given Informar o cep invalido
When  Verificar o retorno da consulta
Then  Verificar se o cep é invalido