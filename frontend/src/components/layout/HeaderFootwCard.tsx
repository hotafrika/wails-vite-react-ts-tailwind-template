import React from "react";
import {navigation } from "./Sidebar"
import { useLocation } from 'react-router-dom';


export default function Example({ children }) {

    let location = useLocation();


    let title = navigation.find(i=>i.href ===location.pathname)?.name || ''


  return (
    <div className="divide-y divide-gray-200 overflow-hidden rounded-lg bg-white shadow">
      
      <div className="px-4 py-5 sm:px-6">
        {title}
        {/* Content goes here */}
        {/* We use less vertical padding on card headers on desktop than on body sections */}
      </div>
      <div className="px-4 py-4 sm:px-6">
        {children}
        {/* Content goes here */}
        {/* We use less vertical padding on card footers at all sizes than on headers or body sections */}
      </div>
    </div>
  );
}
