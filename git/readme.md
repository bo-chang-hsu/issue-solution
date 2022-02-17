#git reset 先取回遠端數據庫的最新歷史紀錄

```
$ git fetch --all 
放棄目前所有檔案與 commit，還原成遠端版本
```

```
$ git reset --hard origin/main
最後重新拉回來
```

```
$ git pull origin main
```

#git ignore沒有生效

    git rm -r --cached .
    git add .
    git commit -m 'update .gitignore'
