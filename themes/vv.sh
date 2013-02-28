# Default Theme

if patched_font_in_use; then
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
else
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'232'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}


# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
        # "tmux_session_info 240 232" \
        "hostname 136 0" \
        # "ifstat 250 0" \
        "ifstat_sys 233 136" \
        # "lan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
        "wan_ip 235 136 ${TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}"\
        "vcs_branch 22 234" \
        "vcs_compare 196 234" \
        "vcs_staged 196 234" \
        "vcs_modified 196 234" \
        "vcs_others 196 234" \
	)
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
        # "earthquake 3 0" \
        "pwd 89 211" \
        # "mailcount 9 255" \
        "now_playing 69 0" \
        # "cpu 240 136" \
        # "load 237 167" \
        #"tmux_mem_cpu_load 234 136" \
        "battery 249 0" \
        # "weather 37 255" \
        # "xkb_layout 125 117" \
        "date_day 24 255" \
        # "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
        # "time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
        "utc_time 160 255 ${TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}" \
	)
fi
