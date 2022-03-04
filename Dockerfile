# Imagem base para construção da imagem
FROM python:3.10.2

# python não gerar .pyc
ENV PYTHONDONTWRITEBYTECODE 1

# não armazenar mensagem em buffed
ENV PYTHONUNBUFFERED 1

# define o container de trabalho Docker
WORKDIR /code

# copia o riquirements para a pasta / code
COPY requirements.txt .

# instala as dependências
RUN pip install -r requirements.txt

# tudo que é feito localmente é copiado pra dentro de /code
COPY . .


