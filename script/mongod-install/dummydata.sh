mongo test --eval 'for (var i = 1; i <= 100000; i++) { db.testData.insert( { x : i } ) }'
