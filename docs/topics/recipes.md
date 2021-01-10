# Ricette

## Creare immagini ISO su macOS

La cosa migliore è usare la riga di comando:

```bash
hdiutil makehybrid -iso -joliet -o tablet-andrea-2016-12.iso ~/wip-archive/tablet-andrea
```

Tramite Disk Utility infatti non è possibile creare direttamente delle ISO, ma solo cdr o dmg.