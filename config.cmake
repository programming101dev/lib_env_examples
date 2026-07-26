set(PROJECT_NAME "p101_env_examples")
set(PROJECT_VERSION "1.0.0")
set(PROJECT_DESCRIPTION "Examples for lib_env (p101 environment/tracing wrappers)")
set(PROJECT_LANGUAGE "C")

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Common compiler flags
set(STANDARD_FLAGS
        -D_POSIX_C_SOURCE=200809L
        -D_XOPEN_SOURCE=700
        -Werror
)

set(DARWIN_STANDARD_FLAGS
        -D_DARWIN_C_SOURCE
)

set(LINUX_STANDARD_FLAGS
)

set(BSD_STANDARD_FLAGS
)

# Define targets — one executable per example. Add a line here and a matching
# <target>/main.c to grow the set.
set(EXECUTABLE_TARGETS
        get_tracer
)

set(LIBRARY_TARGETS "")

# lib_env sits directly on lib_error; no p101_c/libm needed.
set(_P101_ENV_EXAMPLE_LIBS
        p101_error
        p101_env
)

set(get_tracer_SOURCES env/get_tracer/main.c)
set(get_tracer_HEADERS "")
set(get_tracer_LINK_LIBRARIES ${_P101_ENV_EXAMPLE_LIBS})
