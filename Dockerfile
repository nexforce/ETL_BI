# Usar uma imagem Python como base
FROM python:3.10-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos do seu projeto para o container
COPY . /app

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando para executar o script principal
CMD ["python", "main.py"]
