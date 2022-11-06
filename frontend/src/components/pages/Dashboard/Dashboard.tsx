import React from "react";
import { Fragment, useState } from "react";
import "./Dashboard.css";
import MusicPlayer from "../../layout/MusicPlayer";
import Stats from "../../layout/Stats";
import Practice from "../../layout/SelectPractice";
import Playlist from "../../layout/Playlist";

function Dashboard() {
  return (
    <>
      <div className="dashboard">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <h1 className="text-2xl font-semibold text-gray-900">Dashboard</h1>
        </div>
        <div className="mt-4">
          <div>
            <Stats />
          </div>
          <div className="mt-4">
            <div><Practice /></div>
            <div><Playlist /></div>
          </div>
          <div>
            <MusicPlayer />
          </div>
        </div>
      </div>
    </>
  );
}

export default Dashboard;
