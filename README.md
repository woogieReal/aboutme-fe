# 프로젝트 실행 가이드

이 프로젝트는 Docker를 사용하여 쉽게 실행할 수 있습니다. 아래의 단계를 따라 프로젝트를 실행하세요.

## 전제 조건
- Docker가 설치되어 있어야 합니다. Docker 설치 방법은 [Docker 공식문서](https://docs.docker.com/get-docker/)를 참고하세요.

## 빌드 및 실행

1. **Docker 이미지 빌드**

   프로젝트의 루트 디렉토리에서 다음 명령어를 실행하여 Docker 이미지를 빌드합니다:

   ```bash
   docker build -t aboutme-fe .
   ```

   이 명령어는 `aboutme-fe`라는 태그로 Docker 이미지를 빌드합니다.

2. **컨테이너 실행**

   Docker 컨테이너를 실행하려면 다음 명령어를 사용하세요:

   ```bash
   docker run -p 3000:3000 --name aboutme-fe aboutme-fe
   ```

   이 명령어는 `3000` 포트에서 로컬 서버를 실행하고, `aboutme-fe`라는 이름의 컨테이너를 생성합니다. 이제 브라우저에서 `http://localhost:3000`으로 이동하여 애플리케이션을 확인할 수 있습니다.

## 참고 사항

- 컨테이너를 중지하려면:

  ```bash
  docker stop aboutme-fe
  ```

- 컨테이너를 제거하려면:

  ```bash
  docker rm aboutme-fe
  ```

이 문서가 프로젝트 실행에 도움이 되길 바랍니다. 추가적인 정보나 문제가 있는 경우, 관리자에게 문의하세요.
