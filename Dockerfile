FROM ubuntu:latest

# OSに必要なアプリケーションをインストール
RUN apt-get update && apt-get install -y \
	vim subversion

# 日本時間に変更
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

WORKDIR /work