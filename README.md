## Instructions

1. Clone this repository:
```bash
git clone https://github.com/gennadis/postgres-tutorial.git
cd postgres-tutorial
```
2. Rename `example.env` file and fill in your secrets
```
POSTGRES_USER=<user>
POSTGRES_PASSWORD=<password>
POSTGRES_DB=<db>
```

3. Build and run docker container with `Postgres`:
```
docker compose -f docker-compose.yaml up -d --build
```

4. Connect to `Postgres` database:
```

```
