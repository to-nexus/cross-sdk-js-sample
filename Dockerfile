FROM node:20

# pnpm 세팅
RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

# --- 토큰 전달 받기 ---
ARG NPM_TOKEN

# .npmrc 생성
RUN echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" > .npmrc

# 패키지 파일 복사 및 설치
COPY package.json turbo.json ./
RUN pnpm install

# 전체 복사 및 .env
COPY . .
COPY .env ./packages/cross-sdk-react/.env

WORKDIR /app/packages/cross-sdk-react

# 설치 필요 없으면 생략 가능, 필요하면 유지
RUN pnpm install

# 보안: 빌드 후 .npmrc 제거
RUN rm -f /app/.npmrc

EXPOSE 5173

CMD ["pnpm", "dev", "--", "--host"]
