VERSION=0.0.1
PKG=deepsea-color-theme-$(VERSION).vsix

$(PKG): package.json themes/deepsea-color-theme.json
	vsce package --no-git-tag-version --no-dependencies $(VERSION)

install:	$(PKG)
	code --install-extension $(PKG)

clean:
	rm *.vsix

.PHONY:	install clean
