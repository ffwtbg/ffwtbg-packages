include $(TOPDIR)/rules.mk

PKG_NAME:=ff-wtbg-remove_offlinessid
PKG_VERSION:=2

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ff-wtbg-remove_offlinessid
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=removes failed offline ssids
  DEPENDS:=+gluon-core +micrond
endef

define Package/ff-wtbg-remove_offlinessid/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ff-wtbg-remove_offlinessid/install
	$(CP) ./files/* $(1)/
endef

define Package/ff-wtbg-remove_offlinessid/postinst
endef

$(eval $(call BuildPackage,ff-wtbg-remove_offlinessid))
