# iTerm2
[https://iterm2.com/][1]

## Sincronizzazione impostazioni
iTerm non è semplice da sincronizzare con Mackup perché ogni volta che viene avviato sovrascrive il file simbolico in `~/Library/Preferences`.
Però iTerm stesso ha un meccanismo di sincronizzazione, per cui è sufficiente dirgli, tramite le preferenze di sistema, di caricare le preferenze da un certo file e di salvarle nello stesso certo file quando viene chiuso.
Il file in questione ho pensato  di salvarlo sempre in Mackup, dentro `Library/Preferences`, anche se non è Mackup a gestirlo, perché è comunque un contenitore di file su cloud, quindi va bene così.
L’unica accortezza è che, se cambio il cloud di Mackup da Google a Dropbox o viceversa, bisogna dire anche a iTerm di puntare alla nuova cartella.
(immagine iTerm2.png in questa stessa cartella)

![Screenshot](iterm2.png)


[1]:	https://iterm2.com/
