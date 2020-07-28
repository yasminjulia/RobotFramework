*** Settings ***
Resource        base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Seleciona por Text e validar pelo valor
    Go To                               ${url}dropdown
    Select From List By Label           class:avenger-list      Scott Lang
    ${Selected}=                        Get Selected List Value             class:avenger-list
    Should Be Equal                     ${Selected}         7

Seleciona pelo valor e valida pelo texto
    Go To                               ${url}dropdown
    Select From List By Value           id:dropdown         6
    ${Selected}=                        Get Selected List Label             id:dropdown
    Should Be Equal                     ${Selected}         Loki