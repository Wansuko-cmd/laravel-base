cd ./../docker || { echo "Missed changing directory"; exit 1; }
docker exec php bash -c "cd laravel && php artisan migrate"
echo 'done'