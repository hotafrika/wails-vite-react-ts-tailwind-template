import React, { useState, useEffect, useRef } from "react";
import Pagination from "./Pagination";
import { GetPositions, GetBasics } from "../../../wailsjs/go/main/App";
// import { main } from "../../../wailsjs/go/models";
// import BaseModal from "../Modal/BaseModal";
import Modal from "../layout/Modal";

export default function Basics() {
  const pageSize = 10;
  const [modalShow, setModalShow] = useState(false);
  const [pageIndex, setPageIndex] = useState(1);
  const [basic, setShine] = useState<any>([]);
  const [total, setTotal] = useState(0);
  const modalPrevOrNext = useRef("");
  const [basics, setBasics] = useState<any>([]);

  useEffect(() => {
    try {
      GetBasics(pageIndex, pageSize).then((response) => {
        console.log("gotBasics response---->", response);
        let jsonGotBasicsResponse = JSON.parse(response);

        console.log("jsonGotBasics------->", jsonGotBasicsResponse);

        setBasics(jsonGotBasicsResponse.positions);
        setTotal(jsonGotBasicsResponse.total);

        if (modalShow) {
          if (modalPrevOrNext.current === "next") {
            setShine(jsonGotBasicsResponse.basics[0]);
          }

          if (modalPrevOrNext.current === "prev") {
            setShine(jsonGotBasicsResponse.basics[pageSize - 1]);
          }
        }
      });
    } catch (error) {
      console.log("Error getting basic");
    }
  }, [pageIndex]);

  const onClickShine = (_basic) => {
    setShine(_basic);
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
    const currentPositionIndex = basics.indexOf(basic);
    if (currentPositionIndex < basics.length - 1) {
      setShine(basics[currentPositionIndex + 1]);
    } else {
      modalPrevOrNext.current = "next";
      nextPage();
    }
  };

  const previousPosition = () => {
    const currentPositionIndex = basics.indexOf(basic);
    if (currentPositionIndex > 0) {
      setShine(basics[currentPositionIndex - 1]);
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
        {basics.map((basic) => (
          <div
            onClick={() => onClickShine(basic)}
            key={basic.id}
            className="relative flex items-center space-x-3 rounded-lg  bg-gray-800 px-6 py-5 shadow-sm focus-within:ring-2 focus-within:ring-indigo-500 focus-within:ring-offset-2 hover:bg-gray-700"
          >
            <div className="flex-shrink-0">
              <img
                className="h-10 w-10 rounded-full"
                // src={basic.picture.String}
                src="https://storage.googleapis.com/isidros-dev/pngwing.com.png"
                alt=""
              />
            </div>
            {/* <p>{basic.id}</p>  */}

            <div className="min-w-0 flex-1">
              {/* <a href="#" className="focus:outline-none"> */}
              <div>
                <span className="absolute inset-0" aria-hidden="true" />
                <p className="text-sm font-medium text-gray-200">
                  {basic.id} : {basic.name}
                </p>
                <p className="truncate text-sm text-gray-400">
                  {basic?.type?.String}
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
        position={basic}
        modalShow={modalShow}
        setModalShow={setModalShow}
        previousPosition={previousPosition}
        nextPosition={nextPosition}
      />
    </>
  );
}
