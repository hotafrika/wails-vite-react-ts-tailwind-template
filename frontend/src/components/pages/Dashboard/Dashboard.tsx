import React from "react";
import { Fragment, useState } from "react";
import MusicPlayer from "../../layout/MusicPlayer";
import Stats from "../../layout/Stats";
import Practice from "../../pages/Practice/Practice";
import Playlist from "../../layout/Playlist";
import PracticeCard from "../../layout/PracticeCard";

function Dashboard() {


  const [count, setCount] = useState(0)

  return (
    <>
      <div className="dashboard">
        
        <div className="mt-4">
          <div>
            <Stats />
          </div>
          <div className="mt-14">
            <div>
              <PracticeCard />
            </div>
            <div className="mt-16">
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
