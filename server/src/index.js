import express from "express";
import { pool } from "./db.js";

const app = express();
app.use(express.json());

// Confirms the server is running and can reach the database
app.get("/api/health", async (req, res) => {
  await pool.query("SELECT 1");
  res.json({ status: "ok" });
});

const port = process.env.PORT ?? 3000;
app.listen(port, () => {
  console.log(`API listening on http://localhost:${port}`);
});
