SRC_DIR = src
OUTPUT = main.pdf
MAIN_FILE = $(SRC_DIR)/main.md
TEMPLATE = eisvogel.latex

all: $(OUTPUT)

$(OUTPUT): $(MAIN_FILE)
	pandoc $(MAIN_FILE) --filter pandoc-include --template=$(TEMPLATE) -o $(OUTPUT)

clean:
	rm -f $(OUTPUT)
