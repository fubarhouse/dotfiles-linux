#!/usr/bin/env bash

DIRECTORY="${HOME}/.config/i3"

{
  echo "# This file was generated from a series of inclusions."
  echo "# Do not change this file directly as your changes will not persist."
} > ${DIRECTORY}/config

find "${DIRECTORY}/includes" -iname *.conf -type f | sort | while IFS= read -r file; do
  {
    echo "";
    cat "${file}";
    echo "";
  } >> ${DIRECTORY}/config;
done