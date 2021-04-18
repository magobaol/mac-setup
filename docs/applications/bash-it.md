# bash-it
[https://github.com/Bash-it/bash-it][1]

`bash-it` è un framework per la bash, ovvero un insieme di tante cose precotte che possono essere usate nella bash, come per esempio alias, plugin, autocompletamenti e così via.
È l’equivalente di `oh-my-zsh` per zsh.

## Installazione
Poiché bash-it deve essere installato scaricando il repo da github e lanciando qualche comando, ho preferito metterlo come submodule git del repo dotfiles (nella sottocartella `/bash`), e installarlo durante l'esecuzione di dotbot.

Bash-it è come un programma che deve essere lanciato ogni volta che parte la shell, e inoltre è pensato per essere installato senza intermediari, per cui durante la procedura di installazione va a scrivere un bel po’ di cose dentro `bashrc`.
Ma io voglio tenere il `bashrc` libero, quindi ho creato il file `dotfiles/bash/bash-it.bash` che contiene tutta la sbrodolata che bash-it aggiunge di suo al bashrc, e nel bashrc ho aggiunto il source a questo file.

## Personalizzazione
Inoltre, bash-it va configurato: alcune cose, come il tema da usare, si configurano direttamente nel file `bash-it.bash` mentre altre, come i plugin o gli autocompletamenti, vanno abilitati o disabilitati, tramite comandi di bash-it stesso, per esempio

	bash-it enable completion git

che va a creare un symlink dentro una cartella interna a bash-it; poiché la procedura di installazione dei miei dotfiles deve essere automatica, nel file `install.conf.yaml` di dotbot ho inserito dei comandi shell che abilitano le cose che voglio abilitare.

Le personalizzazioni sono definite in `dotfiles/bash/bash-it-setup.sh` e questo file viene richiamato durante l'installazione di [dotbot](/applications/dotbot). In precedenza le singole righe di quel file venivano chiamate in `dobtbot`, ma in questo modo è possibile eseguire l'installazione di dotbot anche in ambiente zsh.

## Aggiornamento di bash-it
Bisogna aggiornare il submodule tirando giù le ultime modifiche, e poi fare commit del repo dotfiles principale

	cd ~/.dotfiles/bash/bash-it
	git co master
	git pull
	cd ../..
	git add bash/bash-it
	git ci -m "Update bash/bash-it submodule"

Se l'aggiornamento viene fatto su un mac, poi sull'altro bisogna entrare nella directory del submodule e fare `git pull`.

## Cose di bash-it abilitate
A parte quelle di default, che ancora non ho capito bene tutte cosa fanno, ho fatto:

	bash-it enable completion ssh

Abilita l’autocompletato dei nomi degli host, andandoli a prendere nel file hosts. Questo vuol dire che per ogni connessione ssh che si vuole autocompletare deve esserci lo stesso host definito nel file hosts. È lo stesso funzionamento che c’è con **zsh**.

## Hostname
Nella configurazione mia di bash-it al prompt vedo il nome del computer, esattamente l'`$HOSTNAME`. Questa variabile viene impostata durante l'installazione e quindi, sul computer di Hootsuite, viene messo il nome di default è che Francesco Face.
Per cambiare l'hostname:

```bash
sudo scutil --set HostName <new name>
```

## Storia personale con bash-it
Sono stato un po’ indeciso se passare da bash-it o meno, perché ha un fottio di roba e non sono affatto sicuro di utilizzarla tutta, ma alla fine ho pensato che fosse più semplice passare da qualcosa di già esistente piuttosto che andare a configurare tutto piano piano, che poi non so neanche bene come fare. Per esempio, i temi di bash-it (che cambiano colori e font delle directory, il prompt e così via) non saprei proprio come metterli.

Insomma ho deciso di mettere bash-it con la configurazione iniziale minima (quella che viene impostata se lanci l’install di bash-it senza parametri) e poi vedere cosa andare a personalizzare dopo.

Bash-it per esempio ha già di suo la possibilità di aggiungere alias custom, che andrebbero messi in una certa directory, ma io li metterò dentro la mia directory `shell` per renderli disponibili anche a zsh. Certo, tutti gli alias definiti in bash-it avrebbero senso anche in zsh, per esempio in bash-it ho `..` che è un alias di `cd ..` e così via, e se in zsh non ci fosse avrebbe forse senso metterlo nella cartella `shell` per renderlo disponibile a entrambe, appunto.
Però due considerazioni: primo, è molto probabile che un sacco di cose di bash-it siano presenti pari pari in oh-my-zsh; secondo, ho detto che il passaggio da bash-it è solo l’inizio, andando avanti vedremo come sistemare le cose, potrei anche decidere di eliminarlo e mettere solo quello che mi serve veramente.

[1]:	https://github.com/Bash-it/bash-it
