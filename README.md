
# Flask Hello Docker

這是一個使用 Python Flask 架設的簡單網頁應用，部署於 Docker 上，並上傳至 Docker Hub。

## 📦 專案內容

此應用提供一個基礎的 HTTP 服務，當訪問根目錄 `/` 時會顯示：

```
Hello, Docker!
```

## 📁 專案結構

```
.
├── app.py
└── Dockerfile
```

## 🚀 執行方式

### 1️⃣ 從 Docker Hub 下載 Image

請確保你已安裝好 Docker，然後執行：

```bash
docker pull 61347023s/2025cloud:v1
```

### 2️⃣ 執行容器

```bash
docker run -p 5000:5000 61347023s/2025cloud:v1
```

開啟瀏覽器，進入 [http://localhost:5000](http://localhost:5000)，應會看到：

```
Hello, Docker!
```

---

## 🐳 自行建置 Image（可選）

如果你想自己 build 一次：

### 1️⃣ 建立映像檔

```bash
docker build -t my-flask-app .
```

### 2️⃣ 執行

```bash
docker run -p 5000:5000 my-flask-app
```

---

## 📤 上傳至 Docker Hub（需已登入）

```bash
docker tag my-flask-app 61347023s/2025cloud:v1
docker push 61347023s/2025cloud:v1
```

---

## 🐳 CI/CD 自動化建構 Container Image 說明
本專案已整合 GitHub Actions，在以下情況會自動建構並處理 Docker Container Image：

🔁 自動建構觸發條件
觸發情境	描述
Push 到 main 分支: 代表正式部署版本，會自動 build 並 push image 到 Docker Hub
建立 Pull Request 到 main: 僅進行 build 測試，驗證 Dockerfile 是否正確，但不 push image

🏷️ Docker Image Tag 設計邏輯
Tag	使用情境	說明
latest: 適用於推送至 main 分支時，表示目前主線的穩定版本
prtest: 適用於建立 PR 時自動建構但不推送，用於驗證 Dockerfile 是否能正確建構

🔐 所有推送至 Docker Hub 的操作，皆透過 GitHub Secrets 管理帳號密碼，確保自動化安全性。

📁 GitHub Actions 設定位置
CI/CD 設定檔位於：
bash
複製
編輯
.github/workflows/docker-build.yml
可自行修改以支援多版本建構、測試或部署策略。

## 📌 備註

- 作者：61347023s  
- Docker Hub Repository：[https://hub.docker.com/repository/docker/ethanlin/2025cloud](https://hub.docker.com/repository/docker/61347023s/2025cloud)
