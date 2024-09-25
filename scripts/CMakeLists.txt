# install setupvars

if(UNIX)
    # setupvars.sh for UNIX builds
    install(FILES setupvars/setupvars.sh DESTINATION .)
elseif(WIN32)
    # setupvars.bat for Windows builds
    install(FILES setupvars/setupvars.bat DESTINATION .)
endif()