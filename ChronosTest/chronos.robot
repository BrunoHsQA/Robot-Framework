*** Settings ***
Library           SeleniumLibrary
Resource         ./chronos.resource
Test Setup       Abrir Navegador
Test Teardown    Close Browser


*** Test Case ***
Comprar produtos no site DemoBlaze
    Comprando MacBook
    Finalizando a compra do MacBook
        