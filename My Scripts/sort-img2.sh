#! /bin/bash

exiftool -ext jpg "-Directory<DateTimeOriginal" -d "%Y/%m/%d" .
exiftool -ext mov "-Directory<DateTimeOriginal" -d "%Y/%m/%d" .
