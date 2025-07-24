# Use uma imagem base do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Instala dependências do sistema necessárias para algumas bibliotecas Python
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Copia o arquivo de requirements primeiro (para aproveitar o cache do Docker)
COPY requirements.txt .

# Instala as dependências Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação (exceto arquivos grandes)
COPY app.py .
COPY templates/ ./templates/

# Cria e copia a pasta static
RUN mkdir -p static
COPY static/ ./static/

# Cria o diretório para os arquivos PDF e copia os PDFs
RUN mkdir -p arquivos
COPY arquivos/ ./arquivos/

# Expõe a porta 5000 (porta padrão do Flask)
EXPOSE 5000

# Define variáveis de ambiente para o Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Comando para executar a aplicação
CMD ["python", "app.py"]