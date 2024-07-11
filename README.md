# Ubuntu配置

## 使用方法

1. 运行脚本：

```bash
./setup_env.sh   
```

2. 配置按键映射

```bash
gnome-tweaks
```

> fish安装完成后会自动进入，此时输入`exit`退出即可
>
> 安装完成后，重启系统即可生效



这个脚本会自动执行以下操作：

1. 更新包列表并安装 Gnome Tweaks、Vim、Git、Fish、Tmux 和 curl。
2. 将 Fish 设置为默认 Shell。
3. 安装 Oh My Fish。
4. 下载你的 Fish 配置文件到 `~/.config/fish/config.fish`。
5. 安装 `neolambda` 主题。
6. 下载并配置你的 Vim 和 Tmux 设置到 `~/.vimrc` 和 `~/.tmux.conf`。
7. 安装 `vim-plug`。
8. 安装 Node.js。

