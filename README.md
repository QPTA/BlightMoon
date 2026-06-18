## BlightMoon

# Run with Docker

- Tạo file .env tại thư mục gốc của project:

SPRING_DATASOURCE_URL=jdbc:mariadb://db:3306/MOONBLIGHT

SPRING_DATASOURCE_USERNAME=YOUR_USERNAME

SPRING_DATASOURCE_PASSWORD=YOUR_PASSWORD

MAIL_USERNAME=

MAIL_PASSWORD=

- Chạy ứng dụng:

docker compose up --build

- Ứng dụng sẽ chạy tại:

http://localhost:8080
