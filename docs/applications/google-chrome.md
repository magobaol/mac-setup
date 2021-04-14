# Google Chrome

### Mettere in whitelist i protocolli x-callback
Ogni volta che si prova a eseguire una x-callback da Chrome (per esempio tramite un bookmark o una bookmarklet) quello chiede una conferma, ma con questo comando si possono mettere in whitelist tutti i protocolli del caso

```
defaults write com.google.Chrome URLWhitelist -array '[kmtrigger://\*'](kmtrigger://*') '[drafts5://\*'](drafts5://*')\`
```
  
  Riferimento: [Disable Chrome to ask for confirmation to open external application everytime - Super User](https://superuser.com/questions/1481851/disable-chrome-to-ask-for-confirmation-to-open-external-application-everytime)