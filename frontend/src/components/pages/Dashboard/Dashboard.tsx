import React from "react";
import { Fragment, useState } from "react";
import "./Dashboard.css";
import MusicPlayer from "../../layout/MusicPlayer.js";

function Dashboard() {
  return (
    <>
      <div className="dashboard">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <h1 className="text-2xl font-semibold text-gray-900">Dashboard</h1>
        </div>
        <div>
          <MusicPlayer />
        </div>
      </div>
    </>
  );
}

export default Dashboard;
