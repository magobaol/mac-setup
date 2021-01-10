# Sheldon (NAS)

Ovviamente queste info andrebbe da qualche altra parte, oppure questo progetto dovrebbe chiamarsi in modo più generico di "mac-setup", ma pazienza.

- [Transmission](transmission.md)
- [Kodi](kodi.md)

## Login page
A partire da una certa versione di QTS, i geni hanno cambiato la pagina di login mettendo una `textarea` al posto di un `input` per lo username, e questo impedisce a 1Password di funzionare.  
[Qui](https://1password.community/discussion/comment/572888/#Comment_572888) ho trovato un semplice tampermonkey per risolvere, e l'ho installato (è anche salvato in `vita-digitale/mac-automation`)

## HBS
Ci sarebbe tantissimo da scrivere, ma per il momento lascio il riferimento a un thread che spiega bene le differenze tra backup, sync etc. (Ricorda che un backup con Dedup disattivato agisce praticamente come un sync).  
[https://forum.qnap.com/viewtopic.php?t=153272](https://forum.qnap.com/viewtopic.php?t=153272)

## GoodSync
```
cd /share/MD0_DATA/.qpkg/gs-server/

./gsync_x64new /gs-account-enroll=francesco.face@gmail.com

./gsync_x64new /activate

./gsync_x64new /sync-jobs-accts

./gsync_x64new sync "francesco - docs"
```

## Connessione diretta

Il NAS può essere collegato direttamente al computer solo tramite LAN, tramite [questa procedura](https://www.qnap.com/en/how-to/knowledge-base/article/how-to-set-up-a-direct-connection-test/): per spostare grosse quantità di dati ne vale la pena, perché si passa da circa 2.5 MB/s a circa 70 MB/s.
