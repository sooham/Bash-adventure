#!/bin/bash
HAMSTER=2
while [ $HAMSTER -le 100 ]; do
        # copy the hamster file with adequate numbering 
        cp ./boss ./boss_$HAMSTER
        let HAMSTER=HAMSTER+1
        sleep 1 # replicate every second
done
