## A playground of shaders based on Phlox(and PIXI.js)

Demo https://r.tiye.me/Phlox-GL/shader-kneading/

- allow input image in kaleidoscope https://r.tiye.me/Phlox-GL/shader-kneading/?image=input

### Usage

```bash
caps --strict --ci
yarn install --immutable
yarn build
yarn dev
```

`yarn dev` 先按默认 JS 入口编译，再启动 Vite。实时修改 Calcit 时另开终端运行 `yarn watch`。`yarn build` 只编译一次。

### Resource

使用精确配对的正式 Calcit / `@calcit/procs` 0.32.1、Node.js 24、Yarn 4.18.0 与 Vite。源码只维护 `calcit.cirru` / `deps.cirru`；Snapshot 必须通过 Calcit CLI 编辑。正式模块为 Phlox 0.8.0 / Touch Control 0.0.35，传递 JS FFI 0.2.9 / Pointed Prompt 0.0.24。

九个演示页签保持原 shader / 三维投影公式与控制范围；组件返回 `PhloxElement`，控件状态使用字段明确的 Struct，坐标为 `List<Number>`。单 Enum dispatch 检查载荷后构造 nominal Op，ID/时间为 String/Number。开放 store/控件树保留 `Map<Tag, Dynamic>`，不宣称零类型债务。Wind Ring 的指针事件计数补初始化 `:t 0`；原先第一次递增未定义字段。
页签分支由 `case-default` 迁为 `match`，九个分支和默认提示不变；`hud!` 的页面错误/成功提示保留，不改成 `raise`。PR 使用相对资源 URL 并保存短期原始 dist 供验收，不新增部署权限或重复上传校验脚本。

图片输入与 Josefin Sans 加载由 `assets/browser.mjs` 提供真实宿主接口；默认 bricks 纹理由 Vite 打包生成 CDN URL，仍支持用户图片、image=input、移动控制和原8ms控制循环。前端生产路径为 `https://cos-sh.tiye.me/Phlox-GL/shader-kneading/`，Vite base 与 COS prefix 一致。main push 使用 COS action v1.2.0 的 public-base-url 内置 verify；部署任务排队执行，上传前检查提交仍是当前 main，过期提交同时跳过 COS 和服务器同步。PR 只检查和构建，不读取部署 secrets。原服务器 `dist/*` 与 rsync destination 保留，生成HTML使用COS前端URL。

CI 使用严格依赖解析、全定义、完整 strict、附着状态回归与编译构建。保留已迁移的 watch API、imports、Unit 返回值与五个状态结构匹配；Kaleidoscope/Hyper Lens 的坐标和数值回调使用实际解码。字体宿主适配器按 Calcit 零参回调合同调用；首次绘制等待 bricks 纹理就绪，图片输入通过 Texture.fromURL 加载成功后主动重绘，不依赖后续用户操作。

正式 0.32.1 已通过真实发布依赖图的 Caps strict、全定义 239/239、公开定义 36/36、完整 strict、原状态测试 1/1、不可变安装及 JS/Vite 构建。36 个定义的 schema 和测试元数据未变；4 处旧类型表达式由官方 CLI 转换，4 处运行中的 `wo-log` 恒等包装及 1 处注释内包装通过结构化编辑移除，原表达式、求值顺序和 shader 公式保留。Yarn 使用统一 60 分钟依赖年龄门禁，无包级例外。

本轮实际验收覆盖九个页签、默认 bricks 纹理、Kaleidoscope 参数从 1.0000 拖到 1.4800 后重绘，以及刷新恢复默认页；浏览器 warn/error 为空。图片输入、热重载和移动双触点尚未在这次精确候选上复验；不沿用历史图片验收作为本轮通过证据。Phlox-GL/phlox#71 的文字可见性观察仍保留，不宣称已修复。

for Kaleidoscepe:

- background image https://www.pinterest.com/pin/5981411997407646/
- bg alternative https://www.pinterest.com/pin/255860822571687971/

### Workflow

https://github.com/Phlox-GL/phlox-workflow

`app.main/*store` 已使用 `defref`；名称、初值、类型与 watcher 保留。工作流与部署路径未改，不增加永久测试或校验脚本。

### License

MIT
