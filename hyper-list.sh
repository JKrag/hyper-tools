echo "--- Containers ------------------------------------------------------"
cont=`hyper ps -a`
if [`wc -l <<< "$cont"` -gt 1 ]; then
	echo "$cont"
fi

echo "--- Volumes ---------------------------------------------------------"
vol=`hyper volume ls`
if [`wc -l <<< "$vol"` -gt 1 ]; then
	echo "$vol"
fi

echo "--- Images ----------------------------------------------------------"
img=`hyper images`
if [`wc -l <<< "$img"` -gt 1 ]; then
	echo "$img"
fi

echo "--- FIP'S -----------------------------------------------------------"
fips=`hyper fip ls`
if [`wc -l <<< "$fips"` -gt 1 ]; then
	echo "$fips"
fi


echo "--- Services --------------------------------------------------------"
srv=`hyper service ls`
if [`wc -l <<< "$srv"` -gt 1 ]; then
	echo "$srv"
fi

echo "--- Cron ------------------------------------------------------------"
crn=`hyper cron ls`
if [`wc -l <<< "$crn"` -gt 1 ]; then
	echo "$crn"
fi

echo "--- Security groups -------------------------------------------------"
sgs=`hyper sg ls`
if [`wc -l <<< "$sgs"` -gt 1 ]; then
	echo "$sgs"
fi


echo "--- Snapshots -------------------------------------------------------"
snap=`hyper snapshot ls`
if [`wc -l <<< "$snap"` -gt 1 ]; then
	echo "$snap"
fi
