all: gonewild lets skypify

GEN :=lets

clean:

lets:
	GEN := lets
	echo "Packing"
	/Applications/Chromium.app/Contents/MacOS/Chromium --pack-extension=$(GEN) --pack-extension-key=$(GEN).pem

	echo "copying to server"
	scp $(GEN).crx northisup.com:/var/www/northisup/images/chrome
	scp update.xml northisup.com:/var/www/northisup/images/chrome
	

skypify:
	GEN := skypify
	echo "Packing"
	/Applications/Chromium.app/Contents/MacOS/Chromium --pack-extension=$(GEN) --pack-extension-key=$(GEN).pem

	echo "copying to server"
	scp $(GEN).crx northisup.com:/var/www/northisup/images/chrome
	scp update.xml northisup.com:/var/www/northisup/images/chrome

generic:
	echo "Packing"
	/Applications/Chromium.app/Contents/MacOS/Chromium --pack-extension=$(GEN) --pack-extension-key=$(GEN).pem

	echo "copying to server"
	scp $(GEN).crx northisup.com:/var/www/northisup/images/chrome
	scp update.xml northisup.com:/var/www/northisup/images/chrome
