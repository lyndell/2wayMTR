# 2wayMTR

automatically MTR between two servers

Uses remote command execution with SSH and SSH keys for automatic login.

## Setup

Configure SSH keys to automate login.  Additional login details such as username and port can be saved in `~/.ssh/config`.


## Example output

```
tech@wrkstn 2wayMTR $ 
tech@wrkstn 2wayMTR $ sh 2wayMTR.sh 
+ set +x



FROM: lpic.Lyndell.NET  to  159.122.145.74 .  

HOST: LPIC.Lyndell.US             Loss%   Snt   Last   Avg  Best  Wrst StDev
  1. 2.08.35a9.ip4.static.sl-reve  0.0%    10    0.7   0.7   0.5   0.9   0.1
  2. ae11.dar02.dal09.networklaye  0.0%    10    0.3   0.3   0.2   0.4   0.1
  3. ae28.bbr02.eq01.dal03.networ  0.0%    10    1.0   1.3   1.0   2.8   0.6
  4. ae1.bbr01.tl01.atl01.network  0.0%    10   21.6  21.6  21.5  22.5   0.3
  5. ae0.bbr01.eq01.wdc02.network  0.0%    10   34.0  34.1  34.0  34.8   0.2
  6. ae7.bbr02.eq01.wdc02.network  0.0%    10   32.5  32.9  32.5  34.0   0.6
  7. ae0.bbr01.eq01.ams02.network 10.0%    10  111.9 112.0 111.7 113.0   0.4
  8. ae7.bbr02.eq01.ams02.network 10.0%    10  117.4 112.5 111.9 117.4   1.8
  9. ae1.bbr01.ic01.mil02.network 10.0%    10  127.9 127.8 127.7 128.3   0.2
 10. ae5.dar01.mil01.networklayer 10.0%    10  126.2 126.2 126.2 126.3   0.0
 11. po1.fcr01b.mil01.networklaye 10.0%    10  127.1 128.2 127.1 132.7   2.1
 12. 4a.91.7a9f.ip4.static.sl-rev 10.0%    10  126.9 126.9 126.8 127.4   0.2



FROM: 159.122.145.74  to  lpic.Lyndell.NET .  

HOST: fantastico.testbox.thing    Loss%   Snt   Last   Avg  Best  Wrst StDev
  1. ???                          100.0    10    0.0   0.0   0.0   0.0   0.0
  2. ae11.dar01.mil01.networklaye  0.0%    10    1.2   0.4   0.2   1.2   0.3
  3. ae8.bbr01.ic01.mil02.network  0.0%    10    2.3   1.4   0.5   3.5   1.0
  4. b5.13.6132.ip4.static.sl-rev  0.0%    10   20.8  21.1  20.8  23.4   0.8
  5. ae7.bbr01.eq01.ams02.network  0.0%    10   20.9  21.0  20.8  21.4   0.2
  6. ae1.bbr02.eq01.wdc02.network  0.0%    10  100.0 100.8  99.7 107.4   2.4
  7. ae7.bbr01.eq01.wdc02.network  0.0%    10   99.7  99.8  99.7 100.2   0.2
  8. ae0.bbr01.tl01.atl01.network 10.0%    10  113.2 113.6 113.2 114.6   0.6
  9. ae13.bbr02.eq01.dal03.networ 10.0%    10  131.6 131.7 131.6 132.1   0.2
 10. ae6.dar02.dal09.networklayer 10.0%    10  132.2 132.2 132.2 132.3   0.0
 11. po2.fcr01a.dal09.networklaye 10.0%    10  132.7 132.8 132.5 133.7   0.4
 12. 7.08.35a9.ip4.static.sl-reve 11.1%     9  126.8 126.9 126.8 127.2   0.1



tech@wrkstn 2wayMTR $ 
tech@wrkstn 2wayMTR $ 
```

Note, `$IP2` failed as detailed below.  Is not a `root` login.

# Caveat

Only `root` login is supported.  Non-root users will encounter the following:

* `mrt` is not in the path
* or can't get raw sockets, producing the error below:

    mtr: unable to get raw sockets.


