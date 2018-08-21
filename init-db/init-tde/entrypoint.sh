mkdir -p /tde
chmod -R 777 /tde
chmod -R 777 /usr/src/app/init-tde/tde_data

echo "tde: init model"
mv /usr/src/app/init-tde/tde_data/model /tde

echo "tde: init db"
mv /usr/src/app/init-tde/tde_data/db /tde

echo "tde: init test"
mv /usr/src/app/init-tde/tde_data/test /tde

echo "tde: init usp"
mv /usr/src/app/init-tde/tde_data/usp /tde

if [ ! -d /tde/task_def ]; then
    echo "tde: init task_def"
    mv /usr/src/app/init-tde/tde_data/task_def /tde
fi

