cmake_minimum_required(VERSION 3.10)

project(
    sts_lightspeed
    VERSION 0.1
    DESCRIPTION "High Performance, rng accurate implementation of Slay the Spire with tools for tree search and ml."
    LANGUAGES CXX
)

# 收集源文件
file(GLOB_RECURSE sts_lightspeed_SOURCES CONFIGURE_DEPENDS "src/*.cpp")

# C++标准和编译选项
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "-Wno-shift-count-overflow -O3")

# 添加子目录
add_subdirectory(json)
add_subdirectory(pybind11)

# ===== Python模块 =====
# 创建Python可导入的模块
pybind11_add_module(
    sts_lightspeed_env  # 建议使用更描述性的名称
    MODULE
    bindings/slaythespire.cpp
    bindings/bindings-util.cpp
    ${sts_lightspeed_SOURCES}
)

# 为Python模块设置包含目录
target_include_directories(sts_lightspeed_env PRIVATE
    include
    json/single_include
    bindings
)

# 链接nlohmann_json（如果需要的话）
target_link_libraries(sts_lightspeed_env PRIVATE nlohmann_json::nlohmann_json)

# 设置Python模块的编译器特定属性
target_compile_definitions(sts_lightspeed_env PRIVATE VERSION_INFO=${EXAMPLE_VERSION_INFO})

# ===== 可执行文件 =====
# 主程序
add_executable(main 
    apps/main.cpp 
    ${sts_lightspeed_SOURCES}
)
target_include_directories(main PRIVATE
    include
    json/include
)
target_link_libraries(main PRIVATE nlohmann_json::nlohmann_json)

# 测试程序
add_executable(test 
    apps/test.cpp 
    ${sts_lightspeed_SOURCES}
)
target_include_directories(test PRIVATE
    include
    json/include
)
target_link_libraries(test PRIVATE nlohmann_json::nlohmann_json)

# 小测试程序
add_executable(small-test 
    apps/small-test.cpp 
    bindings/bindings-util.cpp
    ${sts_lightspeed_SOURCES}
)
target_include_directories(small-test PRIVATE
    include
    json/include
    bindings
)
target_link_libraries(small-test PRIVATE nlohmann_json::nlohmann_json)

# ===== 可选：添加一些有用的属性 =====
# 设置输出目录
set_target_properties(sts_lightspeed_env PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/python_module
)

# 如果你想在构建时自动测试Python模块
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_custom_target(test_python_import
        COMMAND ${PYTHON_EXECUTABLE} -c "import sys; sys.path.insert(0, '${CMAKE_BINARY_DIR}/python_module'); import sts_lightspeed_env; print('Python module import successful!')"
        DEPENDS sts_lightspeed_env
        COMMENT "Testing Python module import"
    )
endif()