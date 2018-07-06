include $(TOPDIR)/rules.mk

# name, version and release number
PKG_NAME:=helloworld
PKG_VERSION:=1.0
PKG_RELEASE:=1

SOURCE_DIR:=/home/osboxes/helloworld
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

# package definitaion, where it will appear in the make menu
define Package/helloworld
	SECTION:=examples
	CATEGORY:=Examples
	TITLE:=Hello, World!
	MENU:=1
endef

# package description
define Package/helloworld/description
	A simple "hello, world!" -application.
endef

# package preparation instructions;create build dir, and copy the source code.
# the last command is necessary to be compatible with patching system
define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) $(SOURCE_DIR)/* $(PKG_BUILD_DIR)/
	$(Build/Patch)
endef

# package build instructions
define Build/Compile
	$(TARGET_CC) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/helloworld.o -c $(PKG_BUILD_DIR)/helloworld.c	
	$(TARGET_CC) $(TARGET_LDFLAGS) -o $(PKG_BUILD_DIR)/$1 $(PKG_BUILD_DIR)/helloworld.o
endef

#package install directions
define Package/helloworld/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/helloworld $(1)/usr/bin
endef

#following command always last
$(eval $(call BuildPackage,helloworld))
