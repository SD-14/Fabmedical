host="fabmedical-723770.mongo.cosmos.azure.com"
username="fabmedical-723770"
password="RjWefMPL4DEYzxInzH6QXsYFnuQ7tK0fkUHPhqBa41hjABonbOXHhVN8PboSnDC0s5aSimz7OyPZs9DtrDYfCg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"}c2c2)' &
done
