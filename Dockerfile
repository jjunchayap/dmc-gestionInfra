# Imagen base con Python
FROM python:3.10-slim

# Establecer el directorio de trabajo
WORKDIR /PROYECTO-INFRA

# Copiar el archivo de requisitos y luego instalar dependencias
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código
COPY . .

# Exponer el puerto 5050
EXPOSE 5050

# Comando para ejecutar la app
CMD ["python", "app.py"]
