TwitterIrcGateway_setup
=======================

TwitterIrcGatewayを自動インストールするスクリプト。超適当。

### つかいかた
```bash
chmod 755 install.sh
./install.sh
```

### ユーザストリームの有効のしかた
```
#Consoleに入る

System
ShowAddIns

([Misuzilla.Applications.TwitterIrcGateway.AddIns.UserStream.UserStreamAddIn]が入っていることを確認)

EnableAddIn Misuzilla.Applications.TwitterIrcGateway.AddIns.UserStream.UserStreamAddIn

#サーバを切断・再ログイン
#Consoleに入る
UserStream
Enable

#サーバを切断・再ログイン
できてるはず

```
### TypableMap有効のしかた

```
#Consoleに入る
config
set EnableTypableMap true
#サーバを切断・再ログイン
```
