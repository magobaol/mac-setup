# macOS defaults

Le varie impostazioni del macOS non sono sincronizzate automaticamente, ma ho creato un file eseguibile in `~./dotfiles/.macos` che raccoglie le varie impostazioni che voglio trovare di default.

Il file è generato da questo [https://mths.be/macos](https://mths.be/macos) e in teoria, ogni volta che cambio qualcosa a livello di configurazione di sistema, dovrei cercare il comando corrispondente e salvarlo in quel file.

In teoria il file `.macos` creato potrebbe essere usato anche per le impostazioni delle applicazioni, visto che molte di queste usano gli stessi metodi di macOS.

Altri riferimenti utili:

- [https://macos-defaults.com/](https://macos-defaults.com/) – Una collezione di macOS defaults con esempi visuali di ciò che vanno a cambiare

- [https://github.com/kevinSuttle/macOS-Defaults/blob/master/REFERENCE.md](https://github.com/kevinSuttle/macOS-Defaults/blob/master/REFERENCE.md) – Documentazione sui vari modi per agire sulle impostazioni del mac e delle applicazioni.

## Configurazioni da fare a mano

- Shortcut per switchare tra finestre della stessa applicazione (`CMD+\`):  
`System Preferences -> Keyboard -> Shortcuts -> Keyboard -> Move focus to next window`

### System preferences
- Display
	- Night Shift
		- Schedule: Sunset to Sunrise
- Users and groups
	- Login options
		- Display login window as: Name and password
- Date and Time
	- Clock
		- Show date and time in menu bar: on
		- Time options: digital
		- Use a 24-hours clock: on
		- Show the day of the week: on
		- Show date: on
- Mission Control
	- Automatically rearrange spaces: off
	- When switching to an application, switch to a Space with open windows for the application: off
	- Group windows by display: on
	- Disaply have separate Spaces: on
	- Hot corners
		- Top left: Application window
		- Top right: Desktop

- Notifications
	- Mail: off
	- Spark: on (turn off in the application, but leave on for PEC)

- Keyboard
	- Keyboard
		- Key repeat: fast
		- Delay until repeast: short
	- Shortcuts
		- Mission control
			- Mission Control: off
			- Application windows: off
			- Switch to desktop 1: ⌃1
			- Switch to desktop 2: ⌃2
			- Switch to desktop 3: ⌃3
			- Switch to desktop 4: ⌃4
		- Spotlight
			- Show spotlight search: ⌥⌘Space
			- Show Finder search window: off 
- Trackpad
	- Point and click
		- Tap to click: on
	- Scroll & zoom
		- Scroll direction: natural

- Accessibility
	- Pointer Control
		- Mouse & Trackpad
			- Trackpad options
				- Enable dragging: on + without drag lock


**Note dell'ultima installazione (2021-04-15)**
C'erano giusto un paio di cose in questo file .macos, che tra l'altro avevo già sistemato a mano. La maggior parte evidentemente non le ho salvate.