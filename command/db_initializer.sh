echo 'Warning'
while true; do
    # shellcheck disable=SC2162
    read -p "Do you wish to initialize db? (y/n)" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

cd ./../db/data || { echo "Missed changing directory"; exit 1; }
# shellcheck disable=SC2035
rm -r *
echo 'done'