....


## Mysql - with init

db helper script
```
db() {
    declare set=${1:-set3}
docker run -d -e MYSQL_ROOT_PASSWORD=secret  -v $PWD/sql/$set:/docker-entrypoint-initdb.d mysql
}
```

helper function
```
list() {
    declare set=${1:-set3}
    docker exec -it "$(docker ps -ql)" mysql --password=secret mysql -e "select * from person;"
}
```
