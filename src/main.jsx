import React from "react";
import { createRoot } from "react-dom/client";
import TradingJournal from "./TradingJournal.jsx";

createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <TradingJournal />
  </React.StrictMode>
);
