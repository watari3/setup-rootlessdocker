# setup-rootlessdocker

## インストール後の作業

自動起動するために```.config/systemd/user/docker.service```を

```
[Install]
WnatedBy=multi-user.target
```
から
```
[Install]
WnatedBy=default.target
```
に変更し、systemdで自動起動するように設定する。

```
$ systemctl --user daemon-reload
$ systemctl --user enable docker
$ sudo loginctl enable-linger <user name>
```
