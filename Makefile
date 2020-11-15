all: doWork.jar callJava
.PHONY: all

doWork.jar:
	jar cf doWork.jar doWork.java
.PHONY: doWork.jar

callJava:
	gomobile bind -target=android -o callJava.aar -classpath=./doWork.jar
.PHONY: callJava

clean:
	rm -fr doWork.jar
	rm -fr callJava.aar
.PHONY: clean
