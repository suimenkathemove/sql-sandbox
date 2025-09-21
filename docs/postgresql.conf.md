# postgresql.conf

## docker-compose.yml

```yml
    volumes:
      - ./postgresql.conf:/etc/postgresql/postgresql.conf
    command: -c 'config_file=/etc/postgresql/postgresql.conf'
```
