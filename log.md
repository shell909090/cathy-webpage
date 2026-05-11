# 上游内容同步日志

## 同步时间

2026-05-11

## 上游来源

- 内容源: `~/GEO/speakup-website-v2/`
- 技术配置源: `~/GEO/speakup-website-v2-config/`

## 文件对应关系

### _posts 与上游内容文件映射

| # | _posts 文件 | 上游文件 | 页面 permalink |
|---|------------|---------|---------------|
| 1 | `_posts/2026-05-01-home.md` | `01-首页.md` | `/` |
| 2 | `_posts/2026-05-02-courses.md` | `02-课程方向.md` | `/courses/` |
| 3 | `_posts/2026-05-03-teachers.md` | `03-外教团队与教学方式.md` | `/teacher-team/` |
| 4 | `_posts/2026-05-04-learning-path.md` | `05-学习路径.md` | `/learning-path/` |
| 5 | `_posts/2026-05-05-faq.md` | `06-FAQ常见问题.md` | `/faq/` |
| 6 | `_posts/2026-05-06-about-speakup.md` | `07-关于SpeakUp-预约试听.md` | `/about-trial/` |
| 7 | `_posts/2026-05-07-philippine-teachers.md` | `04-菲律宾外教优势.md` | `/philippines-teacher-advantages/` |

> 注: `04-菲律宾外教优势.md` 在上游中没有对应 _posts 文章，本次作为新文章新增（编号 7）。

### 技术配置文件

| 项目文件 | 上游来源 | 说明 |
|---------|---------|------|
| `robots.txt` | `robot.txt` / `robots.txt`（内容相同） | 替换域名 `www.your-domain.com` → `cathyagent.shell909090.org` |
| `sitemap.xml` | `sitemap.xml` | 替换域名 |
| `sitemap.txt` | `sitemap.txt` | 替换域名 |
| `llms.txt` | `llms.txt` | 替换域名，移除 `.md` 链接后缀 |

### 配置文件未放入项目

| 上游文件 | 原因 |
|---------|------|
| `robot.txt` | 与 `robots.txt` 内容完全相同，标准命名为 `robots.txt` |

## domain 占位符替换

所有文件中的 `https://www.your-domain.com` 已替换为 `https://cathyagent.shell909090.org`。

## _config.yml 修改

- `exclude` 列表新增 `log.md`，避免 Jekyll 将其作为内容输出。

## 注意事项

1. `_config.yml` 中 `baseurl` 在服务器调试时临时设为 `/blog`，提交前应恢复为 `""`。
2. 上游文件中 `【待补充信息】` 占位符已保留在 _posts 内容中。
3. 上游 SEO Title / Meta Description 已提取为 Jekyll front matter 的 `title` 和 `description` 字段。
4. `llms-full.txt` 在 sitemap 中引用但尚未创建，需要后续补充。
