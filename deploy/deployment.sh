#!/bin/bash
#
# Skrypt ściąga najnowsze wersje kodu z GitHuba
#

# Definicje
$DEPLOYMENT_DIR = /srv/GradientPG/deploy
$GIT_WRAPPER    = $DEPLOYMENT_DIR/git_ssh_wrapper.sh
$LOG_DIR        = $DEPLOYMENT_DIR/deployment_history.log

# Pullowanie z GitHuba
echo "[`date`] Starting deployment." >> $LOG_DIR
GIT_SSH=$GIT_WRAPPER git pull >> $LOG_DIR
echo "[`date`] End of deployment." >> $LOG_DIR
