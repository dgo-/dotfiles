# stderror.net Prompt
# 
# mailto dgo+prompt(at)stderror.net

# set fix PROMPTs
PS2="» "
PS3="${PS2}"
PS4="${PS2}"
export PS2 PS3 PS4

# to fix stuff only ones
len=`echo "+--<:)>--{$USER@$HOST}--[20:15]" | wc -c`

#build PROMPT
precmd () {
	local -A color
	local fill
	color['time']=${1:-'white'}
  	color['pwd']=${2:-'blue'}
  	color['com']=${3:-'black'}

	# setup face
	smile='`if [ ${?} = 0 ]; then echo -ne "%F{green}:)%F{blue}"; else echo -ne "%F{red} :(%F{blue}"; fi;`'

	# setup file size
	(( fillsize = ${COLUMNS} - ${len} ))
	fill="---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	fill="${fill:0:${fillsize}}"	

	# setup user color
	if [ "$USER" = "root" ]; then
		color['user']=${4:-'red'}
	else
		color['user']=${4:-'green'}
	fi

	# finish prompt
	export PROMPT="%F{blue}+--<$smile>--{%F{$color['user']}%n%F{cyan}@%F{red}${HOST}%F{blue}}-$fill-[%F{yellow}%T%F{blue}]
+{%f%d%F{cyan}>>%f" 
}
