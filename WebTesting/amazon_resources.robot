*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                 https://www.amazon.com.br/
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}  (//span[contains(.,'Eletrônicos e Tecnologia')])[1]
${PRODUTO}             //h2[@aria-label='Xbox Series S'][contains(.,'Xbox Series S')]
${CARRINHO}            //div[@class=' nav-progressive-attribute'][contains(.,'Carrinho')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Sleep    15s
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}    

Verificar se aparece o texto "${FRASE}"
    Wait Until Page Contains         text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//span[@class='a-size-base-plus'][contains(.,"${NOME_CATEGORIA}")]

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Button    locator=nav-search-submit-button
    Scroll Element Into View    locator=${PRODUTO}
    Wait Until Page Contains Element    locator=${PRODUTO}

Verificar se o resultado da pesquisa lista "Xbox Series S"
    Element Should Be Visible    locator=${PRODUTO}
    Scroll Element Into View     locator=${PRODUTO}

Adicionar o produto "Xbox Series S" no carrinho
    Click Element    locator=${PRODUTO}
    Wait Until Element Is Visible    locator=productTitle
    Click Button    locator=add-to-cart-button
    Sleep    5s
    Click Element    locator=//input[@aria-labelledby='attachSiNoCoverage-announce']
    Sleep    5s

Verificar se o produto "Xbox Series S" foi adicionado com sucesso
    Sleep    5s
    Wait Until Page Contains    Adicionado ao carrinho
    # Click Element    locator=${CARRINHO}
    # Wait Until Page Contains    Xbox Series S
    





# TESTES EM GHERKIN
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "${TITULO}"
    Verificar se o título da página fica "${TITULO}"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece o texto "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"
    
Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar se o resultado da pesquisa lista "Xbox Series S"
