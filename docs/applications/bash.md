# bash
[https://www.gnu.org/software/bash/][1]

## Installazione
Bash è installata di default su macOS, ma di solito è una versione molto vecchia che Apple non aggiorna, quindi è necessario installarla versione più aggiornata tramite brew.

	brew install bash

Normalmente la installo con i miei dotfiles tramite dotbot.

## Impostare bash come shell di default
Nei miei dotfiles c'è un alias che consente di farlo

	to_bash

che esegue questo comando

	chsh -s /usr/local/bin/bash

La shell deve essere preventivamente stata aggiunta alle shell di sistema, in `/etc/shells`. Anche questa operazione viene eseguita in dotbot.

Notare che la cartella è `/usr/local/bin/bash`, ovvero quella di Brew, non quella di macOS.

Rif: [How to change bash versions on Mac with Homebrew - DEV][2]

## bashrc vs bash_profile_

> bash_profile is executed for login shells, while .bashrc is executed for interactive non-login shells._

Rif: [https://medium.com/@kingnand.90/what-is-the-difference-between-bash-profile-and-bashrc-d4c902ac7308\#][3]

Rif: [https://joshstaiger.org/archives/2005/07/bash\_profile\_vs.html][4]

Di base, per avere sempre le stesse cose da tutte le parti, `bash_profile` include `bashrc`.

[1]:	https://www.gnu.org/software/bash/
[2]:	https://dev.to/emcain/how-to-change-bash-versions-on-mac-with-homebrew-20o3
[3]:	https://medium.com/@kingnand.90/what-is-the-difference-between-bash-profile-and-bashrc-d4c902ac7308#
[4]:	https://joshstaiger.org/archives/2005/07/bash_profile_vs.html