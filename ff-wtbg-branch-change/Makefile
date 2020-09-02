include $(TOPDIR)/rules.mk

PKG_NAME:=ff-wtbg-branch-change
PKG_VERSION:=1
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/$(PKG_NAME)
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=sets snapshot update-branch to experimental
  DEPENDS:=+gluon-core +micrond
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Package/$(PKG_NAME)/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
