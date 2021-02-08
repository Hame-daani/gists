# copy in ~/.config/argos

\#!/usr/bin/env bash
echo -n "Toronto - " ;
TZ='America/Atikokan' date +%H:%M\ | tr -d '\n';
echo -n " • " ;
echo -n " Vancouver - " ;
TZ='America/Vancouver' date +%H:%M\ | tr -d '\n' ;
