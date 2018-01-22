*** Settings ***
Library  ImageHorizonLibrary
Library  OperatingSystem
Library  SeleniumLibrary
Library  Dialogs

Resource  variables.robot


*** Keywords ***
Abrir notepad
    launch application  notepad  alias=notepad
    sleep  1

Fechar notepad
    terminate application  notepad

Abrir imagem do robô fatiando o pepino
    Run  start C:/Users/Rodrigo.Matola/Documents/QA/QAsOnBeer/Apresentação/giphy.gif

Abrir o report
    Abrir notepad
    type  Meu report
    open browser  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/report.html  chrome
    sleep  3

Abrir o Appium
    press combination  @{window_s}
    sleep  1
    type  appium
    sleep  1
    press combination  key.enter
    sleep  1

Abrir o AVD
    press combination  @{window_s}
    sleep  1
    type  avd
    sleep  1
    press combination  key.enter
    sleep  6

Abrir a imagem Android
    press combination  key.tab
    press combination  key.down
    press combination  key.up
    repeat keyword  2  press combination  key.tab
    repeat keyword  2  press combination  key.enter

Dizer o que vai rodar
    Abrir notepad
    type  Vou rodar um esquema de cenario no Android
    sleep  3
    press combination  @{control_a}
    type  Matola, clica no emulador do Android por favor!
    sleep  3
    pause
    Fechar notepad

Esperar o Appium abrir
    Abrir notepad
    type  Aqui vou precisar da ajuda do Matola,\n
    type  pois ele ainda nao me disse como saber se um processo ta rolando.
    sleep  3
    press combination  @{control_a}
    type  Preciso que ele inicie o Appium pra mim.
    pause execution  Pausa para esperar o Appium iniciar
    Fechar notepad

Fazer a despedida
    Abrir notepad
    type  Essa foi so uma amostra do que posso fazer,\n
    type  mas as outras coisas o Matola ainda tem que aprender!
    sleep  4
    press combination  @{control_a}
    type  Obrigado pessoal!
    sleep  3
    type  \n\nTCHAU!
    sleep  3
    Fechar notepad

Fechar as janelas
    close browser
    press combination  key.alt  key.f4
    terminate application  notepad

Informar que vai abrir o Appium
    Abrir notepad
    type  Agora vou iniciar o Appium
    sleep  3
    terminate application  notepad

Informar que vai abrir o AVD
    Abrir notepad
    type  E agora o AVD
    sleep  3
    terminate application  notepad

Mostrar a evidência
    press combination  key.alt  key.tab
    sleep  1
    press combination  @{control_a}
    type  E aqui a evidencia que sempre tiro quando algo da errado
    sleep  3
    move file  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/Suites.Talk Falha-selenium-screenshot-1.png
    ...  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/1.png
    Run  start C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/1.png

Mostrar o relatório de Triângulo
    Abrir notepad
    type  E agora o relatorio com o resultado
    sleep  3
    Fechar notepad
    open browser  C:/Users/Rodrigo.Matola/Documents/QA/robot_tests/QAsOnBeer/triangulo_so.html  chrome
    sleep  3
    close browser

Rodar exemplo da talk
    Run  pabot --processes 2 C:/Users/Rodrigo.Matola/Documents/QA/talk_robot/talk*.robot

Rodar o Triângulo com esquema de cenário
    Run  robot -r triangulo_so C:/Users/Rodrigo.Matola/Documents/QA/appium_TrianguloApp/triangulo_scenario_outline.robot


Se apresentar
    type  Fala galera!\nEu sou o Robot Framework.
    sleep  3

    press combination  @{control_a}
    type  Vou me apresentar primeiro com um teste simples com a SeleniumLibrary
    sleep  3

    press combination  @{control_a}
    type  com um login com sucesso e outro com falha.\nEm paralelo
    sleep  3


