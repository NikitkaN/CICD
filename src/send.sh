#!/bin/bash

TELEGRAM_BOT_TOKEN="5865224120:AAGMrwf40uqa1saNaL_HA0RUgO2vWODXTZo"
TELEGRAM_USER_ID="890269038"
URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
STATUS="$CI_JOB_STATUS"
TIME=60
TEXT="Deploy status: $STATUS%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null

