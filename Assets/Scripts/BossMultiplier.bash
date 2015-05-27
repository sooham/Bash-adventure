#!/bin/bash
HAMSTER=2
while [ $HAMSTER -le 100 ]; do
        if [ ! -d ../../Game/Door/Door/Door_2/Door/Door/Door_1/Door/Door/Door/.Door/boss_door ]; then 
            # quit the loop
            break
        fi

        # copy the hamster file with adequate numbering 
        cp ../../Game/Door/Door/Door_2/Door/Door/Door_1/Door/Door/Door/.Door/boss_door/boss ../../Game/Door/Door/Door_2/Door/Door/Door_1/Door/Door/Door/.Door/boss_door/boss_$HAMSTER
        let HAMSTER=HAMSTER+1
        sleep 1 # replicate every 4 seconds
done
