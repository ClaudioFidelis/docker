# Informa a partir de qual versão vai criar a imagem
FROM debian:8

# Define versão e descrição da imagem que será criada
LABEL version="1.0" description="Instalar Debian 8 e Nginx e subir Nginx"

# Executa o 3 comandos dentro da imagem do Docker. Esses comandos são executados 
# uma vez no tempo de compilação e gravados na imagem do Docker como uma nova camada
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Expõe a porta 80 como default
EXPOSE 80

# Especifica um comando que sempre será executado quando o conteiner for iniciado
ENTRYPOINT ["/usr/sbin/nginx"]

# Usado como uma maneira de definir argumentos padrão para um 
# comando ENTRYPOINT ou para executar um comando em um conteiner
# "usr/sbin/nginx -g daemon off;	"
CMD ["-g", "daemon off;"]