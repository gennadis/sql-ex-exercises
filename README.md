## Instructions

1. Clone this repository:
```bash
git clone https://github.com/gennadis/sql-ex-exercises.git
cd sql-ex-exercises
```
2. Rename `example.env` file to `.env` and set your secrets
```
POSTGRES_USER=<user>
POSTGRES_PASSWORD=<password>
```

3. Build and run docker container with `Postgres`:
```
docker compose -f docker-compose.yaml up -d --build
```

4. Connect to `Postgres` database:
- from host:
```
docker compose -f docker-compose.yaml exec postgres psql -U <user>
```
- from client:
```
psql -h <host ip address> -U <user>
```
