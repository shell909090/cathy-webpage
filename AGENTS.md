# 项目 Agent 注意事项

## Git 操作
- `git pull` 和 `git push` 需要硬件 token（SSH key / GPG key）进行认证
- 必须人机交互才能完成 git 操作

## Ruby 环境
- Homebrew Ruby 4.0.2 安装路径：`/opt/homebrew/Cellar/ruby/4.0.2/bin/`
- 系统旧版 Ruby (2.6.10)：`/usr/bin/ruby`
- 使用时需将新 Ruby 路径加入 PATH（通过 ~/.bashrc 或创建链接）

## 语言规范
- **Git 和代码**：使用英文
- **文档和内容**：使用中文

## Jekyll 构建与部署
- 详见 `Makefile`，`make` / `make serve` / `make build` 等目标

## 服务器调试

### 开发环境（开发服务器）
- `make serve` 启动，自动叠加 `_config_dev.yml` 覆盖 `_config.yml`
- `baseurl: "/blog/"`，`url: "https://cathyagent.shell909090.org/"`
- nginx 反代 `/blog/` → `127.0.0.1:4000`，页面内部链接可正常工作
- 绑定 `127.0.0.1:4000`，后台常驻（`--detach`）

### 生产环境（GitHub Pages）
- 生产环境两套，一套GitHub Pages无需管理。另一套共享主机
- `make build` 编译静态站点，输出到 `_site/`，用于上传共享主机
- 读取 `_config.yml`：`baseurl: "/"`，`url: "https://cathy.shell909090.org/"`
