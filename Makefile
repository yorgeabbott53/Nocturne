include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Nocturne_UIKit
SUBPROJECTS += Nocturne_Preferences
include $(THEOS_MAKE_PATH)/aggregate.mk

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	@install.exec "killall -9 Preferences"
