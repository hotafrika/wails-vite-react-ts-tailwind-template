import React from "react";
import { Fragment, useState } from "react";
import "./Dashboard.css";
import MusicPlayer from "../../layout/MusicPlayer.js";

function Dashboard() {
  return (
    <>
      <div className="dashboard">
        <div className="top-box">

        </div>
        <div className="middle">
            <div className="box-left"></div>
            <div className="box-right"></div>
        </div>

        <div>
          <MusicPlayer />
        </div>
      </div>
    </>
  );
}

export default Dashboard;
