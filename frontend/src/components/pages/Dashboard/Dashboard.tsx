import React from "react";
import { Fragment, useState } from "react";
import "./Dashboard.css";
import MusicPlayer from "../../layout/MusicPlayer.js";

function Dashboard() {
  return (
    <>
      <div className="dashboard">
      

        <div>
          <MusicPlayer />
        </div>
      </div>
    </>
  );
}

export default Dashboard;
