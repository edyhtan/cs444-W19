make:
	touch joosc
	echo "#!/bin/${0}" > joosc
	echo "" > joosc
	echo "java -cp out Joosc.Joosc "\$$@"" -t > joosc
	chmod u+x joosc
	mkdir out
	javac -d out ./Joosc/*.java ./Joosc/Token/*.java ./Joosc/Scanner/*.java ./Joosc/Parser/*.java ./Joosc/Parser/LRGrammar/*.java ./Joosc/Exceptions/*.java
clean:
	rm -rf out
