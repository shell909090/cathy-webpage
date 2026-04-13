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
```bash
bundle install           # 安装依赖
bundle exec jekyll serve # 启动本地服务器 http://localhost:4000
```
