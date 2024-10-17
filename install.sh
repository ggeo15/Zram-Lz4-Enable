check_lz4_support() {
    if zcat /proc/config.gz | grep -q "CONFIG_LZ4_COMPRESS=y"; then
        return 0  
    else
        return 1  
    fi
}
ui_print "Checking compatibility with LZ4... "
if check_lz4_support; then
    ui_print "LZ4 compatible device✅️. "
else
    ui_print "Device is not compatible with LZ4❎️."
fi