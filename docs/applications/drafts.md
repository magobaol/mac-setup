# Drafts
[https://getdrafts.com/](https://getdrafts.com/)

## Installazione
Dal Mac App Store

### Clip URL
Per Firefox:
```      

javascript : !function () {

 var e = window,
	 n = document,
	 t = e.getSelection
		? e.getSelection()
		: n.getSelection
			? n.getSelection()
			: n.selection
				? n
					.selection
					.createRange()
				 	.text
			 	: 0,
	o = n.title,
	c = e.location.href,
	l = "";

 l = o + "\\n\\n" + c + "\\n\\n" + "\[" + o + "\](" + c + "):\\n\\n",

 "" != t
 ? (t = (t = (t = "> " + t).replace(/(\\r\\n|\\n+|\\r)/gm, "\\n")).replace(/\\n/g, "\\n> \\n> "), e.location.href = "[drafts5://create?text=](drafts5://create?text=)" + encodeURIComponent(l + t))

 : e.location.href = "[drafts5://create?text=](drafts5://create?text=)" + encodeURIComponent(l)

}();
```

che poi deve essere resa una bookmarklet, magari da qui: [Bookmarklet Creator with Script Includer - Peter Coles](https://mrcoles.com/bookmarklet/)

Per Chrome ho fatto una macro Keyboard Maestro ed è sufficiente chiamare quella (non può funzionare con Firefox perché FF non supporta molte delle cose che servono a KM)