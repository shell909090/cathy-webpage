JEKYLL_BIN := $(HOME)/.gem/ruby/3.3.0/bin/jekyll
HOST      := 127.0.0.1
PORT      := 4000

.PHONY: install serve build stop clean restart

## 安装依赖
install:
	bundle install

## 启动开发服务器（baseurl="/blog/"，常驻后台）
serve:
	$(JEKYLL_BIN) serve --host=$(HOST) --port=$(PORT) --detach --config _config.yml,_config_dev.yml

## 编译静态站点（生产配置，baseurl="/"，输出到 _site/）
build:
	$(JEKYLL_BIN) build

## 停止 jekyll 进程
stop:
	@pkill -f "jekyll serve" || true

## 清理构建产物和缓存
clean:
	rm -rf _site .jekyll-cache

## 重启开发服务器
restart: stop serve
