# Criando uma imagem de contêiner com base no Node.JS
FROM node

#Definindo o diretorio de trabalho dentro do contêiner, os comandos do contêiner serão executados dentro desse diretorio
WORKDIR /usr/src/app

# Copia o arquivo local para o diretorio do Contêiner 
COPY package.json .

# executa a  instalação das dependências dentro do contêiner
RUN npm install 

# Copia todos os arquivos do diretorio local para o diretório do contêiner passado anteriormente
COPY . .

# Mostra para o contêiner que ele perimitrá conexões de entrada nessa porta
EXPOSE 3000

# Define o comando para executar ao iniciar o contêiner
CMD ["node", "index.js"]