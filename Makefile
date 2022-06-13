DIR=docs

all:
	mdbook serve -d $(DIR)

book:
	mdbook build -d $(DIR)
