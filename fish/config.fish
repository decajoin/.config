if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/niss/miniconda3/bin/conda
    eval /home/niss/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/niss/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/niss/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/niss/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<



# 配置别名
# Tmux
alias ta="tmux attach -t"   # 连接到指定 tmux 会话
alias tls="tmux ls"         # 列出所有 tmux 会话
alias tnew="tmux new -s"    # 创建新 tmux 会话
alias tk="tmux kill-session -t"	# kill指定 tumx 会话
alias tmuxrc="vim ~/.tmux.conf"
# 文件和目录操作
alias ll="ls -lh"           # 显示详细信息的列表格式
alias la="ls -A"            # 显示隐藏文件
alias l="ls -CF"            # 列出文件并标记类型
alias ..="cd .."            # 返回上一级目录
alias ...="cd ../.."        # 返回上两级目录
alias ....="cd ../../.."    # 返回上三级目录

function mkcd		    # 创建目录并进入该目录
    mkdir -p $argv; and cd $argv
end

# 时间和日期
alias now="date +'%Y-%m-%d %H:%M:%S'"   # 显示当前日期和时间
# 网络调试
alias pingg="ping google.com" # 测试与 Google 的网络连接
alias pingb="ping baidu.com" # 测试与 baidu 的网络连接
alias ports="netstat -tulanp" # 显示当前监听的端口和服务
# 常用命令
alias c="clear"             # 清屏
alias h="history"           # 查看历史命令
alias v="vim"               # 使用 vim 编辑器
alias e="exit"              # 退出终端
alias cpv="rsync -ah --progress"  # 显示进度条的复制命令
alias py="python3"        # 使用python3解释器
# fish
alias reload="source ~/.config/fish/config.fish" # 重新加载 fish 配置
alias fishrc="vim ~/.config/fish/config.fish"	 # 编辑 fish 配置文件  
# 快速导航
alias docs="cd ~/Documents"  # 进入 Documents 目录
alias dls="cd ~/Downloads"   # 进入 Downloads 目录
alias desk="cd ~/Desktop"    # 进入 Desktop 目录
alias proj="cd ~/Projects"   # 进入 Projects 目录
# 查找
alias f="find . -name"       # 查找文件
alias grep="grep --color=auto"  # 高亮显示 grep 结果
# 安全操作
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
# vim
alias vimrc="vim ~/.vimrc"
# 编译C++
function cpp
    if test (count $argv) -ne 1
        echo "Usage: compile_cpp filename.cpp"
        return 1
    end

    set filename (basename $argv[1] .cpp)
    g++ $argv[1] -o $filename

    if test $status -eq 0
        echo "Compilation successful: $filename"
    else
        echo "Compilation failed."
    end
end
# 编译c
function ccc
    if test (count $argv) -ne 1
        echo "Usage: cc filename.c"
        return 1
    end

    set filename (basename $argv[1] .c)
    gcc $argv[1] -o $filename

    if test $status -eq 0
        echo "Compilation successful: $filename"
    else
        echo "Compilation failed."
    end
end


