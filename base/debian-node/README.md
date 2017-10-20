docker pull setyourmindpark/debian-node:6
docker pull setyourmindpark/debian-node:7
docker pull setyourmindpark/debian-node:8
docker pull setyourmindpark/debian-node:nvm

docker run -d --name some-node --tty setyourmindpark/debian-node:6
docker run -d --name some-node --tty setyourmindpark/debian-node:7
docker run -d --name some-node --tty setyourmindpark/debian-node:8
docker run -d --name some-node --tty setyourmindpark/debian-node:nvm
