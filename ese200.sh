#!/bin/bash

# Il mio primo script per shell Linux/Unix

echo "Il nome del file eseguibile e' \"$0\""

echo "Il numero di argomenti passati in input e': \"$#\""

echo

if [ $# -gt 0 ]
then
	i=0;
	argomento=0;
	#Un modo diverso per fare il ciclo for consiste nello scrivere solo  for+nome della variabile
	#In tal caso viene considerato automaticamente il valore di "$@", contenente tutti i parametri del comando
	for argomento
	do
		i=$(($i+1))
		echo "L'argomento $i e' : \"$argomento\""
	done
else
	#L'output con l'unico apice non consente di interpretare il contenuto delle variabili	
	#La differenza è analoga a quella che vi è tra la procedure "printf" e la procedura "puts" in C
	echo 'Comando chiamato senza argomenti'
fi

echo
echo

numero=$(($RANDOM % 256))

echo "Il comando ha restiuito il codice d'uscita: \"$numero\""
echo
echo 'Per verificare il codice di uscita:'
echo
echo 'Digitare echo $? se si sta utilizzando un sistema Linux'
echo 'Digitare echo %ERRORLVEL% se si sta utilizzando Windows'

exit $numero

# Amplia lo script
#
# 1) Come ottengo il numero degli argomenti di input specificati?
# 2) Come posso fare un ciclo for che stampi tutti gli argomenti specificati?
# 3) Come posso generare un codice di uscita casuale?