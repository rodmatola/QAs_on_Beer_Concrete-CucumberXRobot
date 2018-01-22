# Nem tudo é Pepino: Cucumber X Robot Framework

Automação apresentada no **QAs on Beer** da Concrete em 23/01/2018.

A ideia foi apresentar o Robot Framework e fazer uma comparação com o Cucumber. Também mencionei outros frameworks.

Nesta automação utilizei as seguintes bibliotecas:
- **ImageHorizonLibrary**: para interação com o sistema operacional. No caso, com o teclado;
- **OperatingSystem**: para chamadas de processos no sistema operacional. Funciona como um terminal;
- **SeleniumLibrary**: controlar o browser
- **Dialogs**: interação direta do usuário;
- **AppiumLibrary**: automação mobile.

O respositório está exatamente como na minha máquina. É preciso alterar os caminhos para a sua.

No Appium a interação está através dos [keycodes](https://developer.android.com/ndk/reference/keycodes_8h.html) do Android. Roda mais rápido.

Para rodar digite:
```
robot automacao.robot
```
- Link para a apresentação (em breve)
- Link para o vídeo (em breve)
