HELLO=hello

${HELLO}: clean hello.c	
	gcc hello.c -o ${HELLO}

clean:
	rm ${HELLO}

.PHONY: clean

