#!/bin/bash

SERVER_KEY="XxXxXxXx"
DEVICE_TOKEN="cqjxQwuaZZAqP1DZ54Mwd0:APA91bGh71lv0nftcDjAPdH-u6tlGhB578QtJ1O55dcb8ag6do1jy8v7BVjr-RpKMC9J1ON1pXhDJwoYRK7HOQR16AsqBDw2yithOd4g-lsboqCf0ZonkzMwVe2xLmBa3R45xlbLiak2"

curl -H "Content-Type: application/json" \
     -H "Authorization: key=$SERVER_KEY" \
     -d '{
           "notification": {
             "title": "New chat message!",
             "body": "There is a new message in FriendlyChat",
             "icon": "/images/profile_placeholder.png",
             "click_action": "http://localhost:5000"
           },
           "to": "$DEVICE_TOKEN"
         }' \
     https://fcm.googleapis.com/fcm/send
