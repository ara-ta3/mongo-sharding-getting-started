for i in 1 2 3; do
    mkdir -p /data/configdb${i}
    nohup mongod --configsvr --dbpath /data/configdb${i} --port `expr 27018 + ${i}` &
done

nohup mongos --configdb 127.0.0.1:27019,127.0.0.1:27020,127.0.0.1:27021 &
