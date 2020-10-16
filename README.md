....


## Mysql - with init

set5
```
docker run -d -e MYSQL_ROOT_PASSWORD=secret  -v $PWD/sql/set5:/docker-entrypoint-initdb.d mysql
```

set3
```
docker run -d -e MYSQL_ROOT_PASSWORD=secret  -v $PWD/sql/set3:/docker-entrypoint-initdb.d mysql

```

helper function
```
list() {
    docker exec -it "$(docker ps -ql)" mysql --password=secret mysql -e "select * from person;"
}
```
