# 베이스 이미지로 Node를 사용합니다.
FROM node:20

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# package.json과 package-lock.json을 복사합니다.
COPY package*.json ./

# 의존성을 설치합니다.
RUN npm install

# 앱 소스 코드를 복사합니다.
COPY . .

# 앱을 빌드합니다.
RUN npm run build

# HTTP 서버를 실행합니다.
RUN npm install -g serve
CMD ["serve", "-s", "build"]

# 컨테이너가 노출할 포트를 지정합니다.
EXPOSE 3000