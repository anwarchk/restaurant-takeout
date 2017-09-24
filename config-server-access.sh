
TOKEN=$(curl -k "https://p-spring-cloud-services.uaa.run.haas-80.pez.pivotal.io/oauth/token" -u p-config-server-ec9fb59f-a26c-4072-9be6-c69e82311d4e:m3n5e7tHX4lY -d "grant_type=client_credentials" | jq -r .access_token);

curl -k -H "Authorization: bearer $TOKEN" -H "Accept: application/json" "https://config-f3ff6dc6-e9e7-4558-b128-037f57594fab.cfapps.haas-80.pez.pivotal.io/restaurant-takeout/cloud" | jq
