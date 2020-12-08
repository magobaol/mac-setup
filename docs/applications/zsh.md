# zsh
[https://www.zsh.org/][1]

zsh è una shell alternativa a bash per linux.

## Installazione
Tramite Brew

	brew install zsh

Normalmente la installo con i miei dotfiles tramite dotbot.

## Impostare zsh come shell di default
Nei miei dotfiles c'è un alias che consente di farlo

	to_zsh

che esegue questo comando

	chsh -s /usr/local/bin/zsh

La shell deve essere preventivamente stata aggiunta alle shell di sistema, in `/etc/shells`. Anche questa operazione viene eseguita in dotbot.

## Moduli zsh
ZSH può essere arricchito con vari moduli, che spesso possono essere installati in varie modalità, a volte anche come plugin di `oh-my-zsh`
In generale io ho preferito installare i moduli tramite brew e richiamarli dal `.zshrc`, per fare in modo che siano disponibili e caricati anche se dovessi cambiare e lasciare `oh-my-zsh` in favore di qualcos’altro.

### zsh-completions
[https://github.com/zsh-users/zsh-completions][2]
Installa vari autompletamenti (directory, branch git etc) ed è fondamentale per far funzionare `oh-my-zsh`
Mi ha dato parecchi grattacapi finché non ho capito che è fondamentale che ci siano queste due righe in `zshrc`:

	fpath=(/usr/local/share/zsh-completions $fpath)
	autoload -U compinit && compinit

### zsh-syntax-highlighting
[https://github.com/zsh-users/zsh-syntax-highlighting][3]
Rende la linea di comando colorata in base alla sintassi.
È un plugin di zsh che può essere installato in vari modi, io l’ho installato tramite `brew` e poi l’ho abilitato nel file `zshrc`

[1]:	https://www.zsh.org/
[2]:	https://github.com/zsh-users/zsh-completions
[3]:	https://github.com/zsh-users/zsh-syntax-highlighting