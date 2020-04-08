add_library(cufft_callbacks STATIC cufft_callbacks.cu)
target_include_directories(cufft_callbacks PUBLIC ${CMAKE_SOURCE_DIR}/include ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
target_compile_options(cufft_callbacks PRIVATE "-dc") # !!!! IMPORTANT !!!!
target_link_libraries(cufft_callbacks
    ${CUDA_cudart_static_LIBRARY}
    cufft_static
    culibos
)

add_library(cufft_no_callbacks STATIC cufft_no_callbacks.cu)
target_include_directories(cufft_no_callbacks PUBLIC ${CMAKE_SOURCE_DIR}/include ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
target_link_libraries(cufft_no_callbacks
    ${CUDA_LIBRARIES}
    ${CUDA_cudart_LIBRARY}
    cufft
    )
