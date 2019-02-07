make:
	touch joosc

	echo "#!/bin/${0}" > joosc
	echo "" > joosc
	echo "java -cp out/Joosc Joosc \$$1" > Joosc
	
	rm -r out
	mkdir out
	javac -d out *.java ./Joosc/Token/*.java ./Joosc/Scanner/*.java ./Joosc/Parser/*.java ./Joosc/Parser/LRGrammar/*.java ./Joosc/Exceptions/*.java

run:
	java -cp out/Joosc Joosc ${1}

clean:
	rm -r out

