# mackup
[https://github.com/lra/mackup][1]

Mackup è una piccola applicazione che consente di sincronizzare le preferenze di diverse applicazioni tra più mac, usando Dropbox o Google Drive.

## Installazione
Normalmente lo installo con i miei dotfiles tramite dotbot.

Per installazione manuale
	brew install mackup

## Configurazione
Visto che è un’applicazione base per il mio setup, ho deciso che la configurazione stessa di **mackup** deve essere salvata con i miei dotfiles, mentre poi le preferenze delle applicazioni che **mackup** tiene sincronizzate sono nella cartella cloud scelta (Dropbox o Google Drive)
La configurazione di **mackup** si trova quindi in `dotfiles/mackup`

Poiché **mackup** di base sincronizza anche i dotfiles di diverse applicazioni che io invece preferisco tenere nel mio repo dotfiles, ho escluso le applicazioni in questioni nel file di configurazione di **mackup** che si trova in `dotfiles/mackup/.mackup.cfg` (e ho escluso la stessa **mackup** visto che la sua configurazione la salvo nei dotfiles)

Ho escluso poi alcune altre applicazioni perché non mi interessa sincronizzarle sul computer di lavoro e/o tirano dentro troppi file (tipo Scrivener, che sincronizza tutti i backup).

Per avere la lista delle applicazioni supportate da mackup (devi usare il nome esatto per escluderle)

	mackup list

Se stai passando da un tuo computer vecchio a uno nuovo, tuttavia, può valere la pena dare attivare la sincronizzazione anche delle applicazioni escluse, per essere certo di avere tutto.
Oppure puoi scrivere delle personalizzazioni di configurazione per applicazioni non supportate (o che vuoi supportare in maniera differente).

## Sincronizzazioni personalizzate
Nella cartella `~/.mackup` crea un file `.cfg` con una configurazione come questa

	[application]
	name = Franz

	[configuration_files]
	Library/Preferences/io.adlk.franz.plist
	Library/Application Support/Franz/settings
	Library/Applocation Support/Preferences

## Suggerimenti

- Ha senso eseguire il restore di mackup su un nuovo computer anche prima di installare le applicazioni (anzi, forse è persino meglio) perché comunque le applicazioni andranno a cercare le informazioni e le troveranno.

- Se le applicazioni sono già installate, meglio chiuderle prima di fare il restore.

- Alcune applicazioni potrebbero non vedere i nuovi file anche se erano chiuse: prova a riavviare il computer.

- Non è possibile fare il backup o il restore di una singola applicazione (per esempio se vuoi aggiungerne una che non c'era la prima volta che hai eseguito il comdando). Mackup è abbastanza intelligente da verificare cosa esiste e chiedere se vuoi sovrascrivere il file oppure no, ma visto che alla fine si tratta solo di creare link simbolici, forse fai prima a farlo a mano.

- Alcune applicazioni non supportano le configurazioni tramite i link simbolici (probablimente OF è una di queste) e quindi c'è poco da fare, bisogna copiare le cose a mano.

- Alcune applicazioni cambiano la posizione dei file di configurazione quando cambiano versione (per esempio IntelliJ IDEA) quindi è necessario creare dei nuovi link simbolici ogni volta.

## Eseguire il backup

Questo di norma va fatto sul computer su cui sono presenti le impostazioni più aggiornate.

	mackup backup

Copia tutti i file delle impostazioni delle applicazioni nella directory specificata in `mackup.cfg` e crea i link simbolici a quelle directory/file.

## Eseguire il restore

Questo va eseguito sul computer su cui si vogliono trasferire le impostazioni

	mackup restore

Elimina i file delle impostazioni e li sostituisce con link simbolici alle cartelle presenti nella directory specificata in `mackup.cfg`


[1]:	https://github.com/lra/mackup
