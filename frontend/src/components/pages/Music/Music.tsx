import React from "react";
import { Fragment, useState } from "react";
import MusicPlayer from "../../layout/MusicPlayer.js";

function Music() {
  return (
    <>
      <div className="music-page">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <h1 className="text-2xl font-semibold text-gray-900">Musicality</h1>
        </div>

        <div>
          <MusicPlayer />
        </div>
      </div>
    </>
  );
}

export default Music;
