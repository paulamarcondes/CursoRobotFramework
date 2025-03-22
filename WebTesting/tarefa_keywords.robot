*** Settings ***
Documentation    Essa suite é uma tarefa sobre KEYWORDS.
Library    String


*** Keywords ***
Gerar um email customizado
    [Arguments]    ${nome}    ${sobrenome}    ${palavra_aleatoria}
    ${email}    Set Variable    ${nome}${sobrenome}${palavra_aleatoria}@testerobot.com
    Log To Console    Email gerado: ${email}
    [Return]    ${email}    # Retorna o email gerado


*** Test Cases ***
Teste de Keywords 01
    ${palavra_aleatoria} =    Generate Random String    length=6    chars=[LETTERS]
    ${email_gerado} =    Gerar um email customizado    nome=paula    sobrenome=mar    palavra_aleatoria=${palavra_aleatoria}
    Log To Console    Email retornado: ${email_gerado}


Teste de Keywords 01
    ${palavra_aleatoria} =    Generate Random String    length=6    chars=[LETTERS]
    ${email_gerado} =    Gerar um email customizado    nome=Paula    sobrenome=Mar    palavra_aleatoria=${palavra_aleatoria}
    Log    Email retornado: ${email_gerado}