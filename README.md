# vtiger (demo)

## Get started

1. Clone project with `git clone https://github.com/javanile/vtiger-demo.git`
2. Launch command `docker-compose up -d` into `vtiger-demo` directory
3. Visit `http://localhost:8080/` access using username `admin` and password `admin` 

## Use `docker-compose.yml`

Create custom your vtiger environment follow this as example:

```yaml
version: '3'

services:

  vtiger:
    image: javanile/vtiger:7.1.0
    environment:
      - MYSQL_HOST=mysql
      - MYSQL_DATABASE=vtiger
      - MYSQL_ROOT_PASSWORD=secret
    ports:
      - "8080:80"
    volumes:
      - ./:/app
      - ./volumes/logs:/var/www/html/vtiger/logs
      - ./volumes/storage:/var/www/html/vtiger/storage
    links:
      - mysql

  mysql:
    image: mysql:5.5
    environment:
      - MYSQL_DATABASE=vtiger
      - MYSQL_ROOT_PASSWORD=secret
    volumes:
      - mysql:/var/lib/mysql:rw

volumes:
  mysql:
```
