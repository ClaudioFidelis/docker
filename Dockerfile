# define a imagem base
FROM debian:latest

# define o mantenedor da imagem
LABEL maintainer="Claudio Fidelis"

# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y

# Instala o NGINX para testar
RUN apt-get install nginx -y

# Expoe a porta 80
EXPOSE 80

VOLUME /meusarquivos

# Comando para iniciar o NGINX no Container
CMD ["nginx", "-g", "daemon off;"]


#fonte: http://www.macoratti.net/19/02/dock_imgfile1.htm (Macoratti)