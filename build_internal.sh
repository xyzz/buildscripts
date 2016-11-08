#!/bin/bash
    case "${TOXENV}" in
        WIN)
	  mkdir build
	  cd build
	  cmake .. -DCMAKE_TOOLCHAIN_FILE=toolchain-i686-w64-mingw32.cmake
	  make tarball
          ;;
        *)
	  mkdir build
	  cd build
	  cmake ..
	  make -j4 tarball
          ;;
    esac

