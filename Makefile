SOURCE = ./index.html

POT = en.pot

LANG = pt

create: $(SOURCE)
	html2po -i $(SOURCE) -o $(POT) -P
	cp -n $(POT) $(LANG).po

update: create
	pomerge -i $(POT) -o $(LANG).po -t $(LANG).po

generate:
	po2html -i $(LANG).po -o $(LANG).html -t $(SOURCE)

