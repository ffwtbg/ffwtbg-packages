include $(TOPDIR)/rules.mk

PKG_NAME:=ff-wtbg-autoreboot
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ff-wtbg-autoreboot
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=reboot the nodes once a Week
  DEPENDS:=
endef

define Package/ff-wtbg-autoreboot/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ff-wtbg-autoreboot/install
	$(CP) ./files/* $(1)/
endef

define Package/ff-wtbg-autoreboot/postinst
endef

$(eval $(call BuildPackage,ff-wtbg-autoreboot))
