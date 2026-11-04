#!bin/bash


###Special Variables in Shell Scripting

echo "All arugs passed to the script are:: $@"
#echo "All arugs passed to
echo "Number of arguments passed to the script are:: $#"
echo "The name of the script is:: $0"
echo "The first argument passed to the script is:: $1"
echo "The second argument passed to the script is:: $2"
echo "The third argument passed to the script is:: $3"
echo "Real path of the script is:: $(realpath $0)"
echo "who is running the script:: $USER"
echo "The current working directory is :: $PWD"
echo "Home directory of the user is :: $HOME"
#echo "The process id of the script is :: $$"
echo "The process id of the script is :: $BASHPID"
echo "The exit status of the last command is :: $?"
echo "The last background command is :: $!"
echo "PID of the current shell is :: $$"
