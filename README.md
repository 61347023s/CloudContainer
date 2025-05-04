
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
docker pull ethanlin/2025cloud:v1
```

### 2️⃣ 執行容器

```bash
docker run -p 5000:5000 ethanlin/2025cloud:v1
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
docker tag my-flask-app ethanlin/2025cloud:v1
docker push ethanlin/2025cloud:v1
```

---

## 📌 備註

- 作者：Ethan Lin  
- Docker Hub Repository：[https://hub.docker.com/repository/docker/ethanlin/2025cloud](https://hub.docker.com/repository/docker/ethanlin/2025cloud)
