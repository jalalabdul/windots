#!/bin/bash

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/1f3e6c739269fc1fc008890eb0dcb172/purge_cache" \
-H "X-Auth-Email: jalalabdulaziz@gmail.com" \
-H "X-Auth-Key: 99aaf986b44374c54ccbe603eac26dc790a3b" \
-H "Content-Type:application/json" \
--data '{"purge_everything":true}'

echo "CloudFlare cache has been cleared"
