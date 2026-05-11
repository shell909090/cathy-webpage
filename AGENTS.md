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

## Jekyll 命令

**本地开发**（Mac）：
```bash
bundle install           # 安装依赖
bundle exec jekyll serve # 默认绑定 localhost:4000，可安全使用
```

**服务器部署**（cathyagent）：
```bash
jekyll serve --host=127.0.0.1 --port 4000 --detach
```
- 服务器上**必须**指定 `--host=127.0.0.1`，禁止 `--host=0.0.0.0`
- UFW 未放行 4000 端口作为末层防护，但不应依赖防火墙兜底

## 服务器调试
- 服务器上 `_config.yml` 的 `baseurl` 被临时改为 `"/blog"`
- 这是为了让 nginx 反代 `/blog/` 路径时页面内部链接（CSS/JS/导航）仍能正常工作
- **该修改仅用于服务器调试，禁止提交到 git**
- 提交前需恢复为：`baseurl: ""`
