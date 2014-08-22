Docker Hub: iamfat/selenium-firefox
===========

## Selenium Firefox Node
```bash
docker run --name selenium-firefox --privileged -v /dev/log:/dev/log --link selenium-hub:selenium-hub -d iamfat/selenium-firefox
```