## **DEPRECATED**

docker pull setyourmindpark/debian-maven-node:apple [ jdk 1.8.x, maven 3.5.0, node 6.xx ( latest ) ]
docker pull setyourmindpark/debian-maven-node:banana [ jdk 1.8.x,  maven 3.5.0, node 7.xx ( latest ) ]
docker pull setyourmindpark/debian-maven-node:orange [ jdk 1.8.x, maven 3.5.0, node 8.xx ( latest ) ]

docker run -d --name some-container --tty setyourmindpark/debian-maven-node:apple
docker run -d --name some-container --tty setyourmindpark/debian-maven-node:banana
docker run -d --name some-container --tty setyourmindpark/debian-maven-node:orange
