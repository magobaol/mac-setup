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

[1]:	https://brew.sh/