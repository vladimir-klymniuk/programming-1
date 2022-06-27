kubectl create secret -n development tls dev-tls-secret \
  --cert=%cert_name%.crt \
  --key=%cert_key%.pem