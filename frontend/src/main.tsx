import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App'
import './index.css'
import Dashboard from './components/pages/Dashboard/Dashboard'
import Music from './components/pages/Music/Music';
import Practice from './components/pages/Practice/Practice'

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
      {
        path: "/practice",
        element: <Practice />,
      },
      {
        path: "/combinations",
        element: <Combinations />,
      },
      {
        path: "/position",
        element: <Position />,
      },
      {
        path: "/patterns",
        element: <Patterns />,
      },
      {
        path: "/Shines",
        element: <Shines />,    
      },
    ],
  },
]);

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
     <RouterProvider router={router} />
  </React.StrictMode>
)
