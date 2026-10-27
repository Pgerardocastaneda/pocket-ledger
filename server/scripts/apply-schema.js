// Creates the database tables from db/schema.sql. Run with: npm run db:schema
import { readFile } from "node:fs/promises";
import { pool } from "../src/db.js";

const schema = await readFile(new URL("../db/schema.sql", import.meta.url), "utf8");
await pool.query(schema);
await pool.end();
console.log("Schema applied.");
