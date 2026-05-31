FROM python:3.10-slim

WORKDIR /app

# 1. Copy file requirements duluan untuk memanfaatkan cache
COPY requirements.txt .

# 2. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 3. Baru copy seluruh sisa source code aplikasi
COPY . .

EXPOSE 8501
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
