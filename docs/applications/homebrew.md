# Homebrew
[https://brew.sh/][1]

## Installazione
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## Troubleshooting

### Problemi di permessi e altre amenità simili
Se brew è stato già installato per un altro utente sullo stesso computer, si possono lanciare questi due comandi

	sudo chown -R $(whoami) /usr/local/var/homebrew
	sudo chown -R "$USER":admin /usr/local

L'altro utente a questo punto avrà gli stessi problemi, ma se si sta solo facendo un test (tipicamente per la procedura dei dotfiles) allora basta rieseguire gli stessi comandi con l'altro utente quando i test sono terminati.

Se invece entrambi gli utenti devono avere accesso a Brew, devi studiare come fare (e aggiornare questa guida nel caso)

### Path
Gli eseguibili di Homebrew vengono installati dentro `/usr/local/Cellar` e poi vengono creati dei symlink da `/usr/local/bin` che è il path ufficiale per eseguibili non di sistema, mentre `/usr/bin` è per quelli di sistema.

Per fare in modo che il terminale usi `/usr/local/bin` prima di `/usr/bin` (ad esempio per usare la versione brew di git) è necessario che `/usr/locabl/bin` venga prima dell'altro nel path.
Il modo corretto per farlo è tramite

`echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile`

quindi nel mio caso c'è una riga simile in `~/dotfiles/shell/bootstrap.sh`

#### Path per le applicazioni GUI
Se qualche applicazione GUI dovrebbe funzionare con qualcosa di Homebrew e non sta funzionando, guarda questa FAQ: https://docs.brew.sh/FAQ#my-mac-apps-dont-find-usrlocalbin-utilities

#### Modifica del path a livello di sistema
Anche il file `/etc/paths` può essere utilizzato per modificare l'ordine del path, ed è quello che ho fatto sul mac di Hootsuite, però probabilmente non è la cosa più indicata. Meglio operare sull'export del path nella shell, come descritto sopra.

[1]:	https://brew.sh/
