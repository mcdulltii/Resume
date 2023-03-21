FILE=google-chrome-stable_current_amd64.deb
SITE=https://dl.google.com/linux/direct/$(FILE)

all: download install clean

download:
	wget $(SITE)

install:
	sudo apt update && sudo apt install -f ./$(FILE) -y

clean:
	$(RM) $(FILE)
