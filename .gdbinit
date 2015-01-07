handle SIG32 nostop noprint
set solib-search-path /opt/RYOS_SDK_Build20140504_V1.6.2.2/staging_dir/toolchain-mipsel_r2_gcc-4.6-linaro_uClibc-0.9.33.2/lib
#set heuristic-fence-post 300
set history save
set print pretty on
set can-use-hw-watchpoints 0
set confirm off 
#target remote 192.168.1.1:12345
target remote 192.168.99.1:12345
set heuristic-fence-post 300


define xac
    dont-repeat
    set $addr = (char *)($arg0)
    set $endaddr = $addr + $arg1
    while $addr < $endaddr
        printf "%p: ", $addr
        set $lineendaddr = $addr + 8
        if $lineendaddr > $endaddr
            set $lineendaddr = $endaddr
        end
        set $a = $addr
        while $a < $lineendaddr
            printf "%#02x ", *(char *)$a
            set $a++
        end
        printf "'"
        set $a = $addr
        while $a < $lineendaddr
            printf "%c", *(char *)$a
            set $a++
        end
        printf "'\n"
        set $addr = $addr + 8
    end
end

document xac
usage: xac address count
end
