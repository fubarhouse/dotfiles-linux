#!/usr/bin/env bash

DIRECTORY="${HOME}/.config/i3"
echo "" > "${DIRECTORY}/config"

find "${DIRECTORY}/includes/"*.conf -type f | while IFS= read -r file; do
  cat "${file}" >> "${DIRECTORY}/config"
  echo "" >> "${DIRECTORY}/config"
done