SRC_DIR = src
OUTPUT = main.pdf
MAIN_FILE = $(SRC_DIR)/main.md

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): $(MAIN_FILE)
	pandoc --filter pandoc-include -o $(OUTPUT) $(MAIN_FILE)

clean:
	rm -f $(OUTPUT)
