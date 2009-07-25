Twitter Warp
---

The concept here is that we can insert this sinatra app between our local twitter clients and twitter.com.  If we have control of the flow, we can control what gets through.  For example, we can filter out all the tweets with #dailygoals tags.  All non-API calls should be passed through to not disturb the web-experience.  Set up the server at xxx.xxx.xxx.xx and change your hosts file to point twitter.com there.  Currently proof-of-concept and not quite working.