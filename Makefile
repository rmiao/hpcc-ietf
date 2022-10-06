.PHONY: all clean dist print

P = draft-miao-tsv-hpcc

default : $P.txt

$P.txt : $(wildcard *.xml)
	xml2rfc $P.xml

clean:
	$(RM) $P.txt
