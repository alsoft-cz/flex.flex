@echo off
set fcc_ver=out
call fcc.cmd -tu:rtl_advanced -tu:rtl_debug %*
set fcc_ver=
