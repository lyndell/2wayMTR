# 2wayMTR
automatically MTR between two servers

## How

Use remote command execution with SSH and SSH keys for automatic login.

Save port, user name and IP in `~/.ssh/config`.

## Example output

```
lyndell@L0 2wayMTR $ 
lyndell@L0 2wayMTR $ sh 2wayMTR.sh 
+ set -u
+ IP1=lpic.Lyndell.NET
+ IP2=zike.Lyndell.NET
+ ssh lpic.Lyndell.NET 'mtr -i.2 -r -c100  zike.Lyndell.NET'
HOST: LPIC.Lyndell.US             Loss%   Snt   Last   Avg  Best  Wrst StDev
  1. 3.08.35a9.ip4.static.sl-reve  0.0%   100    0.7   0.6   0.4   2.7   0.4
  2. ae12.dar02.dal09.networklaye  0.0%   100    0.3   0.3   0.2   2.3   0.2
  3. ae28.bbr02.eq01.dal03.networ  0.0%   100    1.0   1.1   1.0   2.3   0.2
  4. ae0.bbr02.sr02.hou02.network  0.0%   100    8.6  11.0   8.6  29.6   2.4
  5. ae6.dar01.sr02.hou02.network  0.0%   100    7.2   8.4   7.2  32.5   2.5
  6. po1.fcr01.sr02.hou02.network  0.0%   100    8.7  11.4   8.6 122.4  11.6
  7. server2.rpmfiles.net          0.0%   100    7.3   8.3   7.3   8.6   0.3
+ ssh zike.Lyndell.NET 'mtr -i.2 -r -c100  lpic.Lyndell.NET'
bash: mtr: command not found
lyndell@L0 2wayMTR $ 
lyndell@L0 2wayMTR $ 
```

Note, `$IP2` failed as detailed below.  Is not a `root` login.

# Caveat

Only `root` login is supported.  For non-root users;

* `mrt` is not in the path
* or can't get raw sockets, producing the error below:

	mtr: unable to get raw sockets.
