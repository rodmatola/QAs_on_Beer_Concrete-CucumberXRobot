# Nem tudo é Pepino: Cucumber X Robot Framework

Automação apresentada no **QAs on Beer** da Concrete em 23/01/2018.

A ideia foi apresentar o Robot Framework e fazer uma comparação com o Cucumber. Também mencionei outros frameworks.

Nesta automação utilizei as seguintes bibliotecas:
- **[ImageHorizonLibrary](https://github.com/eficode/robotframework-imagehorizonlibrary)** ([keywords](http://eficode.github.io/robotframework-imagehorizonlibrary/doc/ImageHorizonLibrary.html)): para interação com o sistema operacional. No caso, com o teclado;
- **[OperatingSystem](http://robotframework.org/robotframework/#standard-libraries)** ([keywords](http://robotframework.org/robotframework/latest/libraries/OperatingSystem.html)): para chamadas de processos no sistema operacional. Funciona como um terminal;
- **[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/)** ([keywords](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)): controlar o browser
- **[Dialogs](http://robotframework.org/robotframework/#standard-libraries)** ([keywords](http://robotframework.org/robotframework/latest/libraries/Dialogs.html)): interação direta do usuário;
- **[AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)** ([keywords](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html)): automação mobile.

O respositório está exatamente como na minha máquina. É preciso alterar os caminhos para a sua.

No Appium a interação está através dos [keycodes](https://developer.android.com/ndk/reference/keycodes_8h.html) do Android. Roda mais rápido.

Para rodar digite:
```
robot automacao.robot
```
- Link para a apresentação (em breve)
- Link para o vídeo (em breve)
