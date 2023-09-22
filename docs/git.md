Git cheat sheet


### 作業ブランチにdevelopを取り込む
```
git checkout feature/issue
# 作業ブランチに切り替え

git status
# ブランチ確認

git merge develop
# developを取り込む
```

developブランチの内容を優先して取り込みたい
`develop` ブランチの差分を優先して取り込み、コンフリクトを解消したい場合、以下の手順で行えます。

1. まず、コンフリクトが発生していることを確認します。

    ```bash
    git status
    ```

    上記のコマンドでコンフリクトが発生しているファイルを確認できます。

2. `develop` ブランチの内容を優先してコンフリクトを解消する場合、次のコマンドを使用します。

    ```bash
    git checkout --theirs -- [conflicted_file_or_directory]
    ```

    このコマンドで、指定したコンフリクトファイルやディレクトリの内容が `develop` ブランチのものに置き換わります。

    例えば、`somefile.txt` というファイルでコンフリクトが発生している場合:

    ```bash
    git checkout --theirs -- somefile.txt
    ```

    もし、特定のディレクトリ内のすべてのファイルで `develop` ブランチの内容を優先したい場合:

    ```bash
    git checkout --theirs -- some_directory/
    ```

3. コンフリクトの解消後、変更をステージングエリアに追加します。

    ```bash
    git add [conflicted_file_or_directory]
    ```

4. すべてのコンフリクトを解消した後、操作を完了します。

    - マージの場合：

      ```bash
      git commit
      ```

    - リベースの場合：

      ```bash
      git rebase --continue
      ```

この手順で、`develop` ブランチの内容を優先してコンフリクトを解消できます。

### git stash
```
git stash
# スタッシュする

git stash list
# スタッシュ（退避）したリストを表示する

git stash clear
# スタッシュを全削除する

git stash drop stash@{N}
# 指定の退避内容を削除する

git stash pop
# 最新のスタッシュを適用し、適用したスタッシュを削除する

git stash pop stash@{N}
# N番目のスタッシュを適用し、適用したスタッシュを削除する

git stash apply
# 最新のスタッシュを適用し残す

git stash apply stash@{N}
# N番目のスタッシュを適用し、残す
```

### discard
Gitでワークツリーの変更を破棄（discard）したい場合、以下の方法で行えます。

1. **特定のファイルの変更を破棄する**

    もし、特定のファイル（例: `myfile.txt`）の変更を破棄したい場合:

    ```bash
    git checkout -- myfile.txt
    ```

2. **すべての変更を破棄する**

    ワークツリーのすべての変更を破棄するには:

    ```bash
    git checkout -- .
    ```

    ここでの`.`は、現在のディレクトリを指し、そのディレクトリ以下のすべてのファイル・ディレクトリの変更を破棄します。

3. **ステージングエリア（インデックス）の変更も含めて破棄する**

    ステージングエリアに追加した変更も含めて特定のファイルの変更を破棄する場合:

    ```bash
    git reset HEAD myfile.txt
    git checkout -- myfile.txt
    ```

    ステージングエリアのすべての変更とワークツリーの変更を破棄する場合:

    ```bash
    git reset --hard
    ```

変更を破棄する操作は取り返しがきかない場合があるため、操作を行う前に変更内容をよく確認し、必要であればバックアップを取ってください。