echo 'Warning'
while true; do
    # shellcheck disable=SC2162
    read -p "Do you wish to initialize all container? (y/n)" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

cd ./../docker || { echo "Missed changing directory"; exit 1; }
docker-compose down
docker-compose build
docker-compose up -d

docker exec php bash -c "
chmod -R 777 laravel/storage &&
cd laravel &&
composer install"

cp ./../command/product/pg_hba.conf ../db/data/pg_hba.conf

#CentOSのサーバー用
#cp ./../command/product/postgresql.conf ../db/data/postgresql.conf
#docker exec db-host bash -c "psql create database database"

docker exec php bash -c "
cd laravel &&
php artisan migrate &&
php artisan db:seed
"

echo 'done'