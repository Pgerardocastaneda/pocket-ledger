# Pocket Ledger

A personal finance tracker: accounts, transactions and a monthly spending dashboard. See [DESIGN.md](DESIGN.md) for the data model and API.

## Stack

- `client/`: React, built with Vite
- `server/`: Node.js and Express REST API
- PostgreSQL database

## Run locally

Requires Node.js and PostgreSQL.

```sh
# One-time setup
createdb pocket_ledger
cd server
cp .env.example .env
npm install
npm run db:schema      # creates the tables; re-running it erases all data
cd ../client
npm install
```

Then run each in its own terminal:

```sh
cd server && npm run dev   # API on http://localhost:3000
cd client && npm run dev   # site on the URL Vite prints
```

The site's home page shows "API status: ok" when the client, server and database are all connected.
