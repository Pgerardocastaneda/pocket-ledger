import { useEffect, useState } from "react";

export default function App() {
  const [status, setStatus] = useState("checking…");

  // Runs once after the first render: asks the API whether everything is connected
  useEffect(() => {
    fetch("/api/health")
      .then((res) => (res.ok ? res.json() : Promise.reject(res.status)))
      .then((data) => setStatus(data.status))
      .catch(() => setStatus("cannot reach the API"));
  }, []);

  return (
    <main>
      <h1>Pocket Ledger</h1>
      <p>API status: {status}</p>
    </main>
  );
}
