# Nem tudo é Pepino: Cucumber X Robot Framework

Automação apresentada no **QAs on Beer** da Concrete em 23/01/2018.

A ideia foi apresentar o Robot Framework e fazer uma comparação com o Cucumber. Também mencionei outros frameworks.

Nesta automação utilizei as seguintes bibliotecas:
- **[ImageHorizonLibrary](https://github.com/eficode/robotframework-imagehorizonlibrary){:target="_blank"}** ([keywords](http://eficode.github.io/robotframework-imagehorizonlibrary/doc/ImageHorizonLibrary.html)){:target="_blank"}: para interação com o sistema operacional. No caso, com o teclado;
- **[OperatingSystem](http://robotframework.org/robotframework/#standard-libraries){:target="_blank"}** ([keywords](http://robotframework.org/robotframework/latest/libraries/OperatingSystem.html)){:target="_blank"}: para chamadas de processos no sistema operacional. Funciona como um terminal;
- **[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/){:target="_blank"}** ([keywords](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)){:target="_blank"}: controlar o browser
- **[Dialogs](http://robotframework.org/robotframework/#standard-libraries){:target="_blank"}** ([keywords](http://robotframework.org/robotframework/latest/libraries/Dialogs.html)){:target="_blank"}: interação direta do usuário;
- **[AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary){:target="_blank"}** ([keywords](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html)){:target="_blank"}: automação mobile.

O respositório está exatamente como na minha máquina. É preciso alterar os caminhos para a sua.

No Appium a interação está através dos [keycodes](https://developer.android.com/ndk/reference/keycodes_8h.html){:target="_blank"} do Android. Roda mais rápido.

Para rodar digite:
```
robot automacao.robot
```
- Link para a [apresentação](https://www.slideshare.net/RodrigoMatola/nem-tudo-pepino-cucumber-x-robot-framework-86641457){:target="_blank"}
- Link para o vídeo (em breve)
