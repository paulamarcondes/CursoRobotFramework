*** Settings ***
Documentation    Essa suite é uma tarefa sobre DICIONÁRIOS.
Library    String

***Variables***
&{MESES_DO_ANO}    Janeiro=31    Fevereiro=28    Março=31    Abril=30    Maio=31    Junho=30    Julho=31    Agosto=31    Setembro=30    Outubro=31    Novembro=30    Dezembro=31


***Test Cases***
Caso de Teste 01 (sem FOR)
    Log To Console    Janeiro tem ${MESES_DO_ANO}[Janeiro] dias.
    Log To Console    Fevereiro tem ${MESES_DO_ANO}[Fevereiro] dias.
    Log To Console    Março tem ${MESES_DO_ANO}[Março] dias.
    Log To Console    Abril tem ${MESES_DO_ANO}[Abril] dias.
    Log To Console    Maio tem ${MESES_DO_ANO}[Maio] dias.
    Log To Console    Junho tem ${MESES_DO_ANO}[Junho] dias.
    Log To Console    Julho tem ${MESES_DO_ANO}[Julho] dias.
    Log To Console    Agosto tem ${MESES_DO_ANO}[Agosto] dias.
    Log To Console    Setembro tem ${MESES_DO_ANO}[Setembro] dias.
    Log To Console    Outubro tem ${MESES_DO_ANO}[Outubro] dias.
    Log To Console    Novembro tem ${MESES_DO_ANO}[Novembro] dias.
    Log To Console    Dezembro tem ${MESES_DO_ANO}[Dezembro] dias.

Caso de Teste 01 (com FOR)
    FOR    ${MES}    IN    @{MESES_DO_ANO}
        Log    ${MES} tem ${MESES_DO_ANO}[${MES}] dias.
    END
