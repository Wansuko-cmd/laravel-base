cd ./../docker || { echo "Missed changing directory"; exit 1; }
command="docker exec php bash -c 'cd laravel && "$@"'"
eval $command
echo 'done'