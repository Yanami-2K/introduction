# cocofhu home (toy-box edition)

纯静态页面：`index.html` + `assets/style.css` + `assets/main.js`，无依赖、无构建。

- 本地预览：`python3 -m http.server 8000`，打开 http://localhost:8000/ （直接双击 index.html 也能打开，但 Chrome 会拦截 file:// 下的字体，标题会退回系统圆体；用本地服务器或部署后才是 Fredoka）
- 部署 GitHub Pages：把整个目录推到仓库根目录（或 `docs/`），在 Settings → Pages 选对应分支即可。`.nojekyll` 已放好。
- 字体：`assets/fredoka.woff2` 是 Fredoka（SIL OFL 1.1，许可见 `assets/OFL-Fredoka.txt`）的拉丁字符子集；中文用系统字体。
- 角色：おばけねこ 6 款都在 `assets/main.js` 里的 `V` 对象中，用 `<span data-cat="yume|yozora|sakura|nemu|itazura|soda">` 放置。
- `prefers-reduced-motion: reduce` 时跳过开场动画并停掉所有循环动画。
- `preview/` 只是预览图，部署时可删。
