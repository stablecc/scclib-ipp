BASE = ../..

CPPFLAGS += -isystem /opt/intel/ipp/include -isystem $(BASE)/import/ipp/pub

NAME = importipp
SRCS = ipp.cc

include $(BASE)/make/sl.mk
