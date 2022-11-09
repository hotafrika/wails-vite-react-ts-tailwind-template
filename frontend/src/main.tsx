import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import "./index.css";
import Dashboard from "./components/pages/Dashboard/Dashboard";
import Music from "./components/pages/Music/Music";
import Practice from "./components/pages/Practice/Practice";
import Combinations from "./components/grids/CombinationsGrid";
import Position from "./components/grids/PositionsGrid";
import Patterns from "./components/grids/PatternsGrid";
import Shines from "./components/grids/BasicsGrid";

import { createHashRouter, RouterProvider, Route } from "react-router-dom";

const router = createHashRouter([
  {
    path: "/",
    element: <App />,
    children: [
      {
        path: "/",
        element: <Dashboard />,
      },
      {
        path: "music",
        element: <Music />,
      },
      {
        path: "practice",
        element: <Practice />,
      },
      {
        path: "combinations",
        element: <Combinations />,
      },
      {
        path: "position",
        element: <Position />,
      },
      {
        path: "patterns",
        element: <Patterns />,
      },
      {
        path: "shines",
        element: <Shines />,
      },
    ],
  },
]);

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
