# Tips and Tricks

## Clear Browser Cache to see client side code changes

Be aware to clear your browser cache before testing client side code changes. Alternatively test your app in an anonymous window.

---

## How to perform a daily build

You can perform a daily build by creating a scheduled task in windows that executes a script like this:

```
@echo off
Title Publish Environment YOURENVIRONMENTNAME
"C:\Program Files\Common Files\OutSystems\11.0\OSPTool" /PublishFactory HOSTNAME USERNAME PASSWORD
```

---
