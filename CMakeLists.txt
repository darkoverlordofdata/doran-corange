cmake_minimum_required ( VERSION 3.1 )
#########################################################################################
#
#   Library: Corange
#
#########################################################################################
project ( corange VERSION 0.1.0 )

# list ( APPEND PACKAGE corange )
list ( APPEND PACKAGE sdl2 )
list ( APPEND PACKAGE SDL2_ttf )
list ( APPEND PACKAGE SDL2_mixer )

## Export to the parent scope:

set ( CUSTOM_VAPIS "${CUSTOM_VAPIS};${CMAKE_SOURCE_DIR}/.lib/corange/vapis/corange.vapi" PARENT_SCOPE )
set ( INCLUDES "${INCLUDES}; .lib/corange/include" PARENT_SCOPE)
set ( DEPS_LIBRARIES "${DEPS_LIBRARIES};-lmingw32 -lopengl32 -lSDL2main -lSDL2 -lSDL2_mixer -lSDL2_net -lcorange" PARENT_SCOPE)
set ( PACKAGES "${PACKAGES};${PACKAGE}" PARENT_SCOPE )
set ( VALAC_OPTIONS "${VALAC_OPTIONS};--vapidir=${CMAKE_SOURCE_DIR}/src/vapis" PARENT_SCOPE )
