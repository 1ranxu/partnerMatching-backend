#指定基础镜像
FROM maven:3.5-jdk-8-alpine as builder
#指定镜像的工作目录
WORKDIR /app
#把需要的本地文件复制到容器镜像/app工作目录中
COPY pom.xml .
COPY src ./src
#用RUN执行maven的打包命令,至此镜像制作完成
RUN mvn package -DskipTests
#之后使用该镜像运行容器时,会自动执行以下命令,启动
CMD ["java","-jar","/app/target/yingluo-backend-0.0.1-SNAPSHOT.jar","--spring.profiles.active=prod"]