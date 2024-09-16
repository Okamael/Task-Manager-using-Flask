# imagem python
FROM python:3.10-slim

# dEFINIR O DIRETÓRIO 
WORKDIR /app

# Copiar o arquivo requirenebts,txt para o container
COPY requirements.txt .

# Instalar as dependêcias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante do código para o contêiner
COPY . .

# Expôr a porta 5000 para rodar a aplicação Flask
EXPOSE 5000
WORKDIR /app/todo_project/
# Definir a variável de ambiente FLASK_APP
ENV FLASK_APP=run.py

# Comando para rodar a aplição Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]