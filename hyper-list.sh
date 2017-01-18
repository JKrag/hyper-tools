line='#########################################################################'

function exec_n_print_if_stuff_found {
	res=`exec $2`
	if [`wc -l <<< "$res"` -gt 1 ]; then
		printf "######## %s %s\n" $1 "${line:${#1}}" 
		echo "$res"
	fi
}

exec_n_print_if_stuff_found "Containers" "hyper ps -a" 
exec_n_print_if_stuff_found "Volumes" "hyper volume ls" 
exec_n_print_if_stuff_found "Images" "hyper images"
exec_n_print_if_stuff_found "FIP'S" "hyper fip ls"
exec_n_print_if_stuff_found "Services" "hyper service ls"
exec_n_print_if_stuff_found "Cron" "hyper cron ls"
exec_n_print_if_stuff_found "Security groups" "hyper sg ls"
exec_n_print_if_stuff_found "Snapshots" "hyper snapshot ls"
