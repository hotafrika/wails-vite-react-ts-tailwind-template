import React, { useState, useEffect, useRef } from "react";
import Pagination from "./Pagination";
import { GetPositions } from "../../../wailsjs/go/main/App";
// import { main } from "../../../wailsjs/go/models";
// import BaseModal from "../Modal/BaseModal";
import Modal from "../layout/Modal";


export default function PositionsGrid() {
  const pageSize = 10;
  const [modalShow, setModalShow] = useState(false);
  const [positions, setPositions] = useState<any>([]);
  const [pageIndex, setPageIndex] = useState(1);
  const [position, setPosition] = useState<any>([]);
  const [total, setTotal] = useState(0);
  const modalPrevOrNext = useRef("");

  useEffect(() => {
    // console.log("position");
    try {
      GetPositions(pageIndex, pageSize).then((response) => {
        console.log("gotPosition response---->", response);
        let jsonGotPositionResponse = JSON.parse(response);
        console.log(
          "jsonGotPosition------->",
          jsonGotPositionResponse.positions,
          jsonGotPositionResponse.total
        );
        setPositions(jsonGotPositionResponse.positions);
        setTotal(jsonGotPositionResponse.total);
        if (modalShow) {
          if (modalPrevOrNext.current === "next") {
            setPosition(jsonGotPositionResponse.positions[0]);
          }

          if (modalPrevOrNext.current === "prev") {
            setPosition(jsonGotPositionResponse.positions[pageSize - 1]);
          }
        }
      });
      // setPositions(gotPosition)
      // console.log("gotPosition", gotPosition.result);
      // console.log("gotPosition",JSON.parse( gotPosition.result));
    } catch (err) {
      console.log("err", err);
    }
  }, [pageIndex]);

  const onClickPosition = (_position) => {
    setPosition(_position);
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
    const currentPositionIndex = positions.indexOf(position);
    if (currentPositionIndex < positions.length - 1) {
      setPosition(positions[currentPositionIndex + 1]);
    } else {
      modalPrevOrNext.current = "next";
      nextPage();
    }
  };

  const previousPosition = () => {
    const currentPositionIndex = positions.indexOf(position);
    if (currentPositionIndex > 0) {
      setPosition(positions[currentPositionIndex - 1]);
    } else {
      modalPrevOrNext.current = "prev";
      previousPage();
    }
  };

  return (
    <>
      {/* <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <h1 className="text-2xl font-semibold text-gray-900">Positions</h1>
      </div> */}
      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        {positions.map((position) => (
          <div
            onClick={() => onClickPosition(position)}
            key={position.id}
            className="relative flex items-center space-x-3 rounded-lg border border-gray-300 bg-white px-6 py-5 shadow-sm focus-within:ring-2 focus-within:ring-indigo-500 focus-within:ring-offset-2 hover:border-gray-400"
          >
            <div className="flex-shrink-0">
              <img
                className="h-10 w-10 rounded-full"
                src={position.picture}
                alt=""
              />
            </div>
            <div className="min-w-0 flex-1">
              {/* <a href="#" className="focus:outline-none"> */}
              <div>
                <span className="absolute inset-0" aria-hidden="true" />
                <p className="text-sm font-medium text-gray-900">
                  {position.name}
                </p>
                <p className="truncate text-sm text-gray-500">
                  {position?.type?.string}
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
        position={position}
        modalShow={modalShow}
        setModalShow={setModalShow}
        previousPosition={previousPosition}
        nextPosition={nextPosition}
      />
    </>
  );
}
