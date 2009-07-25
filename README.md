Twitter Warp
---

The concept here is that we can insert this sinatra app between our local clients and twitter.com
If we have control of the flow, we can control what gets through.  e.g filter out all annoying tweets with #dailygoals tags
All non-API calls should be passed through to not disturb the web-experience
Set up the server at xxx.xxx.xxx.xx and change your hosts file to point twitter.com there
Currently proof-of-concept