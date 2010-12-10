radiant-truncate-html-extension
===============================

---

Installation
------------

git clone git://github.com/lunaweb/radiant-truncate-html-extension.git vendor/extensions/truncate_html

---

Utilisation
-----------

	<r:truncate_html>...</r:truncate_html>

options disponibles

* chars : nombre de caractère à afficher
* ellipses : caractères à afficher à la fin de la chaîne retournée dans le cas où du texte a été supprimé
* keep\_words\_intact : tronque ou non le dernier mot

---