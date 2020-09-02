include $(TOPDIR)/rules.mk

PKG_NAME:=ff-wtbg-branch-change
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ff-wtbg-branch-change
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=sets snapshot update-branch to experimental
  DEPENDS:=+gluon-core +micrond
endef

define Package/ff-wtbg-branch-change/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ff-wtbg-branch-change/install
	$(CP) ./files/* $(1)/
endef

define Package/ff-wtbg-branch-change/postinst
endef

$(eval $(call BuildPackage,ff-wtbg-branch-change))
