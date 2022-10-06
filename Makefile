.PHONY: all clean

P = draft-miao-tsv-hpcc
I = draft-miao-tsv-hpcc-info

default : $P.txt $I.txt

$P.txt : $(wildcard *.xml)
	xml2rfc $P.xml
$I.txt : $(wildcard *.xml)
	xml2rfc $I.xml

clean:
	$(RM) $P.txt $I.txt
