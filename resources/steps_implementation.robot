*** Settings ***
Library  ImageHorizonLibrary
Library  OperatingSystem
Library  SeleniumLibrary
Library  Dialogs

*** Variables ***
@{control_a}  key.ctrl  key.a
@{window_s}  key.win  key.s


*** Test Cases ***
Apresentação
    [Tags]  apresentacao
    launch application  notepad  alias=notepad
    sleep  1

    type  Fala galera!\nEu sou o Robot Framework.
    sleep  3

    press combination  @{control_a}
    type  Vou me apresentar primeiro com um teste simples com a SeleniumLibrary
    sleep  3

    press combination  @{control_a}
    type  com um login com sucesso e outro com falha.\nEm paralelo
    sleep  3
    terminate application  notepad

Rodar teste de login
    [Tags]  login
    Run  pabot --processes 2 C:/Users/Rodrigo.Matola/Documents/QA/talk_robot/talk*.robot

Abrir o resultado do login
    [Tags]  resultado_login
    launch application  notepad  alias=notepad
    sleep  1
    type  Meu report
    open browser  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/report.html  chrome
    sleep  3
    press combination  key.alt  key.tab
    sleep  1
    press combination  @{control_a}
    type  E aqui a evidencia que sempre tiro quando algo da errado
    sleep  3
    move file  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/Suites.Talk Falha-selenium-screenshot-1.png
    ...  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/1.png
    Run  start C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/1.png
    close browser
    press combination  key.alt  key.f4
    terminate application  notepad

Abrir o Appium
    [Tags]  appium
    launch application  notepad  alias=notepad
    sleep  1
    type  Agora vou iniciar o Appium
    sleep  3
    terminate application  notepad

    press combination  @{window_s}
    sleep  1
    type  appium
    press combination  key.enter
    sleep  1

Abrir AVD
    [Tags]  avd
    launch application  notepad  alias=notepad
    sleep  1
    type  E agora o AVD
    sleep  3
    terminate application  notepad

    press combination  @{window_s}
    sleep  1
    type  avd
    press combination  key.enter
    sleep  5

    press combination  key.tab
    press combination  key.down
    press combination  key.up
    repeat keyword  2  press combination  key.tab
    repeat keyword  2  press combination  key.enter

    launch application  notepad  alias=notepad
    sleep  1
    type  Aqui vou precisar da ajuda do Matola,\n
    type  pois ele ainda nao me disse como saber se um processo ta rolando.
    sleep  3
    press combination  @{control_a}
    type  Preciso que ele inicie o Appium pra mim.
    pause execution  Pausa para esperar o Appium iniciar

Rodar o esquema de cenário no app Triangulo
    press combination  @{control_a}
    type  Vou rodar um esquema de cenario no Android
    sleep  3
    terminate application  notepad
    Run  robot C:\Users\Rodrigo.Matola\Documents\QA\appium_TrianguloApp\triangulo_scenario_outline.robot

    launch application  notepad  alias=notepad
    sleep  1
    type  E agora o relatorio com o resultado
    terminate application  notepad
    open browser  C:\Users\Rodrigo.Matola\Documents\QA\appium_TrianguloApp\report.html  chrome
    sleep  3
    close browser

Despedida
    launch application  notepad  alias=notepad
    sleep  1
    type  Essa foi so uma amostra do que posso fazer,\n
    type  mas as outras coisas o Matola ainda tem que aprender!
    sleep  4
    press combination  @{control_a}
    type  Obrigado pessoal!
    sleep  3
    type  TCHAU!
    sleep  3
    terminate application  notepad

