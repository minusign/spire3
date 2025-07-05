#!/bin/bash

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 项目路径
PROJECT_DIR="/Users/aaash/syncthing/slay/spire3/sts_lightspeed"
INCLUDE_DIR="$PROJECT_DIR/include"
BUILD_DIR="$PROJECT_DIR/build"

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}Slay the Spire Lightspeed 编译环境检查${NC}"
echo -e "${BLUE}========================================${NC}"

# 1. 检查项目目录
echo -e "\n${YELLOW}1. 检查项目目录结构${NC}"
if [ -d "$PROJECT_DIR" ]; then
    echo -e "${GREEN}✓ 项目目录存在: $PROJECT_DIR${NC}"
else
    echo -e "${RED}✗ 项目目录不存在: $PROJECT_DIR${NC}"
    exit 1
fi

# 2. 检查 include 目录
echo -e "\n${YELLOW}2. 检查 include 目录${NC}"
if [ -d "$INCLUDE_DIR" ]; then
    echo -e "${GREEN}✓ Include 目录存在: $INCLUDE_DIR${NC}"
else
    echo -e "${RED}✗ Include 目录不存在: $INCLUDE_DIR${NC}"
fi

# 3. 检查具体的头文件
echo -e "\n${YELLOW}3. 检查 fixed_list.h 文件${NC}"
FIXED_LIST_PATH="$INCLUDE_DIR/data_structure/fixed_list.h"
if [ -f "$FIXED_LIST_PATH" ]; then
    echo -e "${GREEN}✓ fixed_list.h 存在: $FIXED_LIST_PATH${NC}"
    echo -e "  文件大小: $(ls -lh "$FIXED_LIST_PATH" | awk '{print $5}')"
    echo -e "  权限: $(ls -l "$FIXED_LIST_PATH" | awk '{print $1}')"
else
    echo -e "${RED}✗ fixed_list.h 不存在: $FIXED_LIST_PATH${NC}"
fi

# 4. 列出 include 目录结构
echo -e "\n${YELLOW}4. Include 目录结构${NC}"
echo "目录树 (前3层):"
tree -L 3 "$INCLUDE_DIR" 2>/dev/null || find "$INCLUDE_DIR" -type d -maxdepth 3 | sort

# 5. 检查 main.cpp
echo -e "\n${YELLOW}5. 检查 main.cpp${NC}"
MAIN_CPP="$PROJECT_DIR/apps/main.cpp"
if [ -f "$MAIN_CPP" ]; then
    echo -e "${GREEN}✓ main.cpp 存在${NC}"
    echo "  Include 语句:"
    grep "^#include" "$MAIN_CPP" | head -10 | sed 's/^/    /'
else
    echo -e "${RED}✗ main.cpp 不存在${NC}"
fi

# 6. 测试编译命令
echo -e "\n${YELLOW}6. 测试编译命令${NC}"

# VSCode 使用的命令（会失败）
echo -e "\n${RED}VSCode 当前使用的命令（缺少 include 路径）:${NC}"
echo "/usr/bin/clang -std=gnu++14 -g main.cpp -o main"

# 正确的编译命令
echo -e "\n${GREEN}正确的编译命令:${NC}"
echo "cd $PROJECT_DIR/apps"
echo "/usr/bin/clang++ -std=c++17 -I$INCLUDE_DIR -I$PROJECT_DIR/json/include -g main.cpp -o main"

# 7. CMake 编译（推荐）
echo -e "\n${YELLOW}7. 使用 CMake 编译（推荐）${NC}"
if [ -d "$BUILD_DIR" ]; then
    echo -e "${GREEN}✓ Build 目录存在${NC}"
    echo "命令:"
    echo "  cd $BUILD_DIR"
    echo "  cmake --build . --target main"
else
    echo -e "${YELLOW}Build 目录不存在，需要先配置:${NC}"
    echo "  cd $PROJECT_DIR"
    echo "  mkdir build && cd build"
    echo "  cmake .."
    echo "  cmake --build ."
fi

# 8. 创建 VSCode 任务配置
echo -e "\n${YELLOW}8. VSCode 配置修复${NC}"
echo "创建 .vscode/tasks.json 来正确编译:"

cat << 'EOF'
{
    "version": "2.0.0",
    "tasks": [
        {
            "type": "cppbuild",
            "label": "C/C++: clang++ 生成活动文件",
            "command": "/usr/bin/clang++",
            "args": [
                "-std=c++17",
                "-fcolor-diagnostics",
                "-fansi-escape-codes",
                "-g",
                "-I${workspaceFolder}/include",
                "-I${workspaceFolder}/json/include",
                "-I${workspaceFolder}/json/single_include",
                "-I${workspaceFolder}/pybind11/include",
                "${file}",
                "-o",
                "${fileDirname}/${fileBasenameNoExtension}"
            ],
            "options": {
                "cwd": "${fileDirname}"
            },
            "problemMatcher": ["$gcc"],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "detail": "编译器: /usr/bin/clang++"
        }
    ]
}
EOF

# 9. 快速测试编译
echo -e "\n${YELLOW}9. 快速测试编译${NC}"
echo "执行测试编译..."
cd "$PROJECT_DIR/apps"
if /usr/bin/clang++ -std=c++17 -I"$INCLUDE_DIR" -I"$PROJECT_DIR/json/include" -g main.cpp -o test_main 2>/tmp/compile_error.log; then
    echo -e "${GREEN}✓ 测试编译成功！${NC}"
    rm -f test_main
else
    echo -e "${RED}✗ 测试编译失败${NC}"
    echo "错误信息:"
    cat /tmp/compile_error.log | sed 's/^/  /'
fi

# 10. 总结和建议
echo -e "\n${BLUE}========================================${NC}"
echo -e "${BLUE}总结和建议${NC}"
echo -e "${BLUE}========================================${NC}"

echo -e "\n${YELLOW}建议操作:${NC}"
echo "1. 创建 .vscode/tasks.json 文件（内容见上方）"
echo "2. 使用 CMake 构建系统而不是直接编译单个文件"
echo "3. 在 VSCode 中使用 CMake Tools 扩展"
echo ""
echo -e "${GREEN}CMake 构建命令:${NC}"
echo "  cd $PROJECT_DIR"
echo "  rm -rf build && mkdir build && cd build"
echo "  cmake .. && cmake --build ."