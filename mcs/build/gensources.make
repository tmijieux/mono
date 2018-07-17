gensources = $(topdir)/build/gensources.exe
$(gensources): $(topdir)/build/gensources.cs
	$(BOOTSTRAP_MCS) -noconfig -debug:portable -r:mscorlib.dll -r:System.dll -r:System.Core.dll -out:$(gensources) $(topdir)/build/gensources.cs

ifdef PROFILE_RUNTIME
GENSOURCES_RUNTIME = $(PROFILE_RUNTIME)
else
GENSOURCES_RUNTIME = MONO_PATH="$(topdir)/class/lib/$(BUILD_TOOLS_PROFILE)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH"  $(RUNTIME)
endif