{
    "files.associations": {
        "*.h": "cpp",
        "iostream": "cpp",
        "vector": "cpp",
        "string": "cpp",
        "memory": "cpp"
    },
    "cmake.sourceDirectory": "${workspaceFolder}",
    "cmake.buildDirectory": "${workspaceFolder}/build",
    "C_Cpp.default.configurationProvider": "ms-vscode.cmake-tools",
    "C_Cpp.errorSquiggles": "enabled"
}