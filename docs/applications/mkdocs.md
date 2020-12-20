# mkdocs
[https://www.mkdocs.org/](https://www.mkdocs.org/)

## Prerequisiti
- Python 3
- pip

## Installazione
```
pip install mkdocs
```

## Uso
Si crea un progetto di documentazione con 

```bash
mkdocs new my-project
cd my-project
```

poi si scrive la documentazione all'interno di `my-project/docs`.

## Configurazione
Moltissime cose possono essere configurate tramite il file `mkdocs.yml` all'interno del progetto.
Maggiori info [https://www.mkdocs.org/user-guide/configuration/](https://www.mkdocs.org/user-guide/configuration/)

## Comandi principali

`mkdocs build`: Genera la documentazione all'interno di `./site`.  
`mkdocs serve`: Come `build` ma in più serve la documentazione su `http://localhost:8080` e resta in watch.  
`mkdocs gh-deploy`: Come `build` e in più invia il compilato su uno specifico branch del repo Github, configurato per essere la sorgente del sito GH Pages di quel repo.