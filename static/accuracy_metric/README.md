# metricRecollection

This folder allows to pick the values of accuracy metric in Picbit platform 
for Twitter, Facebook, and Googleplus web components.

It is necessary to do some action before executing the accuracy_metric.sh script.
Basicly, these actions are related to the setting up for tokens of networks, mainly
Facebook and Googleplus, which are the ones whose token expired after a while.

First, it is necessary to visit https://developers.facebook.com/tools/explorer/145634995501895/
for Facebook, while for Googleplus it is necessary to visit 
https://developers.google.com/+/web/api/rest/latest/activities/list#try-it.

For Facebook, the used version is 2.3 (needed to select it in the correspondent field, and then
enable the read_stream permission).

For Googleplus, it's necessary to use the Try it section. Selecting "me" as user (your logged account) and
public for the profile it is enough. Just be sure of having opened the console of your browser.
You have to look the networks tab, and select the request to public?... and look for the Authorization 
header and the Bearer TOKEN field, which is the token, starting by "ya.29".

These tokens need to be updated in /Accuracy/facebook-wall/FacebookCompletitudAccuracy.html,
/Latency/facebook-wall/FacebookCompletitudLatency.html and /Master/facebook-wall/FacebookCompletitud.html, 
field "token" for Facebook, and completitud_final.py file, line 468.

For Google, the files the token need to be updated in are 
/Accuracy/googleplus-timeline/demo/GooglePlusCompletitudAccuracy.html,
/Latency/googleplus-timeline/demo/GooglePlusCompletitudLatency.html,
/Master/googlepus-timeline/demo/GooglePlusCompletitud.html, modifying the "token" field.