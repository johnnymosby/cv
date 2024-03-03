#!/bin/sh

trap 'echo "Stopping application"; npm stop; exit 0' SIGINT SIGQUIT SIGTERM

npm start