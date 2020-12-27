# GoodSync
[https://www.goodsync.com/](https://www.goodsync.com/)

## Esecuzione automatica

### A orari prestabiliti
Lo scheduling a orario prestabiliti non è in grado di svegliare il computer, ma può solo impedirgli di andare in sleep nel caso in cui ci siano Job da eseguire (se impostato in `Preferences->General->System integration`). Quindi anche per un Job da eseguire una volta al giorno probabilmente impedirebbe al computer di andare in sleep per tutto il giorno.
E se invece mandi in sleep il computer forzatamente, il Job non parte, neanche quando il computer torna su. Insomma, un po' una delusione.

### Ogni tot minuti/ore
In questo caso, se nel momento in cui il job sarebbe dovuto partire il computer è in sleep, il job parte non appena il computer si risveglia.

### Prevent sleep
Fatti un po' di test con `Preferences->General->System integration`, il risultato è questo: se il JOB è in esecuzione, il computer non va in sleep (magari si spegne lo schermo e si blocca, ma non è in sleep).
Stessa cosa se c'è GoodSync acceso.
Se invece GoodSync è spento, anche se c'è il worker per l'esecuzione automatica attivo, il computer va in sleep e, non appena si riprende, esegue i job che non è riuscito a eseguire prima.
 

## Salvataggio log

I log sono salvati nella cartella _gsdata_, sia nel lato sinistro che in quello destro della sincronizzazione.

## Invio log tramite email

In `Preferences->Connection->SMTP Options` ho impostato Gmail come SMTP server. Visto che su Google ho 2FA ho dovuto creare una password specifica per l'app su [https://myaccount.google.com/apppasswords](https://myaccount.google.com/apppasswords)