CURL=/opt/curl
CURL_INC=-I$(CURL)/include
CURL_LIBS=-L$(CURL)/lib -lcurl
JSON_LIBS=-ljson-c
CFLAGS=-g $(CURL_INC)

all: doad3 make-file-list

doad3: doad3.o
	$(CC) -g -o doad3 doad3.o $(CURL_LIBS) $(JSON_LIBS) -lpthread

make-file-list: make-file-list.cc
	$(CXX) -g -o make-file-list make-file-list.cc
