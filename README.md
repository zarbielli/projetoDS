# Conexão Doadores 

O Conexão Doadores é uma aplicação web a qual conecta mercados e produtores de alimentos à instituições de 
caridade com intuito de doar alimentos que não se enquadram no padrão estético exigido para comercialização,
sendo descartados por esta razão, mesmo que estejam em perfeito estado para o consumo. Sendo assim, a 
aplicação é uma forma de conectar quem quer doar com quem precisa das doações. Como incentivo às empresas e 
produtores que doam, será formado um ranque dos doadores disponibilizado na página, onde maiores doadores 
ganharão publicidade na página inicial da aplicação.


A aplicação é feita usando um container que foi feito em docker, portanto para executar a aplicação é necessário
montar a imagem, para isso clone o repositório e navege via terminal até a pasta do projeto e use:

* `sudo docker build -t ds_conexao_doadores .`

Após a imagem montada para executar a imagem use:

* `sudo docker run -p 3000:3000 ds_conexao_doadores`

Com isso o App já pode ser acessado via navegador, para isso abra a página 

* localhost:3000







