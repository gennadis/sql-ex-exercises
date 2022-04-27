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
```

3. Build and run docker container with `Postgres`:
```
docker compose -f docker-compose.yaml up -d --build
```

4. Connect to `Postgres` database:
```
docker compose -f docker-compose.yaml exec db psql -U <user>
```
