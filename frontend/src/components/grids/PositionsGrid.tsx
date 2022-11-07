import React, { useState, useEffect } from "react";
import Pagination from "./Pagination";
import {GetPositions } from "../../../wailsjs/go/main/App";

const people = [
  {
    name: "Leslie Alexander",
    email: "leslie.alexander@example.com",
    role: "Co-Founder / CEO",
    imageUrl:
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
  },
  // More people...
];

export default function Example() {

  const [positions, setPositions] = useState([]);

  useEffect(()=>{
    console.log('position')
    let gotPosition = GetPositions(1,100);
    // setPositions(gotPosition)
    console.log('gotPosition', gotPosition);
  },[])

  return (
    <>
      {/* <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <h1 className="text-2xl font-semibold text-gray-900">Positions</h1>
      </div> */}
      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        {people.map((person) => (
          <div
            key={person.email}
            className="relative flex items-center space-x-3 rounded-lg border border-gray-300 bg-white px-6 py-5 shadow-sm focus-within:ring-2 focus-within:ring-indigo-500 focus-within:ring-offset-2 hover:border-gray-400"
          >
            <div className="flex-shrink-0">
              <img
                className="h-10 w-10 rounded-full"
                src={person.imageUrl}
                alt=""
              />
            </div>
            <div className="min-w-0 flex-1">
              <a href="#" className="focus:outline-none">
                <span className="absolute inset-0" aria-hidden="true" />
                <p className="text-sm font-medium text-gray-900">
                  {person.name}
                </p>
                <p className="truncate text-sm text-gray-500">{person.role}</p>
              </a>
            </div>
          </div>
        ))}
      </div>
      <Pagination />

    </>
  );
}
