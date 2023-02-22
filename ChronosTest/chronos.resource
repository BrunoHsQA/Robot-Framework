*** Settings ***
Library    SeleniumLibrary




*** Variables ***
${SITE}             https://www.demoblaze.com
${NAVEGADOR}        Chrome
${LAPTOP}           Laptops
${MACBOOK}          MacBook Pro
${CARRINHO}         xpath=//div[2]//a
${CART}             Cart
${PLACE ORDER}      css=.btn-success
${COMPRAR}          xpath=//button[text()="Purchase"]
${OK}               css=.confirm

${NOME}            id=name
${PAÍS}            id=country
${CIDADE}          id=city
${CARTÃO}          id=card
${MÊS}             id=month
${ANO}             id=year




*** Keywords ***

Abrir Navegador
    Open Browser     ${SITE}     ${NAVEGADOR}
    Maximize Browser Window


Esperar os elementos carregarem
    Sleep    5

Validando se a compra foi um sucesso
    Wait Until Element Is Visible     css=.sweet-alert>h2 
    Element Text Should Be            css=.sweet-alert>h2    Thank you for your purchase!

Comprando MacBook
    Esperar os elementos carregarem
    Click Link    ${LAPTOP}
    Wait Until Element Is Visible    Link=${MACBOOK}
    Click Link    ${MACBOOK}
    Wait Until Element Is Visible    ${CARRINHO}
    Click Element    ${CARRINHO}
    Esperar os elementos carregarem
    Alert Should Be Present
    

Finalizando a compra do MacBook
    Esperar os elementos carregarem
    Click Link      ${CART}
    Click Button    ${PLACE ORDER}
    Sleep   3
    Input Text      ${NOME}        Test1
    Input Text      ${PAÍS}        Brasil
    Input Text      ${CIDADE}      Lagoinha
    Input Text      ${CARTÃO}      40028922
    Input Text      ${MÊS}         Dezembro
    Input Text      ${ANO}         3253
    Click Button    ${COMPRAR}   
    Validando se a compra foi um sucesso
    Wait Until Element Is Visible    ${OK}
    Click Button    ${OK}
    Wait Until Element Is Visible    ${PLACE ORDER}
    