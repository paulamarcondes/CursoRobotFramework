*** Settings ***
Documentation   Exemplo de loop com IF
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}
Library         SeleniumLibrary


*** Variables ***
# Minha lista      0    1    2    3    4     5     6     7
@{MEUS_NUMEROS}    0    3    6    9    12    15    18    21


*** Test Cases ***
Caso de teste 1
    Percorrer a lista com FOR e IF

Caso de teste 2
    Pelo Gemini
#Meu código, do Codeium e do Gemini estão dando erro no OR, ELSE e END, não consegui entender por que


*** Keywords ***
Percorrer a lista com FOR e IF
    FOR    ${NUMERO}    IN    @{MEUS_NUMEROS}
        Log To Console    Meu número agora é: ${NUMERO}!
        Log    Meu número agora é: ${NUMERO}!
        IF    ${NUMERO} == 9
            Log To Console    Eu sou número 9!
            Log    Eu sou número 9!
        ELSE
            Log To Console    Eu não sou o número 9!
            Log    Eu não sou o número 9!
        END
    END


Pelo Gemini
    FOR    ${NUMERO}    IN    @{MEUS_NUMEROS}
        IF    ${NUMERO} == 6    OR    ${NUMERO} == 9
            Log    Eu sou o número ${NUMERO}!
        ELSE
            Log    Eu não sou o número 6 e nem o 9!
        END
    END