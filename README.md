# Strapi application

A quick description of your strapi application

- People can create an administrator before hand, but we'll be re-creating that when we add PostgreSQL. Same with entries and content types/collections

## 1. [Platformify](https://github.com/chadwcarlson/strapiconf-workshop/pull/1)

- `touch .platform.app.yaml && mkdir -p .platform && touch .platform/routes.yaml && touch .platform/services.yaml`
- `curl https://raw.githubusercontent.com/platformsh-templates/eleventy-strapi/master/strapi/handle_mounts.sh >> handle_mounts.sh`
- `curl https://raw.githubusercontent.com/platformsh-templates/eleventy-strapi/master/strapi/.environment >> .environment`
- Update `.environment` to use `primary` instead (`ENVIRONMENT=$(echo $PLATFORM_ROUTES | base64 --decode | jq -r 'to_entries[] | select(.value.primary == true) | .key')`)
- modify build and deploy hooks to match `eleventy-strapi`
