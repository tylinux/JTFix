# JTFix

修复『截图.app』在 macOS Big Sur 上崩溃的问题


## 使用方式

1. 将 `JTFix.framework` 复制到 `/Applications/Jietu.app/Contents/Frameworks` 目录下
2. 将 `Jietu` 复制到 `/Applications/Jietu.app/Contents/MacOS/` 下，覆盖原文件


## 编译

### 编译 JTFix

直接在工程目录下执行 `xcodebuild` 即可，目标产物在 `build/Release/` 下

### 修改 Jietu 可执行文件

1. 编译安装 [insert_dylib](https://github.com/Tyilo/insert_dylib)
2. 将编译出来的 `JTFix.framework` 复制到 `/Applications/Jietu.app/Contents/Frameworks` 目录下
3. 执行 `insert_dylib @rpath/JTFix.framework/Versions/A/JTFix /Applications/Jietu.app/Contents/MacOS/Jietu` 修改可执行文件，执行会提示是否移除签名，选 Y


## 已知问题

1. 截图时的光标移动放大效果不可用