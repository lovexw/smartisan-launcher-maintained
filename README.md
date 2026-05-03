<div align="center">
  <img src="./launcher_icon.png" alt="Smartisan Launcher Maintained Logo" width="124" height="124" />

  <h1>Smartisan Launcher Maintained</h1>

  <p><strong>面向新版 Android 的锤子桌面非官方维护版</strong></p>
  <p>基于 <code>apktool</code> 维护 <code>com.smartisanos.home</code> 反编译工程, 让旧版锤子桌面在现代系统上可安装, 可使用, 可持续修复.</p>

  <p>
    <a href="https://github.com/rianlu/smartisan-launcher-maintained/releases/latest">
      <img alt="Release" src="https://img.shields.io/github/v/release/rianlu/smartisan-launcher-maintained?display_name=tag&style=for-the-badge" />
    </a>
    <img alt="Android 16" src="https://img.shields.io/badge/Android-12~16%20Compatible-4CAF50?style=for-the-badge" />
    <img alt="apktool" src="https://img.shields.io/badge/apktool-smali%20Maintained-546E7A?style=for-the-badge" />
    <img alt="Themes" src="https://img.shields.io/badge/Themes-Maintained-1E88E5?style=for-the-badge" />
  </p>
</div>

> [!IMPORTANT]
> 本仓库是锤子桌面的非官方维护项目, 与原厂无官方关联. 仓库内容主要用于个人学习, 兼容性分析和非商业研究. 详细说明见 [NOTICE.md](NOTICE.md).

## 相关项目

- 同系列维护项目: [HandShaker Android Maintained](https://github.com/rianlu/handshaker-android-maintained)

## 使用前先看

- 已知系统限制: [#11](https://github.com/rianlu/smartisan-launcher-maintained/issues/11)
- 最新版本下载: <https://github.com/rianlu/smartisan-launcher-maintained/releases/latest>
- 提交问题: <https://github.com/rianlu/smartisan-launcher-maintained/issues/new/choose>

> 建议先阅读 #11. 很多"手势 / 动画 / ROM 策略"问题属于系统限制, 不是桌面应用单点 Bug.

## 项目亮点

- 适配 Android 12 ~ 16 安装与运行
- 修复新版系统上的沉浸布局, 壁纸同步, 主题兼容与安装链路问题
- 主题下载与识别链路可用, 包含下载状态异常兜底清理
- 毛玻璃 / 白雾主题支持桌面壁纸导入与恢复默认
- 支持第三方图标包, 兼容标准 `appfilter.xml`
- 搜索页支持分身 / 多开结果显示与直接启动
- 设置页提供"切换默认桌面", "隐藏虚拟键", "关闭电池优化"等入口
- 支持桌面空白区域下拉展开通知栏, 但不同 ROM 兼容性存在差异
- 在线更新已对接 GitHub Release, 支持回桌面自动静默检查

## 当前状态

- 当前维护基线为仓库内 `com.smartisanos.home_27.apk`
- 主要兼容修复记录集中在 [docs/compatibility-fixes.md](docs/compatibility-fixes.md)
- 非锤子 ROM 下应用开关动画问题的背景说明见 [#27](https://github.com/rianlu/smartisan-launcher-maintained/issues/27)
- 当前维护版不再继续在旧 `smali` 主线上叠加大量局部动画补丁, 如需完整统一替代动画, 需要接受更大规模架构改造, 见 `docs/feature-migration-roadmap.md`

## 基线版本说明

本项目以锤子官方公开发布的最后一个锤子桌面 APK 作为维护基线.

- 包名: `com.smartisanos.home`
- 版本名: `1.5.1`
- 版本号: `27`
- `minSdkVersion`: `19`
- `targetSdkVersion`: `19`
- 基线 APK SHA-256: `9f3470ecfb46e4596225b6ffad8cf66c785e51a9e6161208120199dba2b74177`

## 权限申请说明

- `READ_EXTERNAL_STORAGE`: 用于首次启动备份系统壁纸, 主题 / 壁纸切换时同步系统壁纸, 以及毛玻璃 / 白雾主题的自定义壁纸导入与恢复默认.
- `READ_CONTACTS`: 用于搜索页建立联系人索引并提供联系人搜索结果. 拒绝后不影响应用搜索, 仅联系人搜索受限.
- 关闭电池优化: 系统设置项, 非运行时权限弹窗. 用于提升后台安装 / 卸载后桌面图标刷新稳定性, 尤其在 MIUI / HyperOS 上.

## 常见问题

- 在系统设置里卸载 / 安装应用后, 桌面图标不及时刷新:
  - 常见于 MIUI / HyperOS 后台策略限制
  - 处理方式: 在桌面设置中开启"关闭电池优化"引导并完成设置
- 关于全面屏手势, 多任务过渡, 返回动画割裂:
  - 请优先查看置顶 [#11](https://github.com/rianlu/smartisan-launcher-maintained/issues/11)
- 关于非锤子 ROM 下应用开关动画仍是系统默认:
  - 请查看 [#27](https://github.com/rianlu/smartisan-launcher-maintained/issues/27)

## 壁纸与主题逻辑

- 毛玻璃 `smartisan_theme_aero` 与白雾 `smartisan_theme_mist`: 显示"桌面壁纸"入口
- 其他主题: 使用主题内置壁纸, 不显示"桌面壁纸"入口

## 下载与使用

### 获取 APK

- 推荐直接前往 [Releases](https://github.com/rianlu/smartisan-launcher-maintained/releases) 页面下载已签名 APK
- 当前最新版本可在 [Latest Release](https://github.com/rianlu/smartisan-launcher-maintained/releases/latest) 获取

### 安装说明

- 维护版保持原包名 `com.smartisanos.home`
- 因为维护版和原版签名不同, 首次安装前必须先卸载原版锤子桌面
- 之后只要一直使用同一把维护版签名, 就可以在维护版之间覆盖升级

## 本地构建

```sh
# 调试构建并安装, 默认安装到所有在线设备
sh tools/build_and_install.sh

# 仅安装到指定设备
ANDROID_SERIAL=<设备序列号> sh tools/build_and_install.sh

# release 构建
sh tools/build_release.sh
```

## 仓库结构

- `smali/`: 主要代码
- `res/`: 资源, 布局, 文案, 动画
- `tools/`: 构建, 签名, 安装, 发布脚本
- `themes/`: 主题资产与处理脚本
- `docs/compatibility-fixes.md`: 兼容修复记录
- `com.smartisanos.home_27.apk`: 当前维护基线 APK

## 友情链接

- [LINUX DO](https://linux.do) 社区文化: 真诚, 友善, 团结, 专业, 共建你我引以为荣之社区.

## 免责声明

本仓库为非官方维护项目, 与原厂无官方关联.  
仅用于学习, 兼容性分析与非商业研究, 详见 [NOTICE.md](NOTICE.md).
