import React from "react";
import { Fragment, useState } from "react";
import MusicPlayer from "../../layout/MusicPlayer";
import Stats from "../../layout/Stats";
import Practice from "../../pages/Practice/Practice";
import Playlist from "../../layout/Playlist";
import PracticeCard from "../../layout/PracticeCard";

function Dashboard() {


  const [count, setCount] = useState(0)

  const onClickBtn = ()=>{
    setCount(count+1)
  }

  return (
    <>
      <div className="dashboard">

        <button onClick={onClickBtn}> test button</button>
        <div>
          {count}
        </div>
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
