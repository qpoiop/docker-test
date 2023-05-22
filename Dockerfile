# Base image
FROM node:16.14.0

# 앱 디렉토리 생성 및 작업 디렉토리로 설정
WORKDIR /usr/src/app

# 앱 의존성 설치
COPY package.json yarn.lock ./
RUN yarn install

# 앱 소스 코드 복사
COPY . .

# 앱 빌드
RUN yarn build

# 앱 실행
CMD [ "yarn", "start" ]