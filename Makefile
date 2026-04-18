install:
	install -Dm755 ./bin/clean-mp3-tags $(HOME)/.local/bin/clean-mp3-tags

uninstall:
	rm -f $(HOME)/.local/bin/clean-mp3-tags