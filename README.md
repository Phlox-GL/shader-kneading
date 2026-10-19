## A playground of shaders based on Phlox(and PIXI.js)

Demo https://r.tiye.me/Phlox-GL/shader-kneading/

- allow input image in kaleidoscope https://r.tiye.me/Phlox-GL/shader-kneading/?image=input

### Usage

```bash
caps --ci
yarn install --immutable
yarn build
yarn dev
```

`yarn dev` 先按默认 JS 入口编译，再启动 Vite。实时修改 Calcit 时另开终端运行 `yarn watch`。`yarn build` 只编译一次。

### Resource

候选使用配套 Calcit / `@calcit/procs` 0.30.1-alpha.5、Node.js 24、Yarn 4.18.0 与 Vite。正式 0.30.1 安装产物与验收尚未建立。源码只维护 `calcit.cirru` / `deps.cirru`；snapshot 必须通过 Calcit CLI 编辑。

九个演示页签保持原 shader / 三维投影公式与控制范围；组件返回 `PhloxElement`，控件状态使用字段明确的 Struct，坐标为 `List<Number>`。单 Enum dispatch 检查载荷后构造 nominal Op，ID/时间为 String/Number。开放 store/控件树保留 `Map<Tag, Dynamic>`，不宣称零类型债务。Wind Ring 的指针事件计数补初始化 `:t 0`；原先第一次递增未定义字段。

图片输入与 Josefin Sans 加载由 `assets/browser.mjs` 提供真实宿主接口；默认 bricks 纹理由 Vite 打包生成 CDN URL，仍支持用户图片、image=input、移动控制和原8ms控制循环。前端生产路径为 `https://cos-sh.tiye.me/Phlox-GL/shader-kneading/`，Vite base 与 COS prefix 一致。main push 使用 COS action v1.2.0 的 public-base-url 内置 verify；部署任务排队执行，上传前检查提交仍是当前 main，过期提交同时跳过 COS 和服务器同步。PR 只检查和构建，不读取部署 secrets。原服务器 `dist/*` 与 rsync destination 保留，生成HTML使用COS前端URL。

CI 使用严格依赖解析、全定义、完整 strict、附着状态回归与编译构建。本轮候选升级正式 Phlox 0.7.15 / TouchControl 0.0.31，迁移 watch API、imports、Unit 返回值与五个状态结构匹配；Kaleidoscope/Hyper Lens 的坐标和数值回调使用实际解码。字体宿主适配器按 Calcit 零参回调合同调用；首次绘制等待 bricks 纹理就绪，图片输入通过 Texture.fromURL 加载成功后主动重绘，不依赖后续用户操作。

全定义检查 239/239、完整 strict、附着状态回归及构建通过。真实 IAB 已逐页检查九个演示，操作 Kaleidoscope/Hyper Lens 的坐标与数值、Wind Ring 指针和 image=input 合成图片输入；刷新恢复默认资源，无 error/warn。部分静态文字在切页后消失、刷新恢复，对应 Phlox-GL/phlox#71 的未决观察，不宣称渲染问题已完全解决。独立依赖解析以 CI 为准，未执行本地 Caps；移动端双触点仍未验收。

for Kaleidoscepe:

- background image https://www.pinterest.com/pin/5981411997407646/
- bg alternative https://www.pinterest.com/pin/255860822571687971/

### Workflow

https://github.com/Phlox-GL/phlox-workflow

### License

MIT
