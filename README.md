# 😎 vtiger demo

Unlock explosive growth with the easy to use and customizable CRM  
for your marketing, sales, and customer service teams. Docker Power!

## Get Started

1. Clone project with `git clone https://github.com/javanile/vtiger-demo.git`
2. Launch command `docker-compose up -d` into `vtiger-demo` directory
3. Visit `http://localhost:8080/` login with username `admin` and password `admin` 

## Use Docker Compose

Create your custom vtiger environment, follow this as example:

```yaml
version: '3'

services:

  vtiger:
    image: javanile/vtiger:7.1.0
    environment:
      - VT_SITE_URL=http://localhost:8080
      - MYSQL_HOST=mysql
      - MYSQL_DATABASE=vtiger
      - MYSQL_ROOT_PASSWORD=secret
    ports:
      - "8080:80"
    volumes:
      - ./:/app
      - vtiger:/var/lib/vtiger
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
  vtiger:
```

## Contribute

If you have custom scenario with **vtiger** please place issues on the following page

https://github.com/javanile/vtiger-demo/issues
