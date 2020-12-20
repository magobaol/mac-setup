# Informazioni su questa documentazione

Volevo un posto in cui raccogliere istruzioni per la configurazione del mac e volevo che fossero facilmente navigabili.  
Tool per creare blog statici come Jekyll non mi sembravano la soluzione migliore, quindi ho provato strumenti per creare documentazione.

I requisiti del tool erano:  

- Che generasse la documentazione a partire da file markdown
- Che la documentazione generata potesse essere navigata localmente come se fosse online
- Che l'eventuale deploy online fosse molto semplice
- Che la documentazione generata avesse un aspetto gradevole

I candidati sono stati [Docsify](https://docsify.js.org/) e [MkDocs](https://www.mkdocs.org/) e alla fine ha vinto quest'ultimo.  
Le informazioni generali sono su [mlkdocs](applications/mkdocs.md), mentre qui di seguito ci sono le configurazioni che ho usato per questo progetto.

## Navigazione in locale

MkDocs di default serve ogni pagina come se fosse una directory, per cui per esempio `http://localhost:8000/applications/1password/` ma questo rendeva la documentazione non navigabile aprendo i file da file system in un browser. 
Impostando il parametro 

```
use_directory_urls: false
``` 

la URL diventa `http://localhost:8000/applications/1password.html` e quindi da file system è raggiungibile tramite `file:///Users/francesco/Dropbox/docs/francesco/vita%20digitale/mac-setup/site/applications/1password.html` e il sito è interamente navigabile tramite browser. 

!!!Nota

    il plugin Gesturify di Chrome non funziona sui file locali, e quindi la navigazione è leggermente meno piacevole, ma non ci posso fare niente.

## Indice delle applicazioni
Mi piaceva l'idea che potessi aggiungere la documentazione di un'applicazione semplicemente creando un nuovo file, senza dover agire su altre parti della documentazione per creare un link.
Quindi con l'uso di un hook di pre-commit (`hooks/pre-commit-hooks/00-generate-applications-index`) e un piccolo script bash (`bin/create-applications-index.sh`) sono riuscito a farlo.

!!!Nota

    Gli hook di Git sono salvati nella directory `hooks` in modo da poter essere versionati e distribuiti nello stesso repo in cui sono utilizzati, ma per fare in modo che Git li usi effettivamente nel repo, vanno "installati", e questo viene fatto tramite `bin/install-git-hooks.sh`

## Navbar
Mi piaceva avere l'elenco di tutte le applicazioni direttamente nella navbar, e se avessi omesso completamente la sezione `nav` nel file `mkdocs.yml` lui avrebbe fatto tutto da solo, però avrebbe messo tutto in ordine alfabetico e io volevo avere il controllo almeno della sezione topics.  

Avevo pensato di creare qualche automazione come quella fatta per creare la pagina indice delle applicazioni, ma poi ho visto che mkdocs, durante la build, elenca le pagine che sono presenti in una directory e non sono invece presenti nella navbar, quindi ho pensato che non valeva la pena sbattersi a creare un'automazione quando mi basta fare un check e un veloce copia/incolla quando aggiungo un'applicazione.

!!!Nota
    
    Dopo aver deciso di mostrare tutte le applicazioni nella navbar, mi rendo conto che la pagina con l'indice delle applicazioni perde un po' di senso, ma ho preferito lasciarla comunque perché tra hook di pre-commit e un po' di bash, lo script può tornare utile in futuro.

## Syntax highlighting

```yml
theme:
  name: readthedocs
  highlightjs: true
  hljs_languages:
    - php
    - yaml
```

Con queste impostazioni si riesce ad avere il syntax highlighting nei fenced blocchi (come quello qui sopra). Non mi *sembra* che quella per php funzioni.

## Blocchi note
I blocchi di testo come le note azzurrine presenti in questa pagina non sono automaticamente a disposizione in MkDocs, ma va abilitata un'estensione speciale per il markdown, come suggerito [qui](https://github.com/mkdocs/mkdocs/issues/1659).

```yaml
markdown_extensions:
  - admonition
```

Mi rendo conto che in questo modo il markdown di questa documentazione diventa un po' meno standard, ma pazienza.

I blocchi disponibili, per quanto ho potuto scoprire, sono:

!!!Nota
    Questo è un blocco generico di info. Dopo i tre `!!!` può essere scritta qualsiasi cosa e verrà utilizzata come titolo del blocco.

!!!warning
    Questo è un blocco giallo, di warning. Non so se in questo caso il titolo può essere personalizzato.

!!!error
    Questo è un blocco rosso, di errore. Non so se in questo caso il titolo può essere personalizzato.