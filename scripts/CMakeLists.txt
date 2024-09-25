# install setupvars

ov_cpack_add_component(${OV_CPACK_COMP_SETUPVARS} HIDDEN)

if(UNIX)
    set(_setupvars_files "${CMAKE_CURRENT_SOURCE_DIR}/setupvars/setupvars.sh")
elseif(WIN32)
    # setupvars.bat
    set(_setupvars_file "setupvars/setupvars.bat")
    set(_setupvars_files "${CMAKE_CURRENT_SOURCE_DIR}/${_setupvars_file}")
endif()