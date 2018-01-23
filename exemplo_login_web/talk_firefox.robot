*** Settings ***
Resource  steps_login.robot
Suite Teardown  Close browser


*** Test Cases ***

Cenário: Login com falha
    Dado que estou na tela de login no Firefox
    Quando realizo o login errado
    Então devo visualizar a mensagem "You logged into a secure area!"
