aws dynamodb put-item --table-name Netflix \
 --item '{"Actor":{"S":"Tom Hanks"},"Movie":{"S":"Cast Away"},"Role":{"S":"Chuck Noland"},"Year":{"N":"2000"}}'

aws dynamodb put-item --table-name Netflix\
 --item '{"Actor":{"S":"Tom Hanks"},"Movie":{"S":"Toy Story"},"Role":{"S":"Woody"},"Year":{"N":"1995"}}'

aws dynamodb put-item --table-name Netflix\
 --item '{"Actor":{"S":"Tim Allen"},"Movie":{"S":"Toy Story"},"Role":{"S":"Buzz Lightyear"},"Year":{"N":"1995"}}'   

aws dynamodb put-item --table-name Netflix\
 --item '{"Actor":{"S":"Natalie Portman"},"Movie":{"S":"Black Swan"},"Role":{"S":"Nina Sayers"},"Year":{"N":"2010"}}'


 




