EXT=svg
for i in *; do
    if [ "${i}" != "${i%.${EXT}}" ];then
        svgcheck $i 
	if [ $? -eq 0 ]; then
		echo "successful $i"
	else
		echo "failure $i"
	fi
    fi
done
