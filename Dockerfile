# Используем официальный образ Python
FROM python:3.11

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта в контейнер
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Собираем статические файлы
RUN python manage.py collectstatic --noinput

# Запускаем сервер
CMD ["python", "manage.py", "runserver", "0.0.0.0:8500"]
