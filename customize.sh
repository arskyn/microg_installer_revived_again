#!/system/bin/sh

DEBUG_LOG="/data/adb/modules/microg_installer_revived_again/debug.log"
debug_log() {
  [ -f "/data/adb/modules/microg_installer_revived_again/debug_logging_enabled" ] || return
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] [customize.sh] $1" >> "$DEBUG_LOG" 2>/dev/null
}

debug_log "=== customize.sh START ==="
debug_log "ZIPFILE=$ZIPFILE"
debug_log "MODPATH=$MODPATH"
debug_log "BOOTMODE=$BOOTMODE"

if [ -n "$MMM_EXT_SUPPORT" ]; then
  ui_print "#!useExt"
  mmm_exec() {
    ui_print "$(echo "#!$@")"
  }
else
  mmm_exec() { true; }
fi
debug_log "✓ MMM_EXT_SUPPORT=$MMM_EXT_SUPPORT"

if ! $BOOTMODE; then
    debug_log "✗ ABORT: not in BOOTMODE"
    abort "- ERROR: Installation via recovery is NOT supported."
fi

mmm_exec setSupportLink "https://github.com/spacealtctrl/microg_installer_revived_again/issues"
mmm_exec showLoading

ui_print " "
ui_print "==================================="
ui_print "  microG Installer Revived.... again"
ui_print "  $(grep '^version=' "$MODPATH/module.prop" | cut -d= -f2)"
ui_print "==================================="
ui_print " "

cp "$ZIPFILE" "$MODPATH/module.zip"
debug_log "✓ copied zip to $MODPATH/module.zip (exit=$?)"

if [ -f "/data/adb/modules/microg_installer_revived_again/settings.json" ]; then
    cp "/data/adb/modules/microg_installer_revived_again/settings.json" "$MODPATH/settings.json"
    debug_log "✓ preserved settings.json"
fi

if [ -f "/data/adb/modules/microg_installer_revived_again/debug_logging_enabled" ]; then
    touch "$MODPATH/debug_logging_enabled"
    debug_log "✓ preserved debug_logging_enabled"
fi

ui_print " "
ui_print "==================================="
ui_print "  Module installed."
ui_print "  Use the WebUI to manage microG."
ui_print "==================================="
ui_print " "

debug_log "✓ === customize.sh DONE ==="
mmm_exec hideLoading
