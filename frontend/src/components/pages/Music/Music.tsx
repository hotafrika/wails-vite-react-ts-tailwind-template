import React from "react";
import { Fragment, useState } from "react";
import MusicPlayer from "../../layout/MusicPlayer.js";

function Music() {
  return (
    <>
      <div className="music-page">
      

        <div>
          <MusicPlayer />
          <MusicPlayer />
        </div>
      </div>
    </>
  );
}

export default Music;
