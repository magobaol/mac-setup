# macOS defaults

Le varie impostazioni del macOS non sono sincronizzate automaticamente, ma ho creato un file eseguibile in `~./dotfiles/.macos` che raccoglie le varie impostazioni che voglio trovare di default.

Il file è generato da questo [https://mths.be/macos](https://mths.be/macos) e in teoria, ogni volta che cambio qualcosa a livello di configurazione di sistema, dovrei cercare il comando corrispondente e salvarlo in quel file.

In teoria il file `.macos` creato potrebbe essere usato anche per le impostazioni delle applicazioni, visto che molte di queste usano gli stessi metodi di macOS.

Altri riferimenti utili:

- [https://macos-defaults.com/](https://macos-defaults.com/) – Una collezione di macOS defaults con esempi visuali di ciò che vanno a cambiare

- [https://github.com/kevinSuttle/macOS-Defaults/blob/master/REFERENCE.md](https://github.com/kevinSuttle/macOS-Defaults/blob/master/REFERENCE.md) – Documentazione sui vari modi per agire sulle impostazioni del mac e delle applicazioni.

## Configurazioni da fare a mano

- Shortcut per switchare tra finestre della stessa applicazione (`CMD+\`):  
`System Preferences -> Keyboard -> Shortcuts -> Keyboard -> Move focus to next window`