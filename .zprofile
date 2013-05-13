
# New environment setting added by Sourcery CodeBench Lite for ARM EABI on Thu Jul 05 17:04:19 CST 2012 1.
# The unmodified version of this file is saved in /home/jinleileiking/.zprofile2131715756.
# Do NOT modify these lines; they are used to uninstall.
PATH="/home/jinleileiking/crosstools/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin:${PATH}"
export PATH
# End comments by InstallAnywhere on Thu Jul 05 17:04:19 CST 2012 1.


if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  #exec startx -- vt01
#   exec startx 
  # Could use xinit instead of startx
  #exec xinit -- /usr/bin/X -nolisten tcp vt7
fi
