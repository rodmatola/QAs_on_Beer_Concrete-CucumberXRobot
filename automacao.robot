*** Settings ***
Resource  ./resources/steps.robot

*** Test Cases ***
Apresentação
    [Tags]  apresentacao
    Abrir notepad
    Se apresentar
    Fechar notepad

Rodar teste de login
    [Tags]  login
    Rodar exemplo da talk

Mostrar o resultado do teste de login
    [Tags]  resultado_login
    Abrir o report
    Mostrar a evidência
    Fechar as janelas

Abrir o Appium
    [Tags]  appium
    Informar que vai abrir o Appium
    Abrir o Appium

Abrir AVD
    [Tags]  avd
    Informar que vai abrir o AVD
    Abrir o AVD
    Abrir a imagem Android
    Esperar o Appium abrir

Rodar o esquema de cenário no app Triangulo
    [Tags]  triangulo_so
    Dizer o que vai rodar
    Rodar o Triângulo com esquema de cenário
    Mostrar o relatório de Triângulo

Despedida
    [Tags]  despedida
    Fazer a despedida
    Abrir imagem do robô fatiando o pepino