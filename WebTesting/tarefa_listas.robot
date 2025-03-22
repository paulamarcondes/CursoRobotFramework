*** Settings ***
Documentation    Essa suite é uma tarefa sobre LISTAS.


***Variables***
@{MESES_DO_ANO}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro


*** Test Cases ***
Teste de Listas 01
    Log To Console    ${MESES_DO_ANO}[0]
    Log To Console    ${MESES_DO_ANO}[1]
    Log To Console    ${MESES_DO_ANO}[2]
    Log To Console    ${MESES_DO_ANO}[3]
    Log To Console    ${MESES_DO_ANO}[4]
    Log To Console    ${MESES_DO_ANO}[5]
    Log To Console    ${MESES_DO_ANO}[6]
    Log To Console    ${MESES_DO_ANO}[7]
    Log To Console    ${MESES_DO_ANO}[8]
    Log To Console    ${MESES_DO_ANO}[9]
    Log To Console    ${MESES_DO_ANO}[10]
    Log To Console    ${MESES_DO_ANO}[11]

Teste de Listas 02
    Log    ${MESES_DO_ANO}[0]
    Log    ${MESES_DO_ANO}[1]
    Log    ${MESES_DO_ANO}[2]
    Log    ${MESES_DO_ANO}[3]
    Log    ${MESES_DO_ANO}[4]
    Log    ${MESES_DO_ANO}[5]
    Log    ${MESES_DO_ANO}[6]
    Log    ${MESES_DO_ANO}[7]
    Log    ${MESES_DO_ANO}[8]
    Log    ${MESES_DO_ANO}[9]
    Log    ${MESES_DO_ANO}[10]
    Log    ${MESES_DO_ANO}[11]
