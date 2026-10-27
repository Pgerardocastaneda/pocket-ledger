import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

export default defineConfig({
  plugins: [react()],
  server: {
    // Sends /api requests from the dev site to the Express server,
    // so the browser treats both as one site
    proxy: {
      "/api": "http://localhost:3000",
    },
  },
});
