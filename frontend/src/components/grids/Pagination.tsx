import { ChevronLeftIcon, ChevronRightIcon } from "@heroicons/react/20/solid";
import React, { useState } from "react";

export default function Pagination({
  pageIndex,
  total = 0,
  pageSize,
  previousPage,
  nextPage,
  setPageIndex,
}: any) {
  console.log("Pagination", pageIndex, total, pageSize);
  const [navigationCount, setNavigationCount] = useState(() => {
    console.log("total", total, "pageSize", pageSize);
    const navigationCount = Math.round(total / pageSize);
    return navigationCount;
  });

  console.log("navigationCount:", navigationCount);
  if (total === 0) {
    return null;
  }
  return (
    <div className="flex items-center justify-between  bg-gray-900 px-4 py-3 sm:px-6">
      <div className="flex flex-1 justify-between sm:hidden">
        <a className="relative inline-flex items-center rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50">
          Previous
        </a>
        <a className="relative ml-3 inline-flex items-center rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50">
          Next
        </a>
      </div>
      <div className="hidden sm:flex sm:flex-1 sm:items-center sm:justify-between">
        <div>
          <p className="text-sm text-gray-600">
            Showing{" "}
            <span className="font-medium">
              {(pageIndex - 1) * pageSize + 1}
            </span>{" "}
            to <span className="font-medium">{pageSize * pageIndex}</span> of{" "}
            <span className="font-medium">{total}</span> results
          </p>
        </div>

        <div>
          <nav
            className="isolate inline-flex -space-x-px rounded-md shadow-sm"
            aria-label="Pagination"
          >
            <a
              onClick={previousPage}
              className="relative inline-flex items-center rounded-l-md   bg-gray-800 px-2 py-2 text-sm font-medium text-gray-500 hover:bg-gray-700 focus:z-20"
            >
              <span className="sr-only">Previous</span>
              <ChevronLeftIcon className="h-5 w-5" aria-hidden="true" />
            </a>

            {new Array(navigationCount).fill(undefined).map((_, idx) => {
              if (idx === pageIndex + 3 && idx < navigationCount - 2) {
                return (
                  <span
                    key={idx}
                    className="relative inline-flex items-center bg-gray-700 px-4 py-2 text-sm font-medium text-gray-700"
                  >
                    ...
                  </span>
                );
              }
              if (idx > pageIndex + 1 && idx < navigationCount - 2) {
                return null;
              }
              return (
                <a
                  aria-current="page"
                  onClick={() => {
                    setPageIndex(idx + 1);
                  }}
                  // className="relative z-10 inline-flex items-center border px-4 py-2 text-sm font-medium  border-indigo-500 bg-indigo-50 text-indigo-600 focus:z-20"
                  className={`relative inline-flex items-center  px-4 py-2 text-sm font-medium focus:z-20 ${
                    pageIndex === idx + 1
                      ? "z-10 bg-indigo-900  text-indigo-400"
                      : "bg-gray-800 border-gray-300 text-gray-500 hover:bg-gray-700"
                  }`}
                >
                  {idx + 1}
                </a>
              );
            })}
            {/* Current: "z-10 bg-indigo-50 border-indigo-500 text-indigo-600", Default: "bg-white border-gray-300 text-gray-500 hover:bg-gray-50" */}
            {/* <a
              aria-current="page"
              className="relative z-10 inline-flex items-center border px-4 py-2 text-sm font-medium  border-indigo-500 bg-indigo-50 text-indigo-600 focus:z-20"
            >
              1
            </a>
            <a className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              2
            </a>
            <a className="relative hidden items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20 md:inline-flex">
              3
            </a>
            <span className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700">
              ...
            </span>
            <a className="relative hidden items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20 md:inline-flex">
              8
            </a>
            <a className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              9
            </a>
            <a className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              10
            </a> */}
            <a
              onClick={nextPage}
              className="relative inline-flex items-center rounded-r-md  bg-gray-800 px-2 py-2 text-sm font-medium text-gray-500 hover:bg-gray-700 focus:z-20"
            >
              <span className="sr-only">Next</span>
              <ChevronRightIcon className="h-5 w-5" aria-hidden="true" />
            </a>
          </nav>
        </div>

        {/* <div>
          <nav
            className="isolate inline-flex -space-x-px rounded-md shadow-sm"
            aria-label="Pagination"
          >
            <a className="relative inline-flex items-center rounded-l-md border border-gray-300 bg-white px-2 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              <span className="sr-only">Previous</span>
              <ChevronLeftIcon className="h-5 w-5" aria-hidden="true" />
            </a> */}
        {/* Current: "z-10 bg-indigo-50 border-indigo-500 text-indigo-600", Default: "bg-white border-gray-300 text-gray-500 hover:bg-gray-50"  */}
        {/* <a
              aria-current="page"
              className="relative z-10 inline-flex items-center border px-4 py-2 text-sm font-medium  border-indigo-500 bg-indigo-50 text-indigo-600 focus:z-20"
            >
              1
            </a>
            <a className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              2
            </a>
            <a className="relative hidden items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20 md:inline-flex">
              3
            </a>
            <span className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700">
              ...
            </span>
            <a className="relative hidden items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20 md:inline-flex">
              8
            </a>
            <a className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              9
            </a>
            <a className="relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              10
            </a>
            <a className="relative inline-flex items-center rounded-r-md border border-gray-300 bg-white px-2 py-2 text-sm font-medium text-gray-500 hover:bg-gray-50 focus:z-20">
              <span className="sr-only">Next</span>
              <ChevronRightIcon className="h-5 w-5" aria-hidden="true" />
            </a>
          </nav>
        </div> */}
      </div>
    </div>
  );
}
