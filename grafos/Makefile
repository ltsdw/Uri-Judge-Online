BUILD_DIR=build
CXXFLAGS=-std=c++17 -O2 -lm -Werror -pedantic-errors -Wall
SRC_DIR=src
SRC := $(shell find $(SRC_DIR) -name "*.cpp")
BIN := $(shell basename --suffix=.cpp $(SRC))
TARGET=

#.PHONY: all


ifeq ($(TARGET),)
all: $(BIN)

$(BIN):
	$(CXX) $(CXXFLAGS) src/$@.cpp -o $(BUILD_DIR)/$@

else

SRC := $(shell find $(SRC_DIR) -name "*$(TARGET)*")
BIN := $(shell basename --suffix=.cpp $(SRC))

all: $(TARGET)

$(TARGET):
	$(CXX) $(CXXFLAGS) src/$(BIN).cpp -o $(BUILD_DIR)/$@

endif
