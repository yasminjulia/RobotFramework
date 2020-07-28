*** Settings ***
Resource        base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Checa valor por numero da linha
    Go To                               ${url}tables
    Table Row Should Contain            id:actors   1   @robertdowneyjr

Descobre a linha pelo texto chave
    Go To                                ${url}tables
    ${target}=              Get webElement      xpath:.//tr[contains(.,'@chadwickboseman')]
    Log                     ${target.text}
    Log To Console          ${target.text}
    Should Contain          ${target.text}      $ 700.000
    Should Contain          ${target.text}      Pantera Negra