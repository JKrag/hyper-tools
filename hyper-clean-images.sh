echo "--- Containers ------------------------------------------------------"
if [[ $(hyper ps -aq) ]]; then
    echo "Deleting containers:"
	hyper rm -v -f `hyper ps -aq`
else
    echo "no containers found"
fi
echo "--- Volumes ---------------------------------------------------------"
if [[ $(hyper volume ls -q) ]]; then
    echo "Deleting Volumes:"
	hyper volume rm `hyper volume ls -q`
else
    echo "no volumes found"
fi
echo "--- Images ----------------------------------------------------------"
if [[ $(hyper images -q) ]]; then
    echo "Deleting Images:"
	hyper rmi `hyper images -q`
else
    echo "no images found"
fi
#echo "--- FIP'S -----------------------------------------------------------"
#hyper fip ls
#echo "--- Services --------------------------------------------------------"
#hyper service ls
#echo "--- Cron ------------------------------------------------------------"
#hyper cron ls
#echo "--- Security groups -------------------------------------------------"
#hyper sg ls
#echo "--- Snapshots -------------------------------------------------------"
#hyper snapshot ls
#echo "---------------------------------------------------------------------"
