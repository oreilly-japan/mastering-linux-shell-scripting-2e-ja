#!/bin/bash

# delicious apple
# delicious banana
# delicious melon に展開される
for fluit in "delicious "{apple,banana,melon} ; do
    echo $fluit
done

echo ----------------------------------------

# red paper
# red pen
# red ruler
# green paper
# green pen
# ... に展開される
for item in {red,green,blue}" "{paper,pen,ruler} ; do
    echo $item
done
