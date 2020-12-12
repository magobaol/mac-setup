# oh-my-zsh
[https://ohmyz.sh/][1]

**oh-my-zsh** è un framework per **zsh**, ovvero un insieme di tante cose precotte (alias, plugin, temi) che possono essere usati in zsh.

## Installazione
Poiché oh-my-zsh deve essere installato scaricando il repo da github e lanciando qualche comando, ho preferito metterlo come submodule git del repo dotfiles (nella sottocartella `/zsh`), e installarlo durante l'esecuzione di dotbot.

**oh-my-zsh** è come un programma che deve essere lanciato ogni volta che parte la shell, e inoltre è pensato per essere installato senza intermediari, per cui durante la procedura di installazione va a scrivere un bel po’ di cose dentro `.zshrc`.
Ma io voglio tenere lo `.zshrc` libero, quindi ho creato il file `dotfiles/zsh/oh-my-zsh.zsh` che contiene tutta la sbrodolata che **oh-my-zsh** aggiunge di suo allo `zshrc`, e nello `zshrc` ho aggiunto il source a questo file.

## Personalizzazione di oh-my-zsh
Inoltre, **oh-my-zsh** va configurato, modificando il file `oh-my-zsh.zsh`: sarà quindi qui dentro che imposterò tutte le configurazioni che voglio.

## Aggiornamento di oh-my-zsh
Bisogna aggiornare il submodule tirando giù le ultime modifiche, e poi fare commit del repo dotfiles principale

	cd ~/.dotfiles/zsh/oh-my-zsh
	git co master
	git pull
	cd ../..
	git add zsh/oh-my-zsh
	git ci -m "Update zsh/oh-my-zsh submodule"

	Se l'aggiornamento viene fatto su un mac, poi sull'altro bisogna entrare nella directory del submodule e fare `git pull`.

[1]:	https://ohmyz.sh/
