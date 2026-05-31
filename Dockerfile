FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir \
    streamlit torch torchvision \
    numpy>=1.24,<2 \
    Pillow==10.4.0 \
    opencv-python-headless==4.8.1.78 \
    scipy==1.14.1 \
    onnxruntime==1.19.2 \
    pooch==1.9.0 \
    PyMatting==1.1.15 \
    rembg==2.0.57

EXPOSE 8501
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
