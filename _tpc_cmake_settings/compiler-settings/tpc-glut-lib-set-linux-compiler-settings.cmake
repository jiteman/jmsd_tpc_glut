JMSD_CMAKE_CURRENT_FILE_IN( "${JMSD_FOREIGN_COMPONENT_FULL_NAME}-linux-compiler-settings.cmake" )

if ( UNIX )
	# C
	set( ${PROJECT_NAME}_C_FLAGS ${CMAKE_C_FLAGS} )

	## list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-" ) #
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-missing-declarations" ) # no previous declaration for ''
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-unused-parameter" ) # unused parameter ''
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-sign-conversion" ) # conversion to '' from '' may change the sign of the result
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-sign-compare" ) # comparison of integer expressions of different signedness: '' and ' {aka ''}
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-conversion" ) # conversion from '' to '' may change value
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-redundant-decls" ) # redundant redeclaration of 'fgPlatformGetProcAddress'
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-cast-function-type" ) # cast between incompatible function types from '' to ''
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-discarded-qualifiers" ) # initialization discards '' qualifier from pointer target type
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-unused-const-variable" ) # '' defined but not used
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-float-equal" ) # comparing floating point with == or != is unsafe
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-implicit-function-declaration" ) # implicit declaration of function ''; did you mean ''?
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-int-conversion" ) # assignment to '' from '' makes pointer from integer without a cast
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-suggest-attribute=format" ) # function '' might be a candidate for '' format attribute
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-cast-qual" ) # cast from type '' to type '' casts away qualifiers
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-undef" ) # "" is not defined, evaluates to 0
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-unused-function" ) # '' defined but not used
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-shadow" ) # declaration of '' shadows a previous
	list( APPEND ${PROJECT_NAME}_C_FLAGS "-Wno-implicit-fallthrough" ) # this statement may fall through

	string( REPLACE ";" " " ${PROJECT_NAME}_C_FLAGS_STR "${${PROJECT_NAME}_C_FLAGS}" )

	## string( REPLACE "-W" "" ${PROJECT_NAME}_C_FLAGS_STR "${${PROJECT_NAME}_C_FLAGS_STR}" ) #

	set( CMAKE_C_FLAGS ${${PROJECT_NAME}_C_FLAGS_STR} )

	# C++
	##set( ${PROJECT_NAME}_CXX_FLAGS ${CMAKE_CXX_FLAGS} )

	## list( APPEND ${PROJECT_NAME}_CXX_FLAGS "-Wno-" ) #

	##string( REPLACE ";" " " ${PROJECT_NAME}_CXX_FLAGS_STR "${${PROJECT_NAME}_CXX_FLAGS}" )

	## string( REPLACE "-W" "" ${PROJECT_NAME}_CXX_FLAGS_STR "${${PROJECT_NAME}_CXX_FLAGS_STR}" ) #

	##set( CMAKE_CXX_FLAGS ${${PROJECT_NAME}_CXX_FLAGS_STR} )
else()
	message( SEND_ERROR "[JMSD] ${JMSD_FOREIGN_COMPONENT_FULL_NAME} COMPILER SETTINGS: ${JMSD_FOREIGN_COMPONENT_FULL_NAME}-linux-compiler-settings.cmake is included while not on linux" )

endif()

JMSD_CMAKE_CURRENT_FILE_OUT( "${JMSD_FOREIGN_COMPONENT_FULL_NAME}-linux-compiler-settings.cmake" )
