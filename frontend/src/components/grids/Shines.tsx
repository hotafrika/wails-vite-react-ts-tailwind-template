import React, { useState, useEffect, useRef } from "react";
import Pagination from "./Pagination";
import { GetPositions, GetShines } from "../../../wailsjs/go/main/App";
// import { main } from "../../../wailsjs/go/models";
// import BaseModal from "../Modal/BaseModal";
import Modal from "../layout/Modal";

export default function Shines() {
  const pageSize = 10;
  const [modalShow, setModalShow] = useState(false);
  const [pageIndex, setPageIndex] = useState(1);
  const [shine, setShine] = useState<any>([]);
  const [total, setTotal] = useState(0);
  const modalPrevOrNext = useRef("");
  const [shines, setShines] = useState<any>([]);

  useEffect(() => {
    try {
      GetShines(pageIndex, pageSize).then((response) => {
        console.log("gotShines response---->", response);
        let jsonGotShinesResponse = JSON.parse(response);

        console.log("jsonGotShines------->", jsonGotShinesResponse);

        setShines(jsonGotShinesResponse.positions);
        setTotal(jsonGotShinesResponse.total);

        if (modalShow) {
          if (modalPrevOrNext.current === "next") {
            setShine(jsonGotShinesResponse.shines[0]);
          }

          if (modalPrevOrNext.current === "prev") {
            setShine(jsonGotShinesResponse.shines[pageSize - 1]);
          }
        }
      });
    } catch (error) {
      console.log("Error getting shine");
    }
  }, [pageIndex]);

  const onClickShine = (_shine) => {
    setShine(_shine);
    setModalShow(true);
  };

  const previousPage = () => {
    if (pageIndex > 1) {
      setPageIndex(pageIndex - 1);
    }
  };

  const nextPage = () => {
    console.log("nextPage");
    if (pageIndex < Math.round(total / pageSize)) {
      setPageIndex(pageIndex + 1);
    }
  };

  const nextPosition = () => {
    const currentPositionIndex = shines.indexOf(shine);
    if (currentPositionIndex < shines.length - 1) {
      setShine(shines[currentPositionIndex + 1]);
    } else {
      modalPrevOrNext.current = "next";
      nextPage();
    }
  };

  const previousPosition = () => {
    const currentPositionIndex = shines.indexOf(shine);
    if (currentPositionIndex > 0) {
      setShine(shines[currentPositionIndex - 1]);
    } else {
      modalPrevOrNext.current = "prev";
      previousPage();
    }
  };

  return <></>;
  return (
    <>
      {/* <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <h1 className="text-2xl font-semibold text-gray-900">Positions</h1>
      </div> */}
      <div className="grid grid-cols-1 mb-10 gap-4 sm:grid-cols-2">
        {shines.map((shine) => (
          <div
            onClick={() => onClickShine(shine)}
            key={shine.id}
            className="relative flex items-center space-x-3 rounded-lg  bg-gray-800 px-6 py-5 shadow-sm focus-within:ring-2 focus-within:ring-indigo-500 focus-within:ring-offset-2 hover:bg-gray-700"
          >
            <div className="flex-shrink-0">
              <img
                className="h-10 w-10 rounded-full"
                // src={shine.picture.String}
                src="https://storage.googleapis.com/isidros-dev/pngwing.com.png"
                alt=""
              />
            </div>
            {/* <p>{shine.id}</p>  */}

            <div className="min-w-0 flex-1">
              {/* <a href="#" className="focus:outline-none"> */}
              <div>
                <span className="absolute inset-0" aria-hidden="true" />
                <p className="text-sm font-medium text-gray-200">
                  {shine.id} : {shine.name}
                </p>
                <p className="truncate text-sm text-gray-400">
                  {shine?.type?.String}
                </p>
              </div>
              {/* </a> */}
            </div>
          </div>
        ))}
      </div>
      {total && (
        <Pagination
          previousPage={previousPage}
          nextPage={nextPage}
          pageIndex={pageIndex}
          total={total}
          pageSize={pageSize}
          setPageIndex={setPageIndex}
        />
      )}
      <Modal
        position={shine}
        modalShow={modalShow}
        setModalShow={setModalShow}
        previousPosition={previousPosition}
        nextPosition={nextPosition}
      />
    </>
  );
}
