*** Settings ***
Documentation     demo for appium library
Library           AppiumLibrary
Suite Setup  Dado que estou na tela do TrianguloApp

*** Test Cases ***
Cenário: Teste Triângulo
    [Template]   Cenário: Triângulo
    #numero1    #numero2    #numero3    #mensagem
    10           10           10           O triângulo é Equilátero
     8            9            9           O triângulo é Isósceles
     8            9           10           O triângulo é Escaleno

*** Keywords ***
Cenário: Triângulo
    [Arguments]  ${numero1}  ${numero2}  ${numero3}  ${mensagem}
    Quando eu preencher os campos com ${numero1} ${numero2} ${numero3}
    E clicar em Calcular
    Então a mensagem ${mensagem} sera exibida

Dado que estou na tela do TrianguloApp
    Open Application    http://localhost:4723/wd/hub  platformName=Android    platformVersion=6.0
    ...  deviceName=emulator-5554    app=com.eliasnogueira.trianguloapp  automationName=appium
    ...  appPackage=com.eliasnogueira.trianguloapp  appActivity=com.eliasnogueira.trianguloapp.MainActivity


Quando eu preencher os campos com ${numero1} ${numero2} ${numero3}
    press keycode  67
    press keycode  ${numero1}
    press keycode  66
    press keycode  67
    press keycode  ${numero2}
    press keycode  66
    press keycode  67
    press keycode  ${numero3}

E clicar em Calcular
    click element  id=btnCalcular
    click element  id=txtLado1


Então a mensagem ${mensagem} sera exibida
    element text should be  id=txtResultado  ${mensagem}