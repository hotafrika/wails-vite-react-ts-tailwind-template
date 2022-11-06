import React from "react";
import { Fragment, useState } from "react";
import MusicPlayer from "../../layout/MusicPlayer";
import Stats from "../../layout/Stats";
import Practice from "../../pages/Practice/Practice";
import Playlist from "../../layout/Playlist";

function Dashboard() {
  return (
    <>
      <div className="dashboard">
        <div className="mt-4">
          <div>
            <Stats />
          </div>
          <div className="mt-4">
            <div><Practice /></div>
            <div>
              <Playlist />
            </div>
          </div>
          <div className="mt-6">
            <MusicPlayer />
          </div>
        </div>
      </div>
    </>
  );
}

export default Dashboard;
