ifndef IMPORT_IPP
IMPORT_IPP := 1

# Expects libraries in /opt/intel

BLDLIBS += $(BASE)/import/ipp

CPPFLAGS += -isystem /opt/intel/ipp/include -isystem $(BASE)/import/ipp/pub
SLIBS := -L /opt/intel/ipp/lib/intel64 -lippcore -lippi -lipps -lippvm -lippdc $(SLIBS)

ifeq ($(BLDTYPE),debug)
SLIBS := -limportippd $(SLIBS)
else
SLIBS := -limportipp $(SLIBS)
endif

endif
