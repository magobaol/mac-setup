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

## Shell
Quando si fa login in ssh, viene mostrata una fastidiosa console di management, a causa di questa riga contenuta nel file `/etc/profile`

```bash
[[ "admin" = "$USER" ]] && /sbin/qts-console-mgmt -f
```

Il file `/etc/profile` viene riscritto ad ogni riavvio, quindi il supporto QNAP mi aveva suggerito di rimuovere la riga tramite sed usando `autorun.sh` come [descritto qui](https://wiki.qnap.com/wiki/Running_Your_Own_Application_at_Startup) (la sezione che interessa a me per Sheldon è quella "All HAL-based Intel and AMD NAS use ...").  
Pare però che il trucchetto non funzioni per `/etc/profile`, quindi ho creato un file in `/share/homes/admin` chiamato `fix-shell.sh` con questo contenuto:

```bash
sed -i '/qts-console-mgmt/d' /etc/profile
sed -i "s/alias ls='\/bin\/ls -F'/alias ls='\/bin\/ls -F --color'/" /etc/profile
```

(la seconda riga provvede a colorare la shell).  
Potrei richiamare il file con un cron una volta al giorno, tanto per essere sicuro che venga eseguito, ma visto che non prevedo di riavviare spesso il nas mi va bene anche chiamarlo manualmente quando mi capita di riavviarlo.
