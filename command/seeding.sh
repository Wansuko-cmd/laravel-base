cd ./../docker || { echo "Missed changing directory"; exit 1; }
docker exec php bash -c "cd laravel && php artisan db:seed"
echo 'done'