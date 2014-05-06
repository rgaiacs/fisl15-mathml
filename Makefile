SOURCE = ./index.html

POT = en.pot

LANG = pt

create: $(SOURCE)
	html2po -i $(SOURCE) -o $(POT) -P

start: create
	cp -n $(POT) $(LANG).po

update: create
	msgmerge -o $(LANG).po $(LANG).po $(POT)

generate:
	po2html -i $(LANG).po -o $(LANG).html -t $(SOURCE)

