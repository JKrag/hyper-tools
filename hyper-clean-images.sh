echo "Cleaning Images ----------------------------------------------------------"
if [[ $(hyper images -q) ]]; then
    echo "Deleting Images:"
	hyper rmi `hyper images -q`
else
    echo "no images found"
fi
