FROM python:3.11-slim
WORKDIR /app
COPY . ./app
RUN pip install --no--chache-dir -r requirements.txt
CMD ["python", "app/main.py"]
EXPOSE 8000

