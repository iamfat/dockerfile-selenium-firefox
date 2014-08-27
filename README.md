Docker Hub: iamfat/selenium-firefox
===========

## Selenium Firefox Node
```bash
docker run --name selenium-firefox --privileged -v /dev/log:/dev/log -d iamfat/selenium-firefox

docker run --name selenium-firefox --privileged -v /dev/log:/dev/log -e "HUB_HOST=172.17.42.1" -e "HUB_PORT=4444" -d iamfat/selenium-firefox
```