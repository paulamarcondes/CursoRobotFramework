*** Settings ***
Documentation    Essa suite testa o site da Amazon.
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu Eletrônicos do site da Amazon.
    ...                E verifica a categoria Computadores e Informática.
    [Tags]             menus    categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto.
    [Tags]             busca_produtos    lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então um produto da linha "Xbox Series S" deve ser mostrado na página

# Caso de Teste 03 - Adicionar Produto no Carrinho
#     Dado que o usuário acessou a página inicial da Amazon.com.br
#     E o usuário digitou o nome do produto "Xbox Series S" no campo de pesquisa
#     Quando o usuário clica no botão de pesquisa
#     Então o resultado da pesquisa deve listar o produto "Xbox Series S"
#     E o usuário adiciona o produto "Xbox Series S" ao carrinho
#     Então o produto "Xbox Series S" deve ser adicionado com sucesso ao carrinho
    
# Caso de Teste 04 - Remover Produto do Carrinho
#     Dado que o usuário acessou a página inicial da Amazon.com.br
#     E o usuário digitou o nome do produto "Xbox Series S" no campo de pesquisa
#     Quando o usuário clica no botão de pesquisa
#     Então o resultado da pesquisa deve listar o produto "Console Xbox Series S"
#     E o usuário adiciona o produto "Console Xbox Series S" ao carrinho
#     Então o produto "Console Xbox Series S" deve ser adicionado com sucesso
#     Quando o usuário remove o produto "Console Xbox Series S" do carrinho
#     Então o carrinho deve ficar vazio