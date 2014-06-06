## 00.01

Initial release

## 00.02

Disable *multicast discovery*.
Update to Elasticsearch 1.0.1
Stop installing the *marvel* plugin.   Takes up a lot of disk space by default and with nothing to prune by default is only asking it.

## 00.03

Fix writing config files to 1.0.0 and not 1.0.1

## 00.04

No longer using ADD; just wget.

## 1.1.1

Upgrade to 1.1.1

## 1.1.2

Lock the memory by default; add a start script to set ```ulimit -l unlimited```

## 1.2.0

Add `/etc/pam.d/su` to enable limits on su
Move to the elasticsearch user
Upgrade to 1.2.1
We lock memory by default; keep that in mind.
