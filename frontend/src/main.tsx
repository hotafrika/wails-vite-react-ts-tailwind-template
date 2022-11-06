import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App'
import './index.css'
import Dashboard from './components/pages/Dashboard/Dashboard'
import Music from './components/pages/Music/Music';

import {
  createBrowserRouter,
  RouterProvider,
  Route,
} from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    children: [
      {
        path: "/",
        element: <Dashboard />,
      },
      {
        path: "/music",
        element: <Music />,
      },
    ],
  },
]);

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
     <RouterProvider router={router} />
  </React.StrictMode>
)
