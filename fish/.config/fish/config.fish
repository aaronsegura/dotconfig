if status is-interactive
    set fish_tmux_autostart once
    set fish_tmux_default_session_name primary
    set fish_tmux_autoconnect false
    set fish_tmux_unicode true
    set -gx EDITOR nvim
    abbr --set cat bat -P
    abbr --set ls lsd
    abbr --set vi nvim
    abbr --set vim nvim
    abbr --set gg lazygit
    abbr --set cls clear
end
