CXX		:= g++
DEBUG	:= -g
CFLAGS	:=	$(DEBUG)
LIBS	:=	-lws2_32

clientserver: client server


client: client.cc
	$(CXX) $(CFLAGS) $< -o $@ $(LIBS)


server: server.cc
	$(CXX) $(CFLAGS) $< -o $@ $(LIBS)
