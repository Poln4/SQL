# SQL — Movies, Songs, & Fiftyville (CS50x)

Queries over provided SQLite databases to answer real questions about movies, music, and an investigation (“Fiftyville”).

## Highlights
- Multi-table JOINs, GROUP BY/HAVING, subqueries
- Data filtering, sorting, and aggregation
- Reasoning from evidence (Fiftyville case)

## Repo Structure
sql-cs50/
├─ movies/
│ └─ queries.sql
├─ songs/
│ └─ queries.sql
└─ fiftyville/
└─ queries.sql

## How to Run
```bash
# Open the database in SQLite (example with movies.db)
sqlite3 movies.db < movies/queries.sql

# Or run a single query interactively
sqlite3 movies.db
sqlite> .mode column
sqlite> .headers on
sqlite> SELECT COUNT(*) FROM movies;
