2017 01 current latest version status  

docker pull setyourmindpark/debian-node:6 (LTS v6.12.3)  
docker pull setyourmindpark/debian-node:7 (LTS v7.10.1)  
docker pull setyourmindpark/debian-node:8 (LTS v8.9.4)  
docker pull setyourmindpark/debian-node:nvm (latest 0.33.8)  

docker run -d --name some-node --tty setyourmindpark/debian-node:6  
docker run -d --name some-node --tty setyourmindpark/debian-node:7  
docker run -d --name some-node --tty setyourmindpark/debian-node:8  
docker run -d --name some-node --tty setyourmindpark/debian-node:nvm  
