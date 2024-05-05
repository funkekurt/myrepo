#!/bin/bash

function poc()
{
  echo "At ${LINENO}, variable 1 = ${1}"
  
}

poc 'a'
