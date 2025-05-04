# 使用官方 Python 基礎映像檔
FROM python:9999-nonexist

# 設定工作目錄
WORKDIR /app

# 複製 app.py 到容器中
COPY app.py .

# 安裝 Flask
RUN pip install flask

# 設定容器啟動後執行的指令
CMD ["python", "app.py"]
