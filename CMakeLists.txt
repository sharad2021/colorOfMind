cmake_minimum_required (VERSION 2.6)
PROJECT(emokit)

SET(BUILD_SHARED_LIBS true)

LIST(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake_modules)
SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)

FIND_PACKAGE(FFTW REQUIRED)
FIND_PACKAGE(Mcrypt REQUIRED)
FIND_PACKAGE(HIDAPI REQUIRED)



SET(LIBS ${FFTW_LIBRARIES} ${Mcrypt_LIBS} ${HIDAPI_LIBRARIES})

IF(LINUX)
SET(LIBS ${LIBS} udev)
ELSEIF(APPLE)
SET(LIBS ${LIBS} "-framework IOKit" "-framework CoreFoundation")
ENDIF()


MESSAGE(STATUS ${LIBS})
INCLUDE_DIRECTORIES(${HIDAPI_INCLUDE_DIR} ${Mcrypt_INCLUDE_DIR} ${FFTW_INCLUDE_DIR} ${CMAKE_SOURCE_DIR}/include)


ADD_SUBDIRECTORY(include/oscpack/)
ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(examples/contact)
ADD_SUBDIRECTORY(examples/arduino)
ADD_SUBDIRECTORY(examples/dmx)
ADD_SUBDIRECTORY(examples/study)
ADD_SUBDIRECTORY(examples/readData)
#c++
ADD_SUBDIRECTORY(examples/emotiv)

##########################################
##       PKGCONFIG file                ###
##########################################

IF(LINUX)
IF   (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/emokit.pc.in")
  MESSAGE(STATUS "configured ${CMAKE_CURRENT_SOURCE_DIR}/emokit.pc.in --> ${CMAKE_CURRENT_BINARY_DIR}/emokit.pc")
  CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/emokit.pc.in 
    ${CMAKE_CURRENT_BINARY_DIR}/emokit.pc
    @ONLY )

	INSTALL(FILES
		${CMAKE_CURRENT_BINARY_DIR}/emokit.pc
		DESTINATION lib/pkgconfig
		)
ENDIF(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/emokit.pc.in")
ENDIF()
