FROM python:3.9-slim
COPY sort_array.py /app/sort_array.py
WORKDIR /app
CMD ["python", "sort_array.py"]
