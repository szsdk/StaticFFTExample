cmake_minimum_required(VERSION 3.9.0)

project(CUSTATICTest)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE RELEASE)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

enable_language(CUDA)
find_package(CUDA REQUIRED)
add_subdirectory(fftlib)
add_executable(CUSTATICSample main.cu)
set_target_properties( CUSTATICSample
    PROPERTIES CUDA_SEPARABLE_COMPILATION ON) # !!!! IMPORTANT !!!!

set(use_callback TRUE) #Switch callback/no_callback
if ( use_callback )
add_compile_definitions(CALLBACK)
target_link_libraries(CUSTATICSample cufft_callbacks)
else ()
target_link_libraries(CUSTATICSample cufft_no_callbacks)
endif ()
