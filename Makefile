CC=g++

CFLAGS=-c -Wall -DDEBUG -g -std=gnu++11

LDFLAGS=

SDIR=src

ODIR=obj

TESTDIR=test

SRCS=$(wildcard $(SDIR)/*.cpp)

TESTS=$(wildcard $(TESTDIR)/*.cpp)

OBJS=$(addprefix $(ODIR)/,$(notdir $(SRCS:.cpp=.o)))

TESTOBJS=$(addprefix $(ODIR)/,$(notdir $(TESTS:.cpp=.o)))

EXE=section_2_3

TEST_EXE=section_2_3_test

.PHONY: all target tests

all: target tests

target: $(EXE)

tests: $(TEST_EXE)

$(EXE): $(OBJS)

      $(CC) $(LDFLAGS) $(OBJS) -o $@

$(TEST_EXE): $(TESTOBJS)

      $(CC) $(LDFLAGS) $(TESTOBJS) -o $@

obj/%.o: src/%.cpp

       $(CC) $(CFLAGS) $< -o $@

obj/%.o: test/%.cpp

       $(CC) $(CFLAGS) $< -o $@

clean:

        rm -rf $(ODIR)/*.o $(TESTDIR)/*.o $(EXE) $(TEST_EXE)