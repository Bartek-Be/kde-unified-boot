.PHONY: all main clean install uninstall

all: main

main:
	python3 make.py

clean:
	rm -f ./unified-bgrt/images/progress
	rm -f ./unified-bgrt/images/logo.png
	rm -f ./UnifiedSplash/contents/splash/images/image.png

uninstall:
	rm -rf /usr/share/plymouth/themes/unified-bgrt
	plymouth-set-default-theme --reset

install:	
	cp -r ./unified-bgrt /usr/share/plymouth/themes/
	plymouth-set-default-theme --rebuild-initrd unified-bgrt
