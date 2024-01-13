#!/bin/bash
#main

#search the output of lshw command and return every line with the word bridge in it.
lshw | grep -w "jlab-pc" "*-cpu"