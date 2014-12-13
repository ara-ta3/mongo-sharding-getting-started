for i in 1 2 3; do
    mkdir -p /data/mongod${i}
    port=`expr 28016 + ${i}`
    nohup mongod --dbpath /data/mongod${i} --port $port &
    mongo --eval "sh.addShard( 'localhost:$port' )"
done

mongo --eval 'sh.enableSharding("test")'

