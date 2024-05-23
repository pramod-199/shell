#!/bin/bash

echo -e "\033[0;32m==================loop one start ==============================\033[0m"
echo ""
for word in "$*"
do   
    echo "${word}"
    sleep 0.30s
done
echo ""

echo -e "\033[0;32m==================loop one end ==============================\033[0m"


echo -e "\033[0;32m==================loop two start ==============================\033[0m"

echo ""

for word in "$@"
do   
    echo "${word}"
    sleep 0.30s
done

echo -e "\033[0;32m==================loop two end ==============================\033[0m"

#output of both

# ==================loop one start ==============================

# ajay pramod vijay shubh atul amit
# ==================loop one end ==============================

# ==================loop two start ==============================

# ajay
# pramod
# vijay
# shubh
# atul
# amit
# ==================loop two end ==============================

#this is the diff between these two


#!/bin/bash

# Print the header in purple and reset the color afterwards
echo -e "\033[0;35m==================loop one start ==============================\033[0m"
echo ""
for word in "$*"
do   
    echo "${word}"
    sleep 0.30s
done
echo ""

echo -e "\033[0;35m==================loop one end ==============================\033[0m"

echo ""
echo -e "\033[0;35m==================loop two start ==============================\033[0m"
echo -e "\033[0;32m"

for word in "$@"
do   
    echo "${word}"
    sleep 0.30s
done

echo -e "\033[0m"
echo -e "\033[0;35m==================loop two end ==============================\033[0m"
