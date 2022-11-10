import "./App.css";
import { Fragment, useState } from "react";
import { Dialog, Transition } from "@headlessui/react";
import { Outlet } from "react-router-dom";
import {
  Bars3Icon,
  CalendarIcon,
  ChartBarIcon,
  FolderIcon,
  HomeIcon,
  InboxIcon,
  UsersIcon,
  XMarkIcon,
} from "@heroicons/react/24/outline";
import Dashboard from "./components/pages/Dashboard/Dashboard";
import React from "react";
import { useLocation } from "react-router-dom";
import Sidebar from "./components/layout/Sidebar";
import HeaderFootwCard from "./components/layout/HeaderFootwCard";
import MusicPlayer from "./components/layout/MusicPlayer";

function classNames(...classes) {
  return classes.filter(Boolean).join(" ");
}

function App() {
  const [sidebarOpen, setSidebarOpen] = useState(false);

  return (
    <>
      <div>
        <Sidebar />
        <div className="flex flex-1 flex-col md:pl-64">
          <div className="sticky top-0 z-10 bg-gray-100 pl-1 pt-1 sm:pl-3 sm:pt-3 md:hidden">
            <button
              type="button"
              className="-ml-0.5 -mt-0.5 inline-flex h-12 w-12 items-center justify-center rounded-md text-gray-500 hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500"
              onClick={() => setSidebarOpen(true)}
            >
              <span className="sr-only">Open sidebar</span>
              <Bars3Icon className="h-6 w-6" aria-hidden="true" />
            </button>
          </div>
          <main className="flex-1 relative">
            <div className="py-6">
              <div className="mx-auto max-w-7xl px-4 sm:px-6 md:px-8">
                <HeaderFootwCard>
                  <Outlet />
                </HeaderFootwCard>
                {/* Replace with your content */}
                {/* <Dashboard /> */}

                {/* <div>



                                </div> */}
                {/* <div>
                                    New Content
                                </div>
       
                                <div className="py-4">
                                    <div className="h-96 rounded-lg border-4 border-dashed border-gray-200" />
                                </div> */}
                {/* /End replace */}
              </div>
            </div>
            <div className="bg-[#f90] fixed bottom-0 left-[16] w-[100%] ">
              <MusicPlayer />
            </div>
          </main>
        </div>
      </div>
    </>
  );
}

export default App;
