# Kodi
[https://kodi.tv/](https://kodi.tv/)

## Installazione
Se sheldon si tratta di abilitare MySQL Maria DB e avere un paio di cartelle con i media condivise.  
Le cartelle sono `Multimedia/serie tv` e `Multimedia/film`

## Usare MySQL come sorgente per la libreria
Impostando Kodi per dirgli di usare MySQL per gestire la libreria è possibile tenere in sync tutte le informazioni tra i vari client. Per farlo bisogna mettere un file chiamato `advancedsettings.xml` nella `userdata` folder, che si trova in posti differenti a seconda del sistema operativo del cliente. Per info vedere [qui](https://kodi.wiki/view/Userdata)

Esempio di `advancedsettings.xml`:
```
<advancedsettings>
  <videodatabase>
    <type>mysql</type>
    <host>10.0.0.5</host>
    <port>3306</port>
    <user>kodi</user>
    <pass>password</pass>
  </videodatabase> 
  <musicdatabase>
    <type>mysql</type>
    <host>10.0.0.5</host>
    <port>3306</port>
    <user>kodi</user>
    <pass>password</pass>
  </musicdatabase>
  <videolibrary>
    <importwatchedstate>true</importwatchedstate>
    <importresumepoint>true</importresumepoint>
  </videolibrary>
</advancedsettings>
```

## Modifica dei percorsi dei file
Se per qualche motivo i file multimediali fruiti su Kodi cambiano posizione (o magari cambia il nome del server) è possibile eseguire delle operazioni manuali sul database per evitare di perdere le informazioni della libreria (come i watch status).

Collegarsi al database MySQL (c'è phpMyAdmin su Sheldon, è sufficiente) e nel database `MyVideos116`
!!!info
    Il database potrebbe chiamarsi diversamente, magari lo cambiano tra una versione e l'altra, ma il prefisso dovrebbe essere sempre `MyVideos`

 Le query seguenti sono quelle che ho eseguito quando ho cambiato il NAS, per cui è cambiato il nome del server: l'effettiva modifica quindi potrebbe essere diversa, ma la sostanza è quella.

!!!warning
    Prima di procedere è meglio farsi un backup del database, si può fare sempre da phpMyAdmin

!!!warning
    Prima di procedere è opportuno eseguire le query select per verificare che siano corrette

### Modifica dei path per le serie tv
**Modificare la tabella dei path per le serie tv**

```sql
--Query di controllo
SELECT *, REPLACE(strPath, "smb://FRINK/", "smb://sheldon/") from path WHERE idPath IN (select DISTINCT c19 from episode);

--Query di modifica
UPDATE path set strPath = REPLACE(strPath, "smb://FRINK/", "smb://sheldon/") WHERE idPath IN (select DISTINCT c19 from episode);
```

**Modificare la tabella degli episodi per le serie tv**

```sql
--Query di controllo
select *, REPLACE(c18, "smb://FRINK/", "smb://sheldon/") from episode;

--Query di modifica
UPDATE episode set c18 = REPLACE(c18, "smb://FRINK/", "smb://sheldon/");
```

### Modifica dei path per i film
La struttura database dei path per i film è leggermente diversa da quella per le serie tv, quindi le query sono leggermente diverse.

**Modificare la tabella dei path per i film**
```sql
--Query di controllo
select *, REPLACE(strPath, "smb://FRINK/", "smb://sheldon/") from path where idPath in (select DISTINCT c23 from movie) OR idParentPath IN (select DISTINCT c23 from movie);

--Query di modifica
UPDATE path set strPath = REPLACE(strPath, "smb://FRINK/", "smb://sheldon/") where idPath IN (select DISTINCT c23 from movie) OR idParentPath IN (select DISTINCT c23 from movie);
```

**Modificare la tabella dei film**

```sql
--Query di controllo
select *, REPLACE(c22, "smb://FRINK/", "smb://sheldon/") from movie;

--Query di modifica
UPDATE movie set c22 = REPLACE(c22, "smb://FRINK/", "smb://sheldon/");
```

### Aggiornamento della sorgente dei file
Dopo aver modificato i path nel database è necessario aggiornare anche il percorso della "source", e questo va fatto dentro Kodi in ogni client.

!!!warning
    Non bisogna rimuovere la sorgente dei film (o serie tv) e rimetterla, ma entrare in modifica e cambiare il percorso. Chiederà probabilmente di reinserire nome utente e password per accedere al disco di rete.