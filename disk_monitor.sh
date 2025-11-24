df | awk '$1 == "drivers"{
	if ($5+0 > 80)
		print "Date: " strftime() " Storage almost full! usg: " $5
	else
		print "Date: " strftime() " Storage is okay: " $5
}'
#>> storage_capacity_log.txt
