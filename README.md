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

`yarn dev` 先生成初始 JS，再并行运行 Calcit watch 和 Vite；任一进程退出时停止另一进程。`yarn build` 仍只编译一次。

### Resource

使用 Calcit / `@calcit/procs` 0.27.0、Node.js 24、Yarn 4.18.0 与 Vite。源码只维护 `calcit.cirru` / `deps.cirru`；snapshot 必须通过 Calcit CLI 编辑。

九个演示页签保持原 shader / 三维投影公式与控制范围；组件返回 `PhloxElement`，控件状态使用字段明确的 Struct，坐标为 `List<Number>`。单 Enum dispatch 检查载荷后构造 nominal Op，ID/时间为 String/Number。开放 store/控件树保留 `Map<Tag, Dynamic>`，不宣称零类型债务。Wind Ring 的指针事件计数补初始化 `:t 0`；原先第一次递增未定义字段。

图片输入与 Josefin Sans 加载由 `assets/browser.mjs` 提供真实宿主接口；默认 bricks 纹理由 Vite 打包生成 CDN URL，仍支持用户图片、image=input、移动控制和原8ms控制循环。前端生产路径为 `https://cos-sh.tiye.me/Phlox-GL/shader-kneading/`，Vite base 与 COS prefix 一致。main push 使用 COS action v1.1.1 的 public-base-url 内置 verify，不添加验证脚本；PR 只检查和构建，不读取部署 secrets。原服务器 `dist/*` 与 rsync destination 保留，生成HTML有意改为COS前端URL。

CI 保留规范/入口严格检查、全部应用公共定义检查和编译构建。Phlox/TouchControl 的 js-ffi 请求冲突仍见 Phlox-GL/phlox#62，不宣称严格 Caps 无冲突或真实 WebGL 交互已验收。

for Kaleidoscepe:

- background image https://www.pinterest.com/pin/5981411997407646/
- bg alternative https://www.pinterest.com/pin/255860822571687971/

### Workflow

https://github.com/Phlox-GL/phlox-workflow

### License

MIT
