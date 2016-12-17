#!/usr/bin/env python
#!/usr/bin/python
# -*- coding: UTF-8 -*

from mixpanel_client import MixpanelQueryClient
from mixpanel import Mixpanel
import time, sys, json, webbrowser
import httplib, urllib, urllib2
mp = Mixpanel("5575f329c66cfe343770fe70f4448af5")
query_client = MixpanelQueryClient("cc20a3ccacf22b845d96beb68a947855", "573197f1d5cdeb58a5182e842a953af4")

def main():
    network_list = ["google", "twitter", "facebook", "pinterest"]
    versions_list = ["accuracy", "stable", "latency"]
    if len(sys.argv) < 2:
        # Missexecution. THe program needs a parameter
        print "Error: missing param"
        print "Usage: completeness.py {twitter|facebook|google|pinterest [facebook_access_token]"
    else:
        network = sys.argv[1]
        print network
        if not network in network_list:
            # The parameter is not valid
            print "Error: wrong social network"
            print "Usage: completeness.py {twitter|facebook|google|pinterest [facebook_access_token]"
        else:
            if network == "twitter":
                # print "voy a iniciar el flujo de twitter"
                twitter_url = "http://metricas-formales.appspot.com/oauth/twitter"
                data = {'access_token': "3072043347-T00ESRJtzlqHnGRNJZxrBP3IDV0S8c1uGIn1vWf",
                        'secret_token': "OBPFI8deR6420txM1kCJP9eW59Xnbpe5NCbPgOlSJRock",
                        'consumer_key': "J4bjMZmJ6hh7r0wlG9H90cgEe",
                        'consumer_secret': "8HIPpQgL6d3WWQMDN5DPTHefjb5qfvTFg78j1RdZbR19uEPZMf",
                        'count': 200 }
                url_values = urllib.urlencode(data)
                full_url = twitter_url + '?' + url_values
                # print full_url
                # The request is done, and the response read
                req = urllib2.Request(full_url)
                data = urllib2.urlopen(req)
                response = data.read()

                # print response

                # We have already the tweets from the host version (local Python server)
                # Now, we need to pick the ones from different versions of the components
                # First of all, we open three tabs with different versions

                webbrowser.open_new("http://metricas-formales.appspot.com/app/latency_metric/Stable/TwitterTimelineLatency.html")
                time.sleep(10)
                webbrowser.open_new("http://metricas-formales.appspot.com/app/latency_metric/Latency/TwitterTimelineLatency.html")
                time.sleep(10)
                webbrowser.open_new("http://metricas-formales.appspot.com/app/latency_metric/Accuracy/TwitterTimelineLatency.html")


if __name__ == "__main__":
    main()
