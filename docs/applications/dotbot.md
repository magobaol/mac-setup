# dotbot
[https://github.com/anishathalye/dotbot][1]

## Prima installazione
Ho aggiunto dotbot come submodule git nel mio repository dotfiles.
Visto che non devo modificare il progetto dotbot, è stato sufficiente aggiungere il repo originale, senza fare fork.

Come indicato nel [README][2] di Dotbot, ho copiato il file `install` nella mia cartella dotfiles, e poi ho cominciato a configurare il file `install.conf.yaml`

## Installazione durante esecuzione
dotbot viene installato automaticamente quando viene clonato il repository dei dotfiles.

## Aggiornamento di dotbot
Bisogna aggiornare il submodule tirando giù le ultime modifiche, e poi fare commit del repo dotfiles principale

	cd ~/.dotfiles/.dotbot
	git co master
	git pull
	cd ..
	git add .dotbot
	git ci -m "Update .dotbot submodule"

Se l'aggiornamento viene fatto su un mac, poi sull'altro bisogna entrare nella directory del submodule e fare `git pull`.

[1]:	https://github.com/anishathalye/dotbot
[2]:	https://github.com/anishathalye/dotbot/blob/master/README.md "README"
