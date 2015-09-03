default:
	$(MAKE) deps
	$(MAKE) all
deps:
	bash -c "godep restore"
test:
	export PULSE_PLUGIN_PATH=`pwd`/build; bash -c "./scripts/test.sh"
check:
	$(MAKE) test
all:
	bash -c "./scripts/build.sh $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))"