add_library(onload SHARED main.cc)
INSTALL(TARGETS onload
        LIBRARY DESTINATION lib
        )