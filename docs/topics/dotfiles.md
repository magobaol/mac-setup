# dotfiles
[https://github.com/magobaol/dotfiles][1]

## Introduzione
I dotfiles sono organizzati nel repo per essere facilmente trasportati e installati ovunque. Per installarli uso `dotbot`, quindi alcune delle scelte sono state fatte per semplificare l'installazione usando questo programma, ma di norma si tratta di scelte che andrebbero bene comunque.

## Installazione
(nella home)

```bash
git clone git@github.com:magobaol/dotfiles.git
```

	cd dotfiles
	./install

## Organizzazione della directory dotfiles
Nella directory `dotfiles` viene utilizzata questa struttura:

- Tutti i file che sarebbero dei _dotfiles_ nella home vanno direttamente nella root del repository, ma il nome è senza il punto (es: `.bash_profile_` si chiama `bash_profile`)
- Ci sono poi delle directory:
	- `bash`: contiene cose specifiche da usare con la shell bash
	- `zsh`: contiene cose specifiche da usare con la shell zsh
	- `shell`: contiene cose valide per tutte le shell (es: alias)

Sia queste che altre scelte sono ispirate all’organizzazione dei file di Anish Athalye [https://github.com/anishathalye/dotfiles]() anche grazie al suo articolo [http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/]()

Per molte directory vengono poi creati dei link simbolici tramite `dotbot` (vedi dopo) per avere un riferimento semplice e costante da ovunque sia necessario accedervi (per esempio la cartella `bash` viene symlinkata da `~/.bash`.

## Informazioni specifiche

- [Dotbot](../applications/dotbot.md)
- [Bash](../applications/bash.md)
- [Bash-it](../applications/bash-it.md)
- [Zsh](../applications/zsh)
- [oh-my-zsh](../applications/oh-my-zsh.md)
- [inputrc](../applications/inputrc.md)

## dotfiles-ae
[https://bitbucket.org/magobaol/dotfiles-ae/src/master/][4]

Contiene cose specifiche per AE. È su BitBucket perché all'epoca era l'unico modo per farlo privato.
Nei `bashrc` e `zshrc` del repo dotfiles principale ci sono le inclusioni dei corrispondenti "rc" di questo repo, solo se esistono, così i dotfiles principali sono portabili anche se questo secondario.

## dotfiles-hs
[https://bitbucket.org/magobaol/dotfiles-hs/src/master/][5]

Contiene cose specifiche per HS. È su BitBucket perché all'epoca era l'unico modo per farlo privato.
Nei `bashrc` e `zshrc` del repo dotfiles principale ci sono le inclusioni dei corrispondenti "rc" di questo repo, solo se esistono, così i dotfiles principali sono portabili anche se questo secondario.

[1]:	https://github.com/magobaol/dotfiles
[4]:	https://bitbucket.org/magobaol/dotfiles-ae/src/master/
[5]:	https://bitbucket.org/magobaol/dotfiles-hs/src/master/

## Troubleshooting

### Errori di esecuzione legati a bash-it
A volte può capitare che la procedura dia errore quando cerca di eseguire i comandi per personalizzare bash-it: in molti casi il problema è legato alla versione di bash che si sta usando.   
Nello script dotbot viene installata la versione più aggiornata di bash, quindi di solito è sufficiente eseguire l'installazione una seconda volta volta, ma a volte può essere necessario chiudere tutte le finestre di iTerm e riprovare.

### Programmi già installati
Se sul computer sono già installati i vari programmi che dotbot cerca di installare, si riceveranno dei warning o degli error da Brew: per aggiornarli è sufficiente seguire le istruzioni.
Non vale la pena tentare di evitare questi errori, visto che di solito sono innocui.
