# Use a imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de requisitos e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código do aplicativo
COPY . .

# Exponha a porta em que o aplicativo Flask estará rodando
EXPOSE 8080

# Comando para executar o aplicativo
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]