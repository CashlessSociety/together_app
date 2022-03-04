To get an instance of Dgraph running:

In oredr to inable ACL:
    1. Create hmac secret code, replace it at: acl/hmac_secret_file

    2. Run:

```
docker-compose up -d
```

You can access the Ratel web interface via:

```
http://$HOSTIP:8000
```

When you on the page, connect to dgraph node via:

```
http://$HOSTIP:8080

login: groot
password: password
```