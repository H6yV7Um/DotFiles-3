handle SIG32 nostop noprint
set solib-search-path /opt/RYOS_SDK_Build20140504_V1.6.2.2/staging_dir/toolchain-mipsel_r2_gcc-4.6-linaro_uClibc-0.9.33.2/lib
target remote 192.168.99.1:12345
set heuristic-fence-post 300
set history save
set print pretty on
set can-use-hw-watchpoints 0
