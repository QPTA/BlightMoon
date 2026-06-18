# BlightMoon

## Run with Docker

### 1. Tạo file `.env` tại thư mục gốc của project

```env
SPRING_DATASOURCE_URL=jdbc:mariadb://db:3306/MOONBLIGHT
SPRING_DATASOURCE_USERNAME=root
SPRING_DATASOURCE_PASSWORD=YOUR_PASSWORD

MAIL_USERNAME=
MAIL_PASSWORD=
```

### 2. Chạy ứng dụng

```bash
docker compose up --build
```

### 3. Truy cập ứng dụng

```text
http://localhost:8080
```

## Database

Dữ liệu được lưu bằng Docker Volume nên sẽ không bị mất khi container được tạo lại.

### Export Database

```bash
docker exec moonblight-db \
mariadb-dump -u root -p MOONBLIGHT > moonblight.sql
```

### Import Database

```bash
docker exec -i moonblight-db \
mariadb -u root -p MOONBLIGHT < moonblight.sql
```
