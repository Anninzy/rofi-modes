![Screenshot](preview.png)

Used as a rofi mode

```bash
rofi -modes "inhibit:PATH_TO_inhibit.sh" -show "inhibit"
```

`locked` symbol means that type of lock is active, vice versa\
\
`zzz` symbol stands for suspend lock, your idle management daemon can perform
any action except for suspending\
`monitor` symbol stands for idle lock, your idle management daemon will be
blocked from all actions\
Replace `status_*` with something more understandable than two nerdfont symbols
if needed
