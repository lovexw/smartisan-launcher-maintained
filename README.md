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

## 目录

- [基线版本](#基线版本)
- [下载与安装](#下载与安装)
- [相比原版的额外功能](#相比原版的额外功能)
- [已知限制](#已知限制)
- [权限说明](#权限说明)
- [兼容性与可用性修复](#兼容性与可用性修复)
- [本地构建](#本地构建)
- [仓库结构](#仓库结构)
- [相关项目](#相关项目)
- [免责声明](#免责声明)

## 基线版本

本项目以锤子官方公开发布的最后一个锤子桌面 APK 作为维护基线.

| 字段 | 值 |
| --- | --- |
| 包名 | `com.smartisanos.home` |
| 版本名 | `1.5.1` |
| 版本号 | `27` |
| `minSdkVersion` | `19` |
| `targetSdkVersion` | `28` (维护版从原版 19 升级) |
| 基线 APK SHA-256 | `9f3470ecfb46e4596225b6ffad8cf66c785e51a9e6161208120199dba2b74177` |

## 下载与安装

- 推荐直接前往 [Releases](https://github.com/rianlu/smartisan-launcher-maintained/releases) 页面下载已签名 APK
- 最新版本: [Latest Release](https://github.com/rianlu/smartisan-launcher-maintained/releases/latest)
- 提交问题: <https://github.com/rianlu/smartisan-launcher-maintained/issues/new/choose>

> 维护版保持原包名 `com.smartisanos.home`. 因为维护版与原版签名不同, **首次安装前必须先卸载原版锤子桌面**. 此后只要一直使用同一把维护版签名, 即可在维护版之间覆盖升级.

### 默认桌面设置提示

- 通用路径: 系统设置 → 应用 → 默认应用 → 主屏幕应用 / 桌面应用 → 选择锤子桌面
- vivo / OriginOS: 如果设置默认桌面后按 Home 键仍回到系统桌面, 需要先在系统设置里搜索"更换系统桌面", 打开"允许更换桌面", 关闭"点击主屏幕锁定系统桌面", 然后再重新设置默认桌面 (issue #56)

## 相比原版的额外功能

下面是维护版相比锤子原版桌面新增的能力, 主要让旧锤子桌面在新系统、非锤子手机上也能用得顺手.

### 桌面交互

- **桌面空白处下拉打开通知栏**: 在桌面没有图标的位置单指下拉, 直接展开系统通知栏, 不需要辅助服务. 不同手机品牌的 ROM 兼容性可能略有差异
- **关闭应用图标上的消息红点**: 部分非锤子手机上, 应用图标右上角的小红点出现后不会自动消失, 体验不好. 维护版默认关闭这个功能
- **解锁 3 种隐藏的桌面翻页动画**: 设置 → 桌面翻页动画里, 在原版的 4 种基础上多出 3 种 (旋转图标 / 拆分图标 / 聚合图标), 共 7 种可选

### 图标包

- **正确支持第三方图标包**: 完整兼容标准 `appfilter.xml` 协议, Stone Plus、Flyme 9 等常见图标包都能识别和切换. 修复了原版在小米等机型上"用了图标包后电话和短信变成同一个图标"的 bug
- **新版 Android 上正常发现图标包**: Android 11 之后系统加了应用可见性限制, 原版桌面会列不出已安装的图标包. 维护版已适配, 无需 `QUERY_ALL_PACKAGES` 敏感权限

### 搜索

- **支持搜索分身 / 双开应用**: 搜索结果除了主应用, 还会补充显示带"(分身)"标记的分身实例, 点击直接打开对应分身
- **搜索默认键盘可选**: 桌面设置中可选择进入搜索时默认弹出 T9 键盘或系统输入法键盘
- **联系人搜索按需授权**: 第一次进入搜索页时再申请联系人权限, 拒绝授权也不影响应用搜索

### 主题与图标

- **主题在线源切换**: 锤子原主题服务器已停服, 维护版改从 GitHub 拉取主题, 切换主题、下载主题继续可用
- **改进版图标更稳定**: 减少已下载的改进版图标在桌面刷新后回退成默认图标的概率
- **毛玻璃 / 白雾主题支持自定义壁纸**: 可以从相册导入桌面壁纸, 也可以一键恢复默认 (其他主题继续使用主题内置壁纸)

### 设置与入口

- **天气图标变成天气应用入口**: 锤子原版天气接口已停服, 点击天气图标会优先打开系统天气 App, 找不到再尝试已安装的其他天气 App
- **设为默认桌面正常跳转**: 适配新版 Android 默认应用设置入口, 点确认按钮能正常进入设置页
- **调整图标大小后回到桌面**: 调整完图标大小确认后直接回到桌面, 而不是被系统带回上一级设置菜单
- **后台运行设置引导**: 在桌面设置里提供"关闭电池优化"和"自启动与后台管理"入口, 优先跳转小米 / vivo / OPPO / 华为 / 荣耀 / 魅族 / 联想 / 中兴等常见 ROM 的后台管理页, 失败时回退到系统电池设置或本应用详情页. 用于改善部分 ROM 杀后台后回到桌面冷启动, 以及后台安装/卸载应用后桌面图标不刷新的问题

### 在线更新

- **接入 GitHub Release 自动检查更新**: 回到桌面时静默检查新版本, 替代锤子原版的 OTA 通道

## 已知限制

- **手势导航 / 多任务过渡 / 返回动画割裂**: 这部分属于 ROM 与现代手势框架的耦合限制, 不是本桌面应用单点 Bug. 详见置顶 [#11](https://github.com/rianlu/smartisan-launcher-maintained/issues/11)
- **非锤子 ROM 下应用开关动画仍是系统默认**: 旧桌面动画依赖锤子私有动画引擎, 当前维护版不再继续在旧 smali 主线上叠加大量局部动画补丁; 完整统一替代动画需要更大规模架构改造, 详见 [#27](https://github.com/rianlu/smartisan-launcher-maintained/issues/27)
- **系统后台策略限制**: 普通桌面 APK 不能保证不被 ROM 杀进程. 如果偶发回到桌面显示初始化, 或系统设置里安装/卸载应用后桌面图标不及时刷新, 处理方式: 在桌面设置中分别进入"关闭电池优化"和"自启动与后台管理", 按当前手机系统完成自启动, 后台运行, 耗电管理或后台高耗电等设置

## 权限说明

- `READ_EXTERNAL_STORAGE`: 用于首次启动备份系统壁纸, 主题/壁纸切换时同步系统壁纸, 以及毛玻璃/白雾主题的自定义壁纸导入与恢复默认
- `READ_CONTACTS`: 用于搜索页建立联系人索引并提供联系人搜索结果. 拒绝后不影响应用搜索, 仅联系人搜索受限
- `EXPAND_STATUS_BAR`: 用于桌面空白区域下拉展开系统通知栏
- 关闭电池优化 / 自启动与后台管理: 系统设置项, 非运行时权限弹窗. 用于提升桌面进程保活和后台安装/卸载后图标刷新稳定性. 自启动没有 Android 标准权限, 维护版会优先打开常见厂商管理页, 再回退到系统电池设置或本应用详情页. 普通 APK 只能引导用户进入系统设置, 无法强制绕过 ROM 后台策略

## 兼容性与可用性修复

按时间倒序列出主线已落地的兼容性 / 可用性修复. 每条都有可在仓库提交历史中追溯的根因分析与修复细节.

| 日期 | 类型 | 说明 |
| --- | --- | --- |
| 2026-05-05 | 兼容 | [兼容把 appfilter.xml 放在 assets/ 的图标包](#iconpack-assets), 修复 Arcticons / IconLab 等图标包不显示 |
| 2026-05-05 | 可用性 | [禁用应用图标角标](#disable-badge), 避免第三方 ROM 上角标不消失 |
| 2026-05-05 | 功能 | [解锁桌面翻页动画 4 → 7 种](#unlock-anim) |
| 2026-05-05 | 兼容 | [第三方图标包按 ComponentName 精确匹配](#iconpack-match), 修复电话/短信图标错乱 |
| 2026-05-04 | 可用性 | [调整图标大小流程的闪退与回桌面体验](#icon-size) |
| 2026-05-04 | 兼容 | [收紧默认图标兜底匹配为系统应用包名白名单](#builtin-icon) (issue #36) |
| 2026-05-04 | 闪退 | [修复进入搜索界面 ANR](#search-anr) (`SQLiteOpenHelper` 连接池被错误 close) |
| 2026-04-30 | 兼容 | [Android 11+ 上识别第三方图标包](#iconpack-android11) (issue #31) |
| 2026-04-25 | 功能 | [桌面空白区域下拉展开通知栏](#notification-pulldown) (issue #7) |
| 2026-04-19 | 兼容 | [三星 S24 Ultra / One UI 上开关控件渲染不全](#switch-render) (issue #13) |
| 2026-04-19 | 兼容 | [部分 OEM 的 Android 16 机型安装失败](#install-fail) (issue #14, `MANIFEST_MALFORMED`) |
| 2026-04-11 | 功能 | [搜索补充支持分身 / 双开结果](#dual-search) |
| 2026-04-11 | 兼容 | [改进版图标同步补强](#improved-icon-sync), 减少状态刷新后图标回退 |
| 2026-04-10 | 兼容 | [天气入口改为系统天气拉起](#weather-entry), 旧天气接口已停服 |
| 2026-04-10 | 可用性 | [四指切换主题"加载中"卡死假象](#theme-switch) |
| 2026-04-09 | 兼容 | [Android 16 编辑/排序/拖拽模式连续性](#edit-mode) |
| 2026-04-09 | 兼容 | [设为默认桌面跳转适配](#default-launcher) |
| 2026-04-09 | 兼容 | [搜索联系人运行时权限适配](#contacts-permission) |
| 2026-04-07 | 兼容 | [Android 12 ~ 16 首页上下留缝](#home-gap) |

下面是每条修复的简要描述, 详情可在仓库 git log / smali 注释中追溯.

<a id="iconpack-assets"></a>
### 兼容把 appfilter.xml 放在 assets/ 的图标包 (2026-05-05)

部分按 ADW / Nova 规范打包的图标包 (例如 Arcticons、IconLab) 把 `appfilter.xml` 只放在 `assets/`, 而不放在 `res/xml/`. 旧实现的 `IconPackManager.hasAppFilter` / `loadPackMap` 只用 `Resources.getIdentifier("appfilter", "xml", pkg)` 查 res/xml 资源 ID, 命中失败就直接当作"不是图标包"过滤掉, 切换图标包页面里完全看不到. 修复参考 Nova Launcher 同类实现: res 资源未命中时回退到 `AssetManager.open("appfilter.xml")` + `XmlPullParserFactory.newInstance()` 解析纯文本 XML, 抽出 `closeParser` 统一 `XmlResourceParser` / `InputStream` 的关闭路径.

<a id="disable-badge"></a>
### 禁用应用图标角标 (2026-05-05)

部分非锤子 OEM ROM 上, 桌面应用图标显示消息角标后无法消失. 角标依赖的几路系统广播 (Smartisan / Sony / HTC / 通用 `BADGE_COUNT_UPDATE`) 在不同 ROM 上的语义和清零时机不一致, 锤子原版能正确清零, 第三方 ROM 不一定. 本次直接在渲染端把全局开关 `Constants.SHOW_MESSAGE_FLAG` 钉死为 `false`: 5 个写入路径 (`LauncherSettings` 三处 + `ApplicationProxy` 运行时同步 + `<clinit>` 默认值) 全部强制 `false`, 同时把 `isHideMessageFlag()` getter 改为始终返回 `true`. 不动 4 路角标广播接收器, 后续如需恢复只回滚 sput 逻辑.

<a id="unlock-anim"></a>
### 解锁桌面翻页动画 4 → 7 种 (2026-05-05)

底层动画类 (`PageScrollAnimationList.getScrollAnimation(0-6)`) 和缩略图资源都齐全, 仅以下三处把可选项卡死在 4 个: `arrays.xml` 只列了 4 项 / `Utils.getValueFromPosition` packed-switch 不全 / `Utils.getAnimIndexFromValue` 起点 0x3 反向只支持部分 value. 修复后扩到 7 种, 老 setting value 0/3/4/6 仍命中原位置, 新增 RotateIcon / SplitIcon / GatherIcon 三种可选. 凑 8 项是因为公共背景拼接工具 `setBackgroundForGridItemChooser` 假定 GridView 双列偶数, 改成"凑 8 项最后一项 INVISIBLE"是改动面最小的修法.

<a id="iconpack-match"></a>
### 第三方图标包按 ComponentName 精确匹配 (2026-05-05)

`IconPackManager.loadPackMap` 解析 `appfilter.xml` 时, 对每条 `<item component="ComponentInfo{pkg/cls}"/>` **只取包名部分** 作 key 写入 `sPackageToDrawable`. Stone Plus 的 `appfilter.xml` 里 `com.android.mms` 有 13 条, 最后一条是酷派老机型把电话塞进 mms 包的特例 (drawable=`phone`), 按"包名覆盖"写入后小米短信被渲染成电话图标. 修复方式: 新增 `sComponentToDrawable` 用完整 `pkg/cls` 精确匹配, `sPackageToDrawable` 保留作兜底但改为"第一次见到才写"; `Utils.loadIcon` 同步改为传 `activityInfo.name`.

<a id="icon-size"></a>
### 调整图标大小流程的闪退与回桌面体验 (2026-05-04)

两个问题: (1) `SettingMainActivity.getPageInfo()` 跨线程调用 `MainView.getInstance().getPageView()` 但未做 null 防御, launcher 进程刚启动时渲染线程还没跑到 `loadPage()`, AsyncTask 抢先拿到 null 直接 NPE; (2) `restartLauncherForIconSizeChange()` 顺序为 `finish()` → `killProcess()`, 没显式发 HOME intent, system 按原 task stack 重启时把用户带回 settings 而不是桌面. 修复: 增加双层 null 防御 + 在 finish 与 killProcess 之间插入 HOME intent (`category=HOME` / `flags=NEW_TASK | CLEAR_TOP`).

<a id="builtin-icon"></a>
### 收紧默认图标兜底匹配为系统应用包名白名单 (2026-05-04, issue #36)

`NetworkHandler.getBuiltinRoleIconResId` 原本用 `pkg.toLowerCase().contains("关键词")` 子串匹配 (`dial`/`sms`/`messag`/`contact`/`person`/`calendar`/`clock`/`timer` 等), 缺少边界, 微信/QQ/支付宝等被错误替换为锤子内置图标. 修复改用 `packageName.equals(...)` 精确白名单, 仅保留电话和短信两个角色 (各列出 4 个国内外标准包名), 联系人/日历/时钟三套规则因误伤面大且包名无法区分国内厂商电话+联系人合并应用而删除. 形成"必须是系统应用 AND 包名精确命中 AND 锤子有图标资源"三重门槛.

<a id="search-anr"></a>
### 进入搜索界面 ANR 闪退 (2026-05-04)

数据库竞态导致主线程死锁 5 秒: `SearchMainActivity.onResume()` 在主线程同步 `Future.get(8 SECONDS)` 等待后台 DB 任务, 后台 bulk update 因联系人合并/拆分抛 `SQLiteConstraintException`, **`DataBaseHelper` 在 catch 块里错误调用 `db.close()`** 把 `SQLiteOpenHelper` 维护的连接池整个关闭, 同时刻另一个后台 query 拿到的 db 已被关闭. 修复: 移除 `recreateAppTable / recreateContactTable / bulk insert / bulk update / bulk delete` 共 5 处错误的 `db.close()`, bulk update 改用 `updateWithOnConflict(... CONFLICT_REPLACE)` 从根上消除主键冲突.

<a id="iconpack-android11"></a>
### Android 11+ 上识别第三方图标包 (2026-04-30, issue #31)

Android 11 引入 [Package Visibility](https://developer.android.com/training/package-visibility) 后, 原实现 `getInstalledPackages(0)` 只能返回 launcher 自身. 修复: `getIconPackPackages()` 改用 `queryIntentActivities` 查询 ADW / GO / Nova / Apex 四个行业标准图标包 intent action, 同时在 `AndroidManifest.xml` 添加 `<queries>` 声明; 不依赖 `QUERY_ALL_PACKAGES` 敏感权限.

<a id="notification-pulldown"></a>
### 桌面空白区域下拉展开通知栏 (2026-04-25, issue #7)

旧实现挂在 `onPageScrollEvent()` 滚动结束分支, 锤子触摸链路下很多"空白区下拉"不会进入该分支. 修复: 在 `DragLayer.onInterceptTouchEvent()` 的 move 分支新增独立拦截路径, 直接判定单指下拉手势; 通过反射优先调用 `expandNotificationsPanel`, 失败回退 `expand`. `AndroidManifest.xml` 增加 `EXPAND_STATUS_BAR` 权限.

<a id="switch-render"></a>
### 三星 S24 Ultra / One UI 上开关控件渲染不全 (2026-04-19, issue #13)

`SwitchEx` 自绘时把 mask / bottom (带 `PorterDuff.Mode.SRC_IN` xfermode) / frame / button 合成到 ARGB_8888 offscreen bitmap 再 blit. `targetSdk ≥ 28` 后 Samsung HWUI 在硬件加速路径上对 PorterDuff 预合成的边界处理有偏差. 修复: 构造函数末尾加 `setLayerType(LAYER_TYPE_SOFTWARE, null)`, 强制走软件渲染层. 控件尺寸只有几十像素, 性能差异可忽略.

<a id="install-fail"></a>
### 部分 OEM 的 Android 16 机型安装失败 (2026-04-19, issue #14)

OriginOS 6 / HyperOS 等部分 OEM ROM 把"带 intent-filter 的组件必须显式声明 `android:exported`"这条 Android 12 的检查回移到所有安装场景, 无论 target SDK. 本项目 `targetSdkVersion = 28`, manifest 中 4 处带 intent-filter 的组件 (Launcher / LauncherReceiver / DataDumpReceiver / ReportGenerate) 缺省 `android:exported`, 在这些 ROM 上直接 `INSTALL_PARSE_FAILED_MANIFEST_MALFORMED`. 修复: 全部补 `android:exported="true"`.

<a id="dual-search"></a>
### 搜索补充支持分身 / 双开结果 (2026-04-11)

旧搜索结果数据源只读取主应用索引. 修复: 在应用搜索结果基础上追加分身/双开应用补充查询, 命中到同包分身实例时追加带 `(分身)` 标记的结果项, 点击通过 `LauncherApps` 按对应 `UserHandle` 启动. 当前支持范围只覆盖搜索页, 桌面首页/文件夹/快捷方式区域不在本次范围内.

<a id="improved-icon-sync"></a>
### 改进版图标同步补强 (2026-04-11)

某些已下载的改进版图标在状态刷新、包变化或重新进入桌面后会回退成默认图标, 因为旧接口命中不稳定 + 状态广播未完整触发时 `RedirectIconInfo` 与桌面实际 `iconData` 出现短暂不同步. 修复: 补强"旧接口优先, 新接口按包名兜底"的图标回填链路, 同时补强缓存状态同步触发.

<a id="weather-entry"></a>
### 天气入口改为系统天气拉起 (2026-04-10)

旧天气数据接口已停服, 继续沿用只会直接报错. 修复: 不再把天气图标作为旧天气数据入口, 改为优先拉起系统自带天气应用, 未命中时再尝试已安装的其他天气应用.

<a id="theme-switch"></a>
### 四指切换主题"加载中"卡死假象 (2026-04-10)

主题切换开始后, 旧的延迟"加载中"弹窗任务仍可能迟到触发, 覆盖真实切换状态造成"看似一直在加载"的假象. 修复: 主题切换开始后阻止旧的延迟加载弹窗继续补弹.

<a id="edit-mode"></a>
### Android 16 编辑/排序/拖拽模式连续性 (2026-04-09)

多页预览/排序 dock/长按拖拽等场景下, 多条路径调用 `MainView.hideStatusBar()` 切换 `FLAG_FULLSCREEN` 导致系统状态栏与自绘场景坐标突然脱节, 出现顶部留缝/页面下移/黑条. 修复: 预览缩放统一用 `Constants.pageSizeScale[targetMode].x` 避免 X/Y 非等比缩放; 4 页/9 页预览首行补回 `page_title_height + title_page_spacing` 预留高度; 进入排序模式 / 长按拖拽路径不再调用 `hideStatusBar()`; 排序模式进入完成后补一次 `updateStatusBarText(0)` 恢复顶部选中计数文案.

<a id="default-launcher"></a>
### 设为默认桌面跳转适配 (2026-04-09)

旧桌面依赖较早系统版本的默认桌面设置跳转路径, 新版 Android 下原始 intent 处理链路不再稳定, 确认按钮点击后直接失效. 修复: 补齐新版 Android 下可用的默认桌面设置跳转兼容逻辑, 优先走系统当前仍可用的设置入口.

<a id="contacts-permission"></a>
### 搜索联系人运行时权限适配 (2026-04-09)

旧搜索模块没有适配新版 Android 的运行时权限模型, 在没有联系人权限时仍继续初始化联系人索引与监听. 修复: 搜索页首次进入时先判断是否已授予 `READ_CONTACTS`, 未授权时先发起运行时权限请求再决定是否初始化.

<a id="home-gap"></a>
### Android 12 ~ 16 首页上下留缝 (2026-04-07)

`ApplicationProxy.getScreenSize()` 旧兼容路径在窗口本身已是全高时, 继续按底部系统 inset 缩短 `window_height`, 导致首页/dock/页面动画消费的源头高度偏小, 整页坐标系收缩. 修复: 当 Launcher 窗口已经是全高时, 不再额外扣减底部系统 inset.

## 本地构建

需要 `apktool`, JDK (`keytool`/`jarsigner`), `adb`, Android SDK build-tools (`zipalign`/`apksigner`).

```sh
# 调试构建并安装, 默认安装到所有在线设备的机主用户 (user 0)
sh tools/build_and_install.sh

# 仅安装到指定设备
ANDROID_SERIAL=<设备序列号> sh tools/build_and_install.sh

# 保留应用分身 / 其它 Android 用户中的同包名安装
REMOVE_OTHER_USERS=0 sh tools/build_and_install.sh

# 不指定 Android 用户, 使用 adb install 的默认安装范围
INSTALL_USER=all sh tools/build_and_install.sh

# release 构建 (需要 .local/signing/release.env)
sh tools/build_release.sh
```

构建管线: 编辑 smali / 资源 → `apktool b` → 签名 → `adb install --user 0`. 默认会移除同包名在应用分身 / 其它 Android 用户中的安装状态, 避免多用户机型出现重复入口.

## 仓库结构

- `smali/`: 反编译后的 Dalvik 字节码 (主要代码)
- `res/`: 资源, 布局, 文案, 动画
- `tools/`: 构建, 签名, 安装, 发布脚本
- `themes/`: 主题资产与处理脚本
- `com.smartisanos.home_27.apk`: 当前维护基线 APK

## 相关项目

- 同系列维护项目: [HandShaker Android Maintained](https://github.com/rianlu/handshaker-android-maintained)

## 友情链接

- [LINUX DO](https://linux.do) 社区文化: 真诚, 友善, 团结, 专业, 共建你我引以为荣之社区

## 免责声明

本仓库为非官方维护项目, 与原厂无官方关联.
仅用于学习, 兼容性分析与非商业研究, 详见 [NOTICE.md](NOTICE.md).
