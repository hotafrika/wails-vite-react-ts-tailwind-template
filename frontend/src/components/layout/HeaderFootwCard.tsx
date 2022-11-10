import React from "react";
import { navigation } from "./Sidebar";
import { useLocation } from "react-router-dom";
import { HomeIcon } from "@heroicons/react/20/solid";
import { Link } from "react-router-dom";

export default function Example({ children }) {
  let location = useLocation();

  let page = navigation.find((i) => i.href === location.pathname);
  let title = navigation.find((i) => i.href === location.pathname)?.name || "";

  return (
    <div className="divide-y divide-gray-200 overflow-hidden rounded-lg bg-gray-800 shadow-xl">
      <nav className="flex" aria-label="Breadcrumb">
        <ol
          role="list"
          className="flex space-x-4 rounded-md bg-gray-700 px-6 shadow"
        >
          <li className="flex">
            <div className="flex items-center">
              <Link to="/" className="text-gray-400 hover:text-gray-500">
                <HomeIcon
                  className="h-5 w-5 flex-shrink-0"
                  aria-hidden="true"
                />
                <span className="sr-only">Home</span>
              </Link>
            </div>
          </li>
          <li key={page?.name} className="flex">
            <div className="flex items-center">
              <svg
                className="h-full w-6 flex-shrink-0 text-gray-200"
                viewBox="0 0 24 44"
                preserveAspectRatio="none"
                fill="currentColor"
                xmlns="http://www.w3.org/2000/svg"
                aria-hidden="true"
              >
                <path d="M.293 0l22 22-22 22h1.414l22-22-22-22H.293z" />
              </svg>
              <a
                href={page?.href}
                className="ml-4 text-sm font-medium text-gray-500 hover:text-gray-700"
                aria-current={page?.current ? "page" : undefined}
              >
                {page?.name}
              </a>
            </div>
          </li>
          {/* {pages.map((page) => (
                    <li key={page.name} className="flex">
                        <div className="flex items-center">
                            <svg
                                className="h-full w-6 flex-shrink-0 text-gray-200"
                                viewBox="0 0 24 44"
                                preserveAspectRatio="none"
                                fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg"
                                aria-hidden="true"
                            >
                                <path d="M.293 0l22 22-22 22h1.414l22-22-22-22H.293z" />
                            </svg>
                            <a
                                href={page.href}
                                className="ml-4 text-sm font-medium text-gray-500 hover:text-gray-700"
                                aria-current={page.current ? 'page' : undefined}
                            >
                                {page.name}
                            </a>
                        </div>
                    </li>
                ))} */}
        </ol>
      </nav>

      {/* <div className="px-4 py-5 sm:px-6">
        {title}
      </div> */}

      <div className="px-4 py-4 sm:px-6">
        {children}
        {/* Content goes here */}
        {/* We use less vertical padding on card footers at all sizes than on headers or body sections */}
      </div>
    </div>
  );
}
