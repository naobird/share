CXX = g++
CXXFLAGS = -g -Wall
HDIRS = include
INCLUDE = -I./$(HDIRS) -I/usr/local/include
LIBRARY = 
LDFLAGS = -L/usr/local/lib
SRCDIR = ./source
SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJDIR = ./obj
OBJECTS = $(addprefix $(OBJDIR)/, $(notdir $(SOURCES:.cpp=.o)))
EXEDIR = ./bin
TARGET = $(EXEDIR)/a.out

$(TARGET): $(OBJECTS) $(LIBRARY)
	-mkdir -p $(EXEDIR)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	-mkdir -p $(OBJDIR)
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $^

.PHONY: all
all: clean $(TARGET)

.PHONY: go
go: 
	$(TARGET)

.PHONY: init
init:
	-mkdir -p $(SRCDIR)
	-touch $(SRCDIR)/main.cpp

.PHONY: clean
clean:
	-rm -rf $(OBJDIR)
	-rm -rf $(EXEDIR)

