usr/                                                                                                0000755 0000000 0000000 00000000000 12644755744 010407  5                                                                                                    ustar   root                            root                                                                                                                                                                                                                   usr/boot/                                                                                           0000755 0000000 0000000 00000000000 12644755744 011352  5                                                                                                    ustar   root                            root                                                                                                                                                                                                                   usr/boot/ipkg/                                                                                      0000755 0000000 0000000 00000000000 12644755744 012304  5                                                                                                    ustar   root                            root                                                                                                                                                                                                                   usr/boot/ipkg/pncg2-ftp-to-http-set_1.10.10_all.ipk                                                 0000644 0000000 0000000 00000002336 12644755744 020511  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   !<arch>
debian-binary/  1452530657  0     0     100644  4         `
2.0
data.tar.gz/    1452530657  0     0     100644  653       `
� �ۓV �]o�0�s�������$�HTpS�T���bL(�dK��6����CBK�X��i�a����NLK�;yI�\����q��`��JrQ��ܯT���KS�1PX�߭{i�Ŵ�:l�g`k��r�?�����&��9��o�E��,�O��`�`{��v������8�l��!"�r�T��{m���Kr������@~����?��(g����=M�^7:�v�Ѽ�7/�5B4߅�`x@�1gV8�� p��E�P9R���9�Op£���1�R�9p]:�T�l�BSi��L@^�)'a�PF�C	��>���\_Kӭ��OZx��E�oj�T�Հ̛t�����˚~2b42����'=�!��FVؼsBߥ\�h�3��:��7�ϭé1f~����o�J�p&_�h���
�K?�O�]&z�hY�z2)uH^E��Ϯ�\��nZ�+�M����fU�OEӢ��Ƈ�c�<��L��&�c�͜���D@�9�.�cE������O�h~ኍQo޵3�����jYs;o��0U�$X(E��D���Qx�pa�r:�k���8:I�����ҳ�{���@���*�#����_�� � � � � � ��z� (  
control.tar.gz/ 1452530657  0     0     100644  399       `
� �ۓV ��KK�0 ���+�ބ6ۗ�"��.����פNR_����ATtOU���#4�4m:i���MHU�Ù�?�4;(
jT��U�U�,�Z�>4(e�΅��m����9��#>ܶ����e�Fr2ސ^�����Q��*���N��!�A��y,dg�"�硋���!t�k4]H6vE"�}�jn���AP@]Շ^���l�[�,P̟~;_����j�{�s������i���y^p���F�4�?��:S�����v�lan,�b:gky�x�h��TK��� 5��C�4I'���K�[��Y��Ecl�������Lk��d�G�:���%�6K���� f�eYZ���]�xs5ͳ��c�1�c�1�c�1�c���5�h (  
                                                                                                                                                                                                                                                                                                  usr/boot/ipkg/patch-pncg2-ftp-to-http_3.10.10_all.ipk                                               0000644 0000000 0000000 00000001152 12644755744 021012  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   !<arch>
debian-binary/  1452530657  0     0     100644  4         `
2.0
data.tar.gz/    1452530657  0     0     100644  105       `
� �ۓV �λ�0@��
��q=T����CH D���H/����Zʑ�9����9�R�}��:t���E��6-)�2��U��         /���e (  
control.tar.gz/ 1452530657  0     0     100644  320       `
� �ۓV ���J�0���y�v�mk��(�a.�1Mw�%����O�l�TD�?�$L���IV��RV��<�����gE�IU�q���4���E�4�
RF�{�.��?*Yi�(�~�;���~���(?�?��d�`M��y�wJ?����H����:�h����A4~
����dk:�L+��zW�G5��K/��y��L�<�R~�M�K���,���^YG��P��v{��K���1��5�q�XK^�:��t��X���qd;��1*����k�q�Ҿ7m|
��2                �B� �^�� (                                                                                                                                                                                                                                                                                                                                                                                                                        usr/boot/setup.sh                                                                                   0000777 0000000 0000000 00000042312 12644755744 013057  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   #!/bin/sh
#
# 
# INNES firmware patch setup
#
# Historique :
#   2007-05-15 -- C. Mouraud - creation
# Usage : install_firmware

# code d erreurs
# exit_func 0 "Normal terminaison"
# exit_func 1 "Program interrupt by user"
# exit_func 2 "Abnormal terminaison"
# exit_func 3 "Error : Patch cannot be applied on a platform without firmware previously installed"
# exit_func 4 "Error: you are trying to install a patch for $PLAYER, on a $PLAYER_INSTALLED platform!"
# exit_func 5 "No firmware file"
# delete_firmware_and_reboot 6 "Bad firmware name \"$($LD_SO /var/basename "$FIRMWARE_FILE")\""
# delete_firmware_and_reboot 7 "Can't find size for device $RealUsrDev"
# delete_firmware_and_reboot 8 "Available space is insufficient for firmware installation"
# delete_firmware_and_reboot 9 "Error while extracting firmware \"$FIRMWARE_FILE\""
# delete_firmware_and_reboot 10 "The file extracted is corrupted"
# delete_firmware_and_reboot 11 "Error while copying ipkg"
# delete_firmware_and_reboot 12 "Error while executing firmware preinst script"
# delete_firmware_and_reboot 13 "Error while installing firmware"
# delete_firmware_and_reboot 14 "Error while executing firmware post list1 installation script"
# delete_firmware_and_reboot 15 "Error while executing firmware postinst script"

#pb: export doesn't work, value is set again.
LD_SO="/var/ld.so"

#copy all /sbin busybox link in /var
copy_busybox_sbin ()
{
	#busybox and sh are already in /var (cf. firmware.sh)
	#but every other links in /sbin must be copied in /var
	#links from /sbin
	files=$(/bin/ls -1 "/sbin")
	for file in $files; do
		link=$(/bin/ls -l "/sbin/$file" | /bin/grep -e '[-][>] [.][.]/bin/busybox')
		if /bin/test -n "$link" -a ! -L "/var/$file" ; then
			#echo "$file -> busybox"
			/bin/ln -s -f "/var/busybox" "/var/$file"
		fi
	done
}

#copy necessary binaries
copy_bin ()
{
	#add here the binaries needed in this script
	copy_busybox_sbin
}

# Before flashing rootfs, copy busybox and other executable used under /var
# The libraries /lib and  and the binaries /bin are already copied under /var by firmware.sh
# ***MUST BE DONE FIRST***
copy_bin
# ***END COPy IN /var***

# ****************************************************
# *** UNDER this line, you MUST USED $LD_SO /var ! ***
# ****************************************************
CmdName=`$LD_SO /var/basename $0`
Desc="$CmdName: Firmware patch setup"
#
# Options test
for i in  $*
do
  
    case $1 in
      -u) Usage=1;;
      -h) Usage=1;;
      --help) Usage=1;;
      -d) Debug=1; Verbose=1; opts="$opts -d";;
      -v) Verbose=1; opts="$opts -v";;
      -s) Silent=1; opts="$opts -s";;
      -noinstall) NoInstall=1; opts="$opts -noinstall";;
      -nodelete) NoDelete=1; opts="$opts -nodelete";;
      -*) echo "$CmdName: $1: incorrect option";
          Usage=1;;
      *) break;
    esac
	shift;
done

if [ -n "${Usage}" ]; then
          cat <<-End
$Desc
$CmdName [-u|-h|--help] [-nodelete] [-noinstall] [-v] [-s]
 -nodelete : firmware file is not removed
 -noinstall : firmware file is not installed
 -v :  verbose mode
 -s :  silence mode
End
exit 1
fi

# Variables set during firmware creation 
INSTALL_DIR_IN_RELATIVE="usr/boot"
INSTALL_DIR="/$INSTALL_DIR_IN_RELATIVE"
TEMP_INSTALL_DIR="/var/firmware/extract"


LOG_DIR="/usr/boot"
LOG_FILE="/usr/boot/firmware_patch.log"
SCRIPT_DIR=${TEMP_INSTALL_DIR}${INSTALL_DIR}/scripts
IMAGE_DIR=${TEMP_INSTALL_DIR}${INSTALL_DIR}/images
IPKG_DIR=${TEMP_INSTALL_DIR}${INSTALL_DIR}/ipkg
FIRMWARE_DIR="/usr/software"
FIRMWARE_FILE=$(find $FIRMWARE_DIR -iname "*.frm" 2>/dev/null)
if [ "$FIRMWARE_FILE" = "" ] ; then
	FIRMWARE_FILE=$(find $FIRMWARE_DIR -name "*.frm" 2>/dev/null)
fi
PLAYER="smp200"
IPKG_LIST1="${SCRIPT_DIR}/list1"
IPKG_LIST2="${SCRIPT_DIR}/list2"
MD5SUM_FILE="CHECKSUMS.md5"

# Export variables needed by the other scripts
export SCRIPT_DIR

decode_firmware()
{
	echo "TODO"
}
debug ()
{
	if $LD_SO /var/test -n "$Debug" ; then
		$LD_SO /var/echo "$*"
	fi
}
verbose ()
{
	if $LD_SO /var/test -n "$Verbose" ; then
		$LD_SO /var/echo "$*"
	fi
	log "$*"
}
log ()
{
	$LD_SO /var/echo "$*" 2>&1 >> ${LOG_FILE}
}
line ()
{
	verbose "------------------------------------------------------------"
}
step ()
{
	count_step=${count_step:-"1"}
	line
	verbose "STEP${count_step} : $1"
	line
	count_step=$($LD_SO /var/expr ${count_step} + 1)
}
info ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo "$*"
	fi
	log  "$*"
}
wait_begin ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo -n $* " ..."
	fi
}
wait_end ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo  " $*"
	fi
}
warning  ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo "Warning : $*"
	fi
	log  "Warning : $*"

}
error  ()
{
	$LD_SO /var/echo "$*"
	log "$*"
}
ctrlc ()
{
	info "$CmdName: Program interrupt by user"
	exit_func  1 "Program interrupt by user"
	end
}
no_stop ()
{
	info "$CmdName: Signal interception"
}
abnormal_end ()
{
	info "$CmdName: Abnormal terminaison"
	exit_func  2 "Abnormal terminaison"
}
normal_end ()
{
	exit_func 0 "Normal terminaison"
}
begin()
{
	log "------------------------------------------------------------"
	log "Launching $CmdName at $($LD_SO /var/date)"
}
end()
{
	log "------------------------------------------------------------"
	log "Exiting $CmdName at $($LD_SO /var/date)"
}
exit_func ()
{
	code=$1
	reason=$2
	if $LD_SO /var/test "$code" = "0" ; then
		verbose "$CmdName: Exiting --- code : $code reason: $reason"
	else
		error "$CmdName: Exiting --- code : $code reason: $reason"
	fi
	#Delete temporary firmware extraction directory
	if $LD_SO /var/test -d $TEMP_INSTALL_DIR ; then
		run $LD_SO /var/rm -fr $TEMP_INSTALL_DIR
	fi
	#test if /bin/_sh has to be rename in /bin/sh
	if $LD_SO /var/test -e "/bin/_sh" ; then
		run $LD_SO /var/mv -f /bin/_sh /bin/sh
	fi
	run $LD_SO /var/sync
	end
	trap "" 0
	exit $code
}
run ()
{
	cmd="$*"
	verbose ">$cmd"
	output=
	output=$(eval $cmd)
	status=$?
	verbose "${output}"
	if $LD_SO /var/test "$status" = 0 ; then
		verbose "Successfully terminated "
	else
		verbose "Abnormal terminaison ($status)"
	fi
	
	return $status
}

delete_firmware_and_reboot ()
{
	code=$1
	reason=$2
	if $LD_SO /var/test "$code" = "0" ; then
		verbose "$CmdName: Exiting --- code : $code reason: $reason"
	else
		error "$CmdName: Exiting --- code : $code reason: $reason"
	fi
	info "Delete \"$FIRMWARE_FILE\""
	run $LD_SO /var/rm -f \""$FIRMWARE_FILE"\"
	#Remove temporary install directory
	$LD_SO /var/test -d $TEMP_INSTALL_DIR && run $LD_SO /var/rm -fr $TEMP_INSTALL_DIR

	#In case of ipkg install problem, /bin/_sh may has to be moved in /bin/sh
	if $LD_SO /var/test -e "/bin/_sh" ; then
		run $LD_SO /var/mv -f /bin/_sh /bin/sh
	fi
	run $LD_SO /var/sync
	run $LD_SO /var/sleep 10
	info "Reboot"
	if [ "$PLAYER" = "RMP100" ] || [ "$PLAYER" = "rmp100" ] || [ "$PLAYER" = "RMP200" ] || [ "$PLAYER" = "rmp200" ];then
		run $LD_SO /var/sh /etc/reboot.sh
	else
		run $LD_SO /var/reboot
	fi
}

check_firmware_files ()
{
	while read md5sum_read filename
	do
		wait_begin "Checking file $filename"
		md5sum_calculated=$(cd $TEMP_INSTALL_DIR && /var/md5sum $filename)
		set $md5sum_calculated
		md5sum_installed=$1
		if [ $md5sum_installed = $md5sum_read ] ; then
			wait_end "Done"
			log "$filename OK"
		else
			wait_end "Failure"
			log "$filename KO"
			log "MD5SUM of the file extracted: $md5sum_installed"
			log "MD5SUM reference: $md5sum_read"
			delete_firmware_and_reboot 10 "The file extracted is corrupted"
		fi
	done < $TEMP_INSTALL_DIR/$MD5SUM_FILE
}

copy_ipkg_from_frm ()
{
	#Save ipkg binary and library present under /var
	info "Move /var/ipkg"
	run $LD_SO /var/mkdir /var/save_ipkg
	run $LD_SO /var/mv -f /var/ipkg /var/save_ipkg/ipkg
	run $LD_SO /var/mv -f /var/libipkg.so.0 /var/save_ipkg/libipkg.so.0
	run $LD_SO /var/mv -f /var/ipkg.conf /var/save_ipkg/ipkg.conf
	if $LD_SO /var/test -f /var/ipkg || $LD_SO /var/test -f /var/libipkg.so.0 ; then
		info "Move /var/ipkg failed"
		delete_firmware_and_reboot 11 "Error while copying ipkg"
	fi
	#Copy ipkg from the firmware file to /var
	info "Copy ipkg from $TEMP_INSTALL_DIR to /var"
	run $LD_SO /var/cp -f $TEMP_INSTALL_DIR/$INSTALL_DIR_IN_RELATIVE/bin/ipkg /var/ipkg
	run $LD_SO /var/cp -f $TEMP_INSTALL_DIR/$INSTALL_DIR_IN_RELATIVE/lib/libipkg.so.0 /var/libipkg.so.0
	run $LD_SO /var/cp -f $TEMP_INSTALL_DIR/$INSTALL_DIR_IN_RELATIVE/lib/ipkg.conf /var/ipkg.conf
	if $LD_SO /var/test ! -f /var/ipkg || $LD_SO /var/test ! -f /var/libipkg.so.0 ; then
		info "Copy ipkg failed"
		delete_firmware_and_reboot 11 "Error while copying ipkg"
	fi
	#Check if the ipkg lib and binary from firmware file work
	run $LD_SO /var/ipkg list
	if $LD_SO /var/test "$?" != "0" ; then
		info "Ipkg in firmware is not valid, restore old ipkg"
		info "Delete /var/ipkg"
		run $LD_SO /var/rm -f /var/ipkg
		run $LD_SO /var/rm -f /var/libipkg.so.0
		run $LD_SO /var/rm -f /var/ipkg.conf
		if $LD_SO /var/test -f /var/ipkg || $LD_SO /var/test -f /var/libipkg.so.0 ; then
			info "Delete /var/ipkg failed"
			delete_firmware_and_reboot 11 "Error while copying ipkg"
		fi
		info "Move old ipkg"
		run $LD_SO /var/mv -f /var/save_ipkg/ipkg /var/ipkg
		run $LD_SO /var/mv -f /var/save_ipkg/libipkg.so.0 /var/libipkg.so.0
		run $LD_SO /var/mv -f /var/save_ipkg/ipkg.conf /var/ipkg.conf		
		if $LD_SO /var/test ! -f /var/ipkg || $LD_SO /var/test ! -f /var/libipkg.so.0 ; then
			info "Move old ipkg failed"
			delete_firmware_and_reboot 11 "Error while copying ipkg"
		fi
	else
		info "Ipkg in firmware is valid"
	fi
	run $LD_SO /var/rm -rf /var/save_ipkg
}

uninstall_ipk ()
{
	if $LD_SO /var/test -f ${SCRIPT_DIR}/uninstall.sh ; then
		step "${SCRIPT_DIR}/uninstall.sh"
		$LD_SO /var/sh	${SCRIPT_DIR}/uninstall.sh "$opts"
		if $LD_SO /var/test "$?" != "0" ; then
			info "Error while uninstalling packages of $IPKG_LIST"
		fi
	fi 
}
#****************************************************************************************************
#								Begin of setup script execution
#****************************************************************************************************

# Remove the last log file
$LD_SO /var/rm -f ${LOG_FILE}
# Remove firmware temporary install directory
if $LD_SO /var/test -d $TEMP_INSTALL_DIR ; then
	run $LD_SO /var/rm -fr $TEMP_INSTALL_DIR
fi

if $LD_SO /var/test "$FIRMWARE_FILE" = "" ; then
	info "You try to install a 3G patch on an old 2G version"
	FIRMWARE_FILE=$(ls /usr/playout/.software/*.frm)
fi

DISABLE_INSTALL_2G=
if $LD_SO /var/test "$DISABLE_INSTALL_2G" = "1" ; then
	run $LD_SO /var/rm -f \""$FIRMWARE_FILE"\" 
	exit_func 3 "Error : You are not allowed to install this 3G patch on an old 2G version"
fi

# Check if it is not the first release
if $LD_SO /var/test -e /var/kdb; then
	PLAYER_INSTALLED=$($LD_SO /var/kdb get system/firmware/platform)
	if $LD_SO /var/test "$PLAYER_INSTALLED" = "" ; then
		PLAYER_INSTALLED=$($LD_SO /var/kdb get system/firmware/player)
	fi
else
	run $LD_SO /var/rm -f \""$FIRMWARE_FILE"\" 
	exit_func 3 "Error : Patch cannot be applied on a platform without firmware previously installed"
fi
# Check if the firmware is for this platform
LOWERCASE_PLAYER_INSTALLED=`$LD_SO /var/echo $PLAYER_INSTALLED | $LD_SO /var/tr '[A-Z]' '[a-z]'`
if $LD_SO /var/test "$PLAYER_INSTALLED" = ""  || $LD_SO /var/test "$PLAYER" != "$PLAYER_INSTALLED" && $LD_SO /var/test "$PLAYER" != "$LOWERCASE_PLAYER_INSTALLED" ;then
	run $LD_SO /var/rm -f \""$FIRMWARE_FILE"\" 
	exit_func 4 "Error: you are trying to install a patch for $PLAYER, on a $PLAYER_INSTALLED platform!"
fi



#
# Trap
trap ctrlc 2
trap normal_end 0
count_step=1
tiret_line="------------------------------------------------------------"
info "$tiret_line"
info "         Firmware Patch setup"
info "$tiret_line"
if $LD_SO /var/test ! -f "$FIRMWARE_FILE" ; then
	exit_func 5 "No firmware file"
fi
# Firmware version
# Doesn't work with busybox sed 
Version=$($LD_SO /var/basename \""$FIRMWARE_FILE"\" | $LD_SO /var/sed -e "s/[^-]*-//g" | $LD_SO /var/sed -e "s/.frm$//")
if $LD_SO /var/test -z "$Version" ; then
	info "Bad firmware name \"$($LD_SO /var/basename "$FIRMWARE_FILE")\""
	delete_firmware_and_reboot 6 "Bad firmware name \"$($LD_SO /var/basename "$FIRMWARE_FILE")\""
fi


info "Version: $Version"
info ""

# Check available size
# The firmware maximum size is calculated during firmware creation
# DO NOT CHANGE the variables between @ which are replaced during firmware creation
Size="63320"
UsrDev="/dev/root"
Description="pncg2 ftp to http patch for platform smp200"
export Description

Line=$($LD_SO /var/df  | $LD_SO /var/grep "$UsrDev")
if $LD_SO /var/test -z "$Line" ; then
    # test if $UsrDev is a symlink
    RealUsrDev="$UsrDev"
    if $LD_SO /var/test -h "$UsrDev" ;then
		RealUsrDev=$($LD_SO /var/readlink "$UsrDev")
		verbose "device $UsrDev is a symlink to $RealUsrDev"
    fi

    Line=$($LD_SO /var/df  | $LD_SO /var/grep "$RealUsrDev")
	if $LD_SO /var/test "$Line" = "" ; then
		Line=$($LD_SO /var/df  | $LD_SO /var/grep /dev/harddisk1)
	fi
	if $LD_SO /var/test "$Line" = "" ; then
		tmpRealUsrDev=$($LD_SO /var/readlink /dev/harddisk1)
		Line=$($LD_SO /var/df  | $LD_SO /var/grep "$tmpRealUsrDev")
	fi
    if $LD_SO /var/test -z "$Line" ; then
		delete_firmware_and_reboot 7 "Can't find size for device $RealUsrDev"
    fi
fi
SizeBloc=1024
set $Line
Used=$($LD_SO /var/expr $3 \* $SizeBloc)
verbose "device : $UsrDev"

AvailableInKb=$($LD_SO /var/expr $4)
verbose "available size : $AvailableInKb Kbytes"

UsrFrmSizeInKb=$($LD_SO /var/expr $Size \/ $SizeBloc)
verbose "frm size : $UsrFrmSizeInKb Kbytes"

#step 1 : space verification
if $LD_SO /var/test "$AvailableInKb" -lt "$UsrFrmSizeInKb" ; then
	delete_firmware_and_reboot 8 "Available space is insufficient for firmware installation"
fi

#step 2: Firmware extraction and check extracted file with MD5SUM
#The firmware file has to be extracted under a temporary directory.
step "Firmware extraction"

run $LD_SO /var/mkdir -p $TEMP_INSTALL_DIR  # Temporary directory creation
wait_begin "Firmware extraction"
(cd $TEMP_INSTALL_DIR && $LD_SO /var/tar xvf "$FIRMWARE_FILE" 2>&1 >> ${LOG_FILE})
if $LD_SO /var/test "$?" != "0" ; then
	wait_end "Failure"
	info "Can't untar \"$FIRMWARE_FILE\" file"
	delete_firmware_and_reboot 9 "Error while extracting firmware \"$FIRMWARE_FILE\""
fi
wait_end "Done"
info "$tiret_line"

#Check of the extracted files integrity
line
verbose "Check of the extracted files integrity"
line
check_firmware_files
info "$tiret_line"

#step 3: Replace player's ipkg binary and library by those present in the firmware
copy_ipkg_from_frm

#step 4: Launch firmware preinstall script if this file is present
if $LD_SO /var/test -f ${SCRIPT_DIR}/preinst_frm.sh ; then
	step "Firmware preinstall script"
	$LD_SO /var/sh ${SCRIPT_DIR}/preinst_frm.sh
	if $LD_SO /var/test "$?" != "0" ; then
		delete_firmware_and_reboot 12 "Error while executing firmware preinst script"
	fi
	info "$tiret_line"
fi

# step 5 : Install list 1 packages
trap no_stop 2
export count_step
IPKG_LIST=$IPKG_LIST1 # select the list 1 packages !!
export IPKG_LIST
step "${SCRIPT_DIR}/install.sh ${IPKG_LIST} "
#add -z option : must NOT erase IPKG_DIR! (needed for list2)
$LD_SO /var/sh ${SCRIPT_DIR}/install.sh $opts -nodelete
if $LD_SO /var/test "$?" != "0" ; then
	uninstall_ipk
	delete_firmware_and_reboot 13 "Error while installing firmware"
fi
count_step=$($LD_SO /var/expr ${count_step} + 1) #add 1 for step Verify in install.sh
info "$tiret_line"

#step 6: Launch firmware post list 1 install script if this file is present
if $LD_SO /var/test -f ${SCRIPT_DIR}/postlist1_frm.sh ; then
	step "Firmware post list1 installation script"
	$LD_SO /var/sh ${SCRIPT_DIR}/postlist1_frm.sh
	if $LD_SO /var/test "$?" != "0" ; then
		uninstall_ipk
		delete_firmware_and_reboot 14 "Error while executing firmware post list1 installation script"
	fi
	info "$tiret_line"
fi

# step 7 : Install list 2 packages
trap no_stop 2
export count_step
IPKG_LIST=$IPKG_LIST2 # select the list 2 packages!!
export IPKG_LIST
step "${SCRIPT_DIR}/install.sh ${IPKG_LIST} "
#add -z option : must NOT erase IPKG_DIR! (needed for list2)
$LD_SO /var/sh ${SCRIPT_DIR}/install.sh $opts -nodelete
if $LD_SO /var/test "$?" != "0" ; then
	uninstall_ipk
	IPKG_LIST=$IPKG_LIST1 # list 2 packages are uninstalled, so select list 1 packages to be removed!!
	export IPKG_LIST
	uninstall_ipk
	delete_firmware_and_reboot 13 "Error while installing firmware"
fi
count_step=$($LD_SO /var/expr ${count_step} + 1) #add 1 for step Verify in install.sh
info "$tiret_line"

#step 8 : Launch firmware post install script if this file is present
if $LD_SO /var/test -f ${SCRIPT_DIR}/postinst_frm.sh ; then
	step "Firmware postinstall script"
	$LD_SO /var/sh ${SCRIPT_DIR}/postinst_frm.sh
	if $LD_SO /var/test "$?" != "0" ; then
		uninstall_ipk
		IPKG_LIST=$IPKG_LIST1 # list 2 packages are uninstalled, so select list 1 packages to be removed!!
		export IPKG_LIST
		uninstall_ipk
		delete_firmware_and_reboot 15 "Error while executing firmware postinst script"
	fi
	info "$tiret_line"
fi


#step 9 : Remove temporary install directory
#run $LD_SO /var/rm -fr "$IPKG_DIR"
#run $LD_SO /var/rm -fr "$IMAGE_DIR"
#run $LD_SO /var/rm -fr "$SCRIPT_DIR"
run $LD_SO /var/rm -fr "$TEMP_INSTALL_DIR"

#step 10 : Remove firmware file
if $LD_SO /var/test -z "$NoDelete" ; then
	run $LD_SO /var/rm -f \""$FIRMWARE_FILE"\"
fi
run $LD_SO /var/sync

# test if /bin/_sh has not be moved in /bin/sh
if $LD_SO /var/test -e "/bin/_sh" ; then
	run $LD_SO /var/mv -f /bin/_sh /bin/sh
fi

run $LD_SO /var/sleep 10

#step 11 : reboot 
run $LD_SO /var/reboot -d -f 
exit 0
                                                                                                                                                                                                                                                                                                                      usr/boot/scripts/                                                                                   0000755 0000000 0000000 00000000000 12644755744 013041  5                                                                                                    ustar   root                            root                                                                                                                                                                                                                   usr/boot/scripts/preinst_frm.sh                                                                     0000777 0000000 0000000 00000001523 12644755744 015735  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   #****************************************************************************************************
# step : pre-installation script
#****************************************************************************************************

# Error codes
#exit_func 1 "Patch cannot be applied on a platform which is not rmp200"

#Load utility functions
. ${SCRIPT_DIR}/utils.lsh

uninstall_ipk ()
{
	if $LD_SO /var/test -f ${SCRIPT_DIR}/uninstall.sh ; then
		#step "${SCRIPT_DIR}/uninstall.sh"
		$LD_SO /var/sh	${SCRIPT_DIR}/uninstall.sh "$opts"
		if $LD_SO /var/test "$?" != "0" ; then
			exit_func 1 "Error while uninstalling old firmware"
		fi
	fi 
}

# Remove the previous packages of the list1 to avoid conflicts with future patchs
info "Remove the previous packages of the list1"
IPKG_LIST=${SCRIPT_DIR}/list1
export IPKG_LIST
uninstall_ipk

exit 0                                                                                                                                                                             usr/boot/scripts/postlist1_frm.sh                                                                   0000777 0000000 0000000 00000001423 12644755744 016212  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   #****************************************************************************************************
# step : post-list1 script
#****************************************************************************************************

# Error codes
#exit_func 1 "Error while uninstalling old firmware"

#Load utility functions
. ${SCRIPT_DIR}/utils.lsh

uninstall_ipk ()
{
	if $LD_SO /var/test -f ${SCRIPT_DIR}/uninstall.sh ; then
		step "${SCRIPT_DIR}/uninstall.sh"
		$LD_SO /var/sh	${SCRIPT_DIR}/uninstall.sh "$opts"
		if $LD_SO /var/test "$?" != "0" ; then
			exit_func 1 "Error while uninstalling old firmware"
		fi
	fi 
}

# Remove the previous packages of the list2
info "Remove the previous packages of the list2"
IPKG_LIST=${SCRIPT_DIR}/list2
export IPKG_LIST
uninstall_ipk

exit 0
                                                                                                                                                                                                                                             usr/boot/scripts/list1                                                                              0000777 0000000 0000000 00000000027 12644755744 014026  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                    pncg2-ftp-to-http-set
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         usr/boot/scripts/uninstall.sh                                                                       0000777 0000000 0000000 00000004365 12644755744 015425  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   #!/var/sh
#
# 
# Remove all ipk packages listed in /usr/boot/ipk/Listt
#
# Historique :
#   2007-04-17 -- C. Mouraud - creation
# Usage : install_ipk.sh [-u|-h|--help] [-nodelete] [-v]

#pb: export doesn't work, value is set again.
LD_SO="/var/ld.so"

CmdName=`$LD_SO /var/basename $0`
Desc="$CmdName: Remove all ipk packages listed in /usr/boot/ipk/List"
#
# Options test
for i in  $*
do
  
    case $1 in
      -u) Usage=1;;
      -h) Usage=1;;
      --help) Usage=1;;
      -d) Debug=1; opts="$opts -d";;
      -v) Verbose=1;;
      -s) Silent=1;;
      -*) echo "$CmdName: $1: wrong option";
          Usage=1;;
      *) break;
    esac
	shift;
done
if $LD_SO /var/test -n "${Usage}" ; then
          $LD_SO /var/cat <<-End
$Desc
$CmdName [-u|-h|--help] [-nodelete] [-noinstall] [-v]
End
exit 1
fi

# Utility fonctions
. ${SCRIPT_DIR}/utils.lsh

#
# Change an ipkg filename into a package name
# @param file filename
# @return package name
file2name ()
{
	$LD_SO /var/echo $* | $LD_SO /var/sed -e "s/\([^_]*\)_.*/\1/g"
}
#
# Check if a package is installed
# @param name package name which is tested
# @return 1 if the package is installed, else 0
isinstalled ()
{
	name=$1
	
	status=$($LD_SO /var/ipkg files $name | $LD_SO /var/grep "not installed")
	if $LD_SO /var/test -n "$status" ; then
		debug "isinstalled \"$name\" : NO"
		return 0
	else
		debug "isinstalled \"$name\" : YES"
		return 1
	fi
}
#
# Remove a package
# @param name package name
# @param file package file
uninstall ()
{
	name=$1
	file=$2
	
		wait_begin "Removing package $name "
		verbose ""
		run "$LD_SO /var/ipkg -force-depends -nodeps remove $name 2>&1"
		if $LD_SO /var/test "$?" != "0" ; then
			wait_end "Failure"
		else
			wait_end "Done"
		fi
}
status=0
DATE=$($LD_SO /var/date)
trap ctrlc 2
trap normal_end 0
#trap abnormal_end 9,15
begin
#The variable IPKG_CONF_DIR is updated for that ipkg database (under /usr/lib/ipkg/list/) don't be used
export IPKG_CONF_DIR=/
if $LD_SO /var/test -f "${IPKG_LIST}" ; then
	IPKS_NAMES=$($LD_SO /var/cat $IPKG_LIST)
	for name in $IPKS_NAMES; do
		file=$($LD_SO /var/ls ${IPKG_DIR}/${name}_*.ipk 2>/dev/null)
		isinstalled "$name"
		installed=$?
		debug "installed: $installed"
		if $LD_SO /var/test "$installed" = "1" ; then
			uninstall $name $file
		fi
	done
fi
exit 0
                                                                                                                                                                                                                                                                           usr/boot/scripts/install.sh                                                                         0000777 0000000 0000000 00000017352 12644755744 015062  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   #!/var/sh
#
# 
# Install all packages ipk located under /usr/boot/ipkg
#
# Historique :
#   2007-04-17 -- C. Mouraud - creation
# Usage : install_ipk.sh [-u|-h|--help] [-nodelete] [-v]

#pb: export doesn't work, value is set again.
LD_SO="/var/ld.so"

CmdName=`$LD_SO /var/basename $0`
Desc="$CmdName: Installation de tous les packages ipk pr�sents sous /usr/lib/ipkg"
#
# Options test
for i in  $*
do

   case $1 in
      -u) Usage=1;;
      -h) Usage=1;;
      --help) Usage=1;;
      -d) Debug=1; opts="$opts -d";;
      -v) Verbose=1;;
      -s) Silent=1;;
      -noinstall) NoInstall=1;;
      -nodelete) NoDelete=1;;
      -*) echo "$CmdName: $1: option incorrecte";
          Usage=1;;
      *) break;
    esac
	shift;
done

if $LD_SO /var/test -n "${Usage}" ; then
          $LD_SO /var/cat <<-End
$Desc
$CmdName [-u|-h|--help] [-nodelete] [-noinstall] [-v]
 -nodelete : le package n'est pas supprim� apr�s installation
 -noinstall : le package n'est pas install�
 -a : ajout du suffixe
End
exit 1
fi

IPKG_INFO_DIR="/usr/lib/ipkg/info"

# Utility fonctions
. ${SCRIPT_DIR}/utils.lsh

#
# Change an ipkg filename into a package name
# @param file filename
# @return package name
file2name ()
{
	$LD_SO /var/echo $* | $LD_SO /var/sed -e "s/\([^_]*\)_.*/\1/g"
}
#
# Check if a package is installed
# @param name package name
# @return 1 if the package is installed, else 0
isinstalled ()
{
	name=$1
	status=$($LD_SO /var/ipkg files $name | $LD_SO /var/grep "not installed")
	if $LD_SO /var/test -n "$status" ; then
		debug "isinstalled \"$name\" : NO"
		return 0
	else
		debug "isinstalled \"$name\" : YES"
		return 1
	fi
}
#
# Return an ipkg field value
# SYNOPSIS:   f_field_ipkg pkg name
# @param $1 package name
# @param $2 field name
# @return field value
f_field_ipkg()
{
	Name=$1
	Field=$2
	Line=$($LD_SO /var/grep $Field "$IPKG_INFO_DIR/$Name.control")

	if $LD_SO /var/test -z "$Line" ; then
		#return 0 to be old packages compliant (without Installed-Size field)
		verbose "Warning : Field $Field is not defined in $IPKG_INFO_DIR/$Name.control or file doesn't exist" 
		return 0
	fi
	Value=$($LD_SO /var/echo "$Line" | $LD_SO /var/sed -e "s/^[^:]*:[[:space:]]*//")
	
	THEORIC_INSTALLED_SIZE=$Value
	
	return 1
	
}
#
# Check if all the package files have been installed, calculating the size of each file.
# @param name package name
check_installed_size ()
{
	name=$1
	# in case of boxpclinux platforms, awk is not present until verion 2.50.10
	# also, if awk is absent, the file size checking cannot be proccessed and 0 is returned
	if $LD_SO /var/test -h /var/awk ; #awk present
	then
		# The sum of all files that have been installed is calculated
		# WARNING: ls cannot be used with filenames with spaces !
		# The 1st awk get the list and insert quotation marks for each lines.
		# xargs gives each lines in argument to ls
		# sed remove lines beginning by 'b' or 'c' => remove nodes created by mknod (no size)
		# the last awk calculate the sum by adding the 5th element of each line (size get back by ls -al)
		INSTALLED_SIZE=$($LD_SO /var/awk 'BEGIN{RS="[\n]"} {print "\"" $0 "\""}' $IPKG_INFO_DIR/$name.list | xargs -n1 $LD_SO /var/ls -al 2>/var/null | $LD_SO /var/sed -e '/^[bc]/d' |  $LD_SO /var/awk '{sum=sum+$5} END {print sum}')
		
		#in rootfs case, /bin/sh must exist, otherwise, /bin/_sh should exist
		$LD_SO /var/echo ${name} | $LD_SO /var/grep "rootfs" > /var/null
		if $LD_SO /var/test $? -eq 0 ; then
			if ! $LD_SO /var/test -e "/bin/sh" ; then
				if $LD_SO /var/test -e "/bin/_sh" ; then
					BIN_SH_SIZE=$($LD_SO /var/ls -al /bin/_sh | $LD_SO /var/awk '{sum2=sum2+$5} END {print sum2}')
					INSTALLED_SIZE=$($LD_SO /var/expr $INSTALLED_SIZE + $BIN_SH_SIZE)
				fi
			fi
		fi
	 
		# get the theoric installed size taht has been previously calculated
		f_field_ipkg $name "Installed-Size" 
		THEORIC_INSTALLED_SIZE="$THEORIC_INSTALLED_SIZE"
		if $LD_SO /var/test $THEORIC_INSTALLED_SIZE = 0 ; then 
					#send jsut a warning to be old packages compliant (without Installed-Size field)
					verbose "Warning : Theoric installation size of \"$name\" ipkg is 0 (Installed size = $INSTALLED_SIZE)"
					return 0
		else
			# compare the values
			if $LD_SO /var/test $THEORIC_INSTALLED_SIZE -ne $INSTALLED_SIZE ; then
				verbose "Error Files installed have not the good size for \"$name\" (Theoric size = $THEORIC_INSTALLED_SIZE and Installed size = $INSTALLED_SIZE) "
				return 1			
			else 
				verbose "Theoric and real installed size are equivalent for \"$name\" ($THEORIC_INSTALLED_SIZE)"
				return 0
			fi
		fi
	else #awk absent
		f_field_ipkg $name "Installed-Size" 
		THEORIC_INSTALLED_SIZE="$THEORIC_INSTALLED_SIZE"
		verbose "Warning : awk is absent and we cannot get the installed size (Theoric size = $THEORIC_INSTALLED_SIZE)"
		return 0
	fi
}




#
# Management of package installation errors
# @param name package name
# In list2 case, kernel has to be installed to be able to make a second try
exit_install_on_failure ()
{
	name=$1
	wait_end "Failure"
	if $LD_SO /var/test $($LD_SO /var/echo ${IPKG_LIST} | $LD_SO /var/grep "list2") ; then
			#continue script to install the kernel
			info "Error installing \"$name\" (list2)"
			LIST2_RET_INSTALL=1
	else
			#exit install.sh
			exit_func 1 "Error installing \"$name\""
	fi

}
#
# Package installation
# @param name package name
# @param file package file
install ()
{
	name=$1
	file=$2
	if $LD_SO /var/test -n "$NoInstall" ; then
		info "Testing install for $name"
	else
		wait_begin "Installing package $name!"
		
		export PATH="/var:$PATH"
		export LD_LIBRARY_PATH="/var"
		run $LD_SO /var/ipkg -force-reinstall -nodeps install  $file
	
		if $LD_SO /var/test "$?" = 0 ; then
			#check if the size of package just installed fill the size previously calculated
			check_installed_size $name
			if $LD_SO /var/test "$?" = 0 ; then
				wait_end "Done"
			else
				#Size check reports a failure
				exit_install_on_failure $name
				return 2
			fi
		else
			#Package installation error
			exit_install_on_failure $name
			return 1
		fi
	fi
	return 0
}

status=0
DATE=$($LD_SO /var/date)
trap ctrlc 2
trap normal_end 0
#trap abnormal_end 9,15
begin
#The variable IPKG_CONF_DIR is updated for that ipkg database (under /usr/lib/ipkg/list/) don't be used
export IPKG_CONF_DIR=/
if $LD_SO /var/test -f "${IPKG_LIST}" ; then
# Install only the packages from the list that have not already been installed
	IPKS_NAMES=$($LD_SO /var/cat $IPKG_LIST)
	for name in $IPKS_NAMES; do
		file=$($LD_SO /var/ls ${IPKG_DIR}/${name}_*.ipk 2>/var/null)
		if $LD_SO /var/test -n "${file}"  && $LD_SO /var/test -f "${file}" ; then
			install $name $file
			RET_INSTALL=$?
			verbose "install returned $RET_INSTALL for $name"
		else
# Checks the package that has been previously installed
			isinstalled "$name"
			if  $LD_SO /var/test $? = "0" ; then
				error "Le package \"$name\" is requiered but is not installed"
			fi
		fi
	done
# Verify
	step "Verify installation"
	for name in $IPKS_NAMES; do
		isinstalled $name
		installed=$?
		debug "installed: $installed, status: $status"
		if $LD_SO /var/test "$installed" = "0" ; then
			exit_func 1 "Installation verification : \"$name\" not installed"
		fi
		verbose "\"$name\" : OK"
	done
else
# Install all the packages which are under the directory
	IPKG_FILES=$($LD_SO /var/ls ${IPKG_DIR}/*.ipk);
	for file in $IPKG_FILES; do
		name=$(file2name $file)
		install $name $file
		RET_INSTALL=$?
	done
fi
# Delete the package directory
if $LD_SO /var/test -z "$NoDelete" ; then
	verbose "remove IPKG_DIR!!"
	$LD_SO /var/rm -fr ${IPKG_DIR}
fi
#If the list2 package install (especially  rootfs) return an error code different from 0, 
#it means that the installation failed and the frm don't have to be deleted
if $LD_SO /var/test $LIST2_RET_INSTALL && $LD_SO /var/test $LIST2_RET_INSTALL -ne 0 ; then
	exit_func 1 "The installation of at least on package from list2 failed!"
fi


exit 0
                                                                                                                                                                                                                                                                                      usr/boot/scripts/list2                                                                              0000777 0000000 0000000 00000000031 12644755744 014022  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                    patch-pncg2-ftp-to-http
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       usr/boot/scripts/utils.lsh                                                                          0000777 0000000 0000000 00000005122 12644755744 014720  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   #!/bin/sh
# Utility fonctions used for INNES firmware installation.
# Historique :
#   2007-05-16 -- C. Mouraud - creation

#pb: export doesn't work, value is set again.
LD_SO="/var/ld.so"
CmdName=`$LD_SO /var/basename $0`

INSTALL_DIR_IN_RELATIVE="usr/boot"
INSTALL_DIR="/$INSTALL_DIR_IN_RELATIVE"
TEMP_INSTALL_DIR="/var/firmware/extract"
LOG_DIR="/usr/boot"
LOG_FILE="/usr/boot/firmware_patch.log"
SCRIPT_DIR=${TEMP_INSTALL_DIR}${INSTALL_DIR}/scripts
IPKG_DIR=${TEMP_INSTALL_DIR}${INSTALL_DIR}/ipkg


if $LD_SO /var/test -n "${Silent}" ; then
   Verbose=
fi
OutNull=" 2>&1 >> /dev/null"
OutLog=" 2>&1 >> ${LOG_FILE}"
if $LD_SO /var/test -z "${Verbose}" ; then
	Out=" 2>&1 >> ${LOG_FILE}"
fi

debug ()
{
	if $LD_SO /var/test -n "$Debug" ; then
		$LD_SO /var/echo "$*"
	fi
}
verbose ()
{
	if $LD_SO /var/test -n "$Verbose" ; then
		$LD_SO /var/echo "$*"
	fi
	log "$*"
}
log ()
{
	$LD_SO /var/echo "$*" 2>&1 >> ${LOG_FILE}
}
line ()
{
	verbose "------------------------------------------------------------"
}
step ()
{
	count_step=${count_step:-"1"}
	line
	verbose "STEP${count_step} : $1"
	line
	count_step=$($LD_SO /var/expr ${count_step} + 1)
}
info ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo "$*"
	fi
	log  "$*"
}
wait_begin ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo -n $* " ..."
	fi
	#log "$*" " ..."
}
wait_end ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo  " $*"
	fi
}
warning  ()
{
	if $LD_SO /var/test -z "$Silent" ; then
		$LD_SO /var/echo "Warning : $*"
	fi
	log  "Warning : $*"
	
}
error  ()
{
	$LD_SO /var/echo "$*"
	log "$*"
}
ctrlc ()
{
	info "$CmdName: Program interrupt by user"
	exit_func  1 "Program interrupt by user"
	end
}
abnormal_end ()
{
	info "$CmdName: Abnormal terminaison"
	exit_func  2 "Abnormal terminaison"
}
normal_end ()
{
	exit_func 0 "Normal terminaison"
}
begin()
{
	log "------------------------------------------------------------"
	log "Launching $CmdName at $($LD_SO /var/date)"
}
end()
{
	log "------------------------------------------------------------"
	log "Exiting $CmdName at $($LD_SO /var/date)"
}
exit_func ()
{
	code=$1
	reason=$2
	if $LD_SO /var/test "$code" = "0" ; then
		verbose "$CmdName: Exiting --- code : $code reason: $reason"
	else
		error "$CmdName: Exiting --- code : $code reason: $reason"
	fi
	end
	trap "" 0
	exit $code
}
run ()
{
	cmd="$*"
	verbose ">$cmd"
	output=
	output=$(eval $cmd)
	status=$?
	verbose "${output}"
	if $LD_SO /var/test "$status" = 0 ; then
		verbose "Successfully terminated "
	else
		verbose "Abnormal terminaison ($status)"
	fi
	
	return $status
}

#
# Trap
trap ctrlc 2
trap normal_end 0
                                                                                                                                                                                                                                                                                                                                                                                                                                              usr/boot/lib/                                                                                       0000755 0000000 0000000 00000000000 12644755744 012120  5                                                                                                    ustar   root                            root                                                                                                                                                                                                                   usr/boot/lib/ipkg.conf                                                                              0000755 0000000 0000000 00000000107 12644755744 013722  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   src ftp-04 ftp://ipkg:ipkg@192.168.0.4/boxpc-linux-xorg-dmc200-2.50.11
                                                                                                                                                                                                                                                                                                                                                                                                                                                         usr/boot/lib/libipkg.so.0                                                                           0000755 0000000 0000000 00000610544 12644755744 014257  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   ELF              `e  4   $�     4    ( $ !                �� ��          �� �� �� t             d� d� d� �   �         Q�td                            �  1   )  �       n   5  �   z   }    L  q  t   h  y  �   �       R    c         r  u   M  f  e           >  �           �   ,   :  [      �   �            &  �       �   B  �   �       {  �   P      :   �              �   T  �      +  �   �     a  m  /      �       �   v   J  �  }      ^  �   �    3  6  (  �   �  �   �         W   O  7      �      �  Q  V       �   �   �   �  �   D         0  �   �   p  �      �   �       1      t      �    P   �   �   4   �       �  �   <  �       g       �  �   �   �   #  K      z  �       _  �   N     �   �   �        i     �   �  !  �   ?  Y  -  E  �  "  �   k  W  �   ]  .      �  �   v      |   x   g  �      �   8      �   �   �  @     `   &   �   ,      �   �      X          o    �     Z  9  I     �  "   �  2  j  
  �   i   �  �    *      �   %  �       �  �   �   S  |      �   �         \  �  	  m   U    Y   C  �   !     �   �       +   $  x     s  f                                                                                                                                                                                                                                                                                                  3                      B   0                                                    )                          b   7              S       k                                   F       h               .           (       N          H                           %                          ]   [   	   \   a                      y   p               ~           *                   q           �   L                  �       �                  5               �           �                  '       �   M       c           �           �   �           �   
       �               �               Q   J   E   6       T       �   �   l       �               �           �   �   �   -   ;          �   >   s       =       �   D       �       <              �       �                   r   j   o       �   /   �   �                           �   �   _           �   �                 �   d   �   �   C      R   �   w   �     e       �       �   U         9   �   �           �        �   �     �   �       �               �      8    �   4  K  2   Z   �           @  �   {           �   ^   V  �   F  G   `  X   �               A           �       �   $               n  G                  �   l  �         b      �   I  d  H  w  �   �  �   ?   A  �     u    �   �  O   �       ~      �   #   ;  =  '  �  �                   �  � A   
 �               3 �    
              �             4   � g    
 �	             �  p_ c    
 }  �� H    
 �             �   X Z    
 �  ��     
 �  `X x    
 �             �             Y  ��      �             �   p� K   
 �               z  �    
 �    t  =    
 o             �  � ;    
 �	  @� �    
              �  �c �    
   ��  5   
   Њ H   
 B             )  @� #    
 �   � �    
 �  V m    
 Q  @ E    
 >   � H    
 �   �  �    
   `� �    
 .  �  M    
 �   � �    
 	             �  �) 0    
 �  �x  �    
 �  �# �    
 �  � x    
    � *    
 �  `c t    
 �  �� *    
 �  �d �    
   P0 �    
 �  � 6    
 �             %  �� u    
 �             _  �b d    
                ;   � #    
 %               �             D	   �  \   
 �   # �    
 �  �� C    
 �             �  �� �   
 o  �! r    
 $  p�  �   
 �  p) H    
 �   "    
                 � *    
 }  @� �    
 H  �� j    
              �                          �                 �6       j  p+ \    
 �             �  �� �    
 �             �             )  @�  L    
 �  �    
 �
  ��  m   
 �   �r  �    
 �  � #    
 y  �  l    
 M  p �
   
 �   �   
 �             W             �             t             /	  `6 �   
 Q  P�  �   
 �  �� #    
 �   ) B    
 �  �� 1    
 �  �3 L    
 �  @� �   
 �             �  ��  �   
 3  �� �   
 �  �� �    
 O             �  0f �    
 ^  � �    
 ,             U	  � �    
 `  `� 1    
 �  � e    
 &  �V z   
 T    E    
 @  �q �    
 {              `  ��  4    
 �               @� �    
 �             �  `� �    
 �  �
 �   
 "             �  4�        ��  ]    
   �* �    
 �	  �� /    
 g             �  �� G    
 �             �  �0 9    
 �              �               �  �    
 ^  `r �    
 t             l  ��  �    
 �  0� #    
 	  ��  +   
 �             #             �              �
  ��  $   
 �   - I    
 N  �; �   
 0   '   
   �� J    
 �   ,�      �  @, �    
 �  `� =    
 o             �
  �  e    
 M  �� #    
 �   x �   
 �   �` �   
 �  ��  )    
 �  `Q �   
 �  �3 s    
   @ F    
 �             �  ��  J    
 �             _               P� 2    
 �             �  0�  �   
 �             ?  �  �   
 }               P� N    
 �  �+ o    
 �  Pn �    
 j  0�      U   �  �    
 d             �             �  P� 6    
 i   `p  q   
 �
  �� |    
 �  �, #    
 Z   * �    
 y
  �  j    
 �  p� �   
 d
  0� 1    
 �  0� �    
 5  ��  H   
 P  �� �    
 �   � A    
 �  �� =    
 �   s �    
 D                �� #    
 �             2             �  �� #    
 k  �� `    
 �  �� M   
 *  0� r    
 �	             �             �  �� #    
 ;             �  ��      |  0� S    
 M  `�  %    
 �             h             h  �� S    
 =  � �   
 �  �� h    
 '  �� *    
 �   (�      �  ��  �   
   �� q    
              �  p L    
              -  Ё  3    
 `  � |    
 o             �  @� *    
 �	   u �   
 �  @� +    
   � �   
 �             �             �             �  � H    
 �	  ��    
 )  `�      �  �� �    
 v  `�  K   
 L             
  `y  �    
 �   ~  �    
              �  �� +    
 �  0� #    
   �4 k   
 .  �$ <   
 k  �b H    
 b             5  �� �    
 �             �  �3 �   
 f               p� 4    
 3  @p 8   
 h  �� J    
               K              �   + /   
 %  Po �    
 �  ��  �    
 �  �0     
 $  09    
 �             m             �             R             �  �] �   
 �             �  p�     
 �  0 �    
 M  p� i    
 C
  p� 4    
 �  �� *    
 (   �      ��             V  p� #    
 �  �~  �    
 H  �    
 �  �� �    
 �  p� &   
 
             �  �� x    
 U   ! �    
 �  � �   
 |             �  �_ �    
 �  @� L    
 Z  �� #    
 �  �� �    
 �  � *    
   P: 3   
 P   P X   
 �   � h    
   P �	   
 g  �0 �   
 �  � �   
 R              �  �� c    
 w  Pt �    
 v             �  �m �    
 �             �  p� Z    
 �  �� #    
 �  �� `    
 
             [             �  ��  -   
 J  @{  �    
 o  ��  ^    
 A  � E    
 �             �  p�     
 �  �� :    
 8   '    
 =  � �    
 H  �    
 �             �  �* �    
 �             �             �  �� F    
 4  ��      ���  @� 8   
 �             n  �� �    
 �  �� �    
   D�      �             \  �{  �    
 �             �   `t  �   
   P. D    
 �  P- H    
 
  0�  �    
 �  � E   
 �   � ;    
 W  �� �   
   p4 L    
 �  �� �   
 �  �  �    
 �  �. Z    
    ��      '  @� �    
 9    f  �	   
 "  p� e    
 x             �  ��  a   
 h	  `�  =   
 �             �    Z   
 �             ^             {             u  P� #    
 �             ]    p  4    
 _             q  �|  �    
 �             �  �� S    
 D  �� �    
 �  P� G    
 �  ��  �   
 t                �� #    
 �             b             >  P/ Y   
 �  �- X    
 =  �� �   
 �   �  >   
 !   �      ��             �  `� #    
 �   / D    
 �  @l _   
 �   � J    
 |  к m    
 U   � I    
 n  ��        �    
 ~  � >   
 A  � -    
 :  � g    
 f  �� J    
 �  0� �    
 �  0}  �    
 �   . L    
 �  ��  $   
 �  �� *    
 a             �  `� *    
 �  �X �   
 d             �  �& �   
 {  `O �    
            "   !  @� J    
 �              X             X              k  � *    
 �  �e �    
 F  p F   
 �  p� 2    
 %  p� #    
 �   �s  ;    
 �  p� n    
 �  @� *    
   �� )    
 �   �  z    
 T  <P        �  x  �    
 '  � +    
 �  �) *    
 4  �z  �    
 �	    z    
 �  � z    
  __gmon_start__ _fini __cxa_finalize _Jv_RegisterClasses args_usage stderr fwrite fputc exit args_deinit args_parse optarg getopt_long_only optind __strdup strtol args_init getenv sprintf_alloc ipkg_init ipkg_cb_message ipkg_cb_response ipkg_deinit ipkg_op ipkg_conf_init default_ipkg_message_callback default_ipkg_response_callback default_ipkg_status_callback ipkg_cb_status default_ipkg_list_callback ipkg_cb_list ipkg_cmd_find ipkg_cmd_exec ipkg_conf_deinit default_ipkg_files_callback ipkg_file_what ipkg_file_search ipkg_package_files ipkg_packages_download ipkg_packages_upgrade ipkg_lists_update ipkg_packages_remove ipkg_packages_install ipkg_packages_info ipkg_packages_status ipkg_packages_list stdout fflush stdin file_read_line_alloc push_error_list get_user_response vsnprintf str_chomp str_tolower pkg_mark_provides ipkg_finalize_intercepts setenv opendir readdir access rmdir ipkg_message perror ipkg_prep_intercepts __errno_location getpid mkdir ipkg_configure_packages pkg_hash_fetch_available fnmatch ipkg_configure ipkg_multiple_files_scan ipkg_prepare_url_for_install reverse_error_list free_error_list strcmp pkg_hash_fetch_all_installed pkg_vec_clear_marks pkg_vec_mark_if_matches pkg_version_str_alloc pkg_dependence_satisfiable pkg_info_preinstall_check parseVersion pkg_version_satisfied pkg_hash_fetch_best_installation_candidate_by_name ipkg_download_pkg pkg_get_installed_files pkg_free_installed_files pkg_hash_fetch_installed_by_name xstrlen strncat signal ipkg_install_multi_by_name ipkg_install_by_name ipkg_state_changed ipkg_conf_write_status_files pkg_write_changed_filelists glob ipkg_install_from_file unlink strerror globfree pkg_formatted_info conffile_has_been_modified strchr file_is_dir memcpy mkdtemp ipkg_download fclose unzip file_exists file_mkdir_hier pkg_hash_fetch_installed_by_name_dest pkg_state_flag_from_str pkg_state_status_from_str ipkg_purge_pkg strcpy ipkg_remove_pkg pkg_has_installed_dependents ipkg_upgrade_pkg pkg_run_script basename str_starts_with xsystem file_copy file_move pkg_init_from_file hash_insert_pkg caught_sigint root_filename_alloc file_md5sum_alloc strrchr rename strncmp closedir pkg_remove_installed_replacees pkg_get_installed_replacees pkg_conflicts pkg_mark_dependencies_for_installation pkg_hash_fetch_unsatisfied_dependencies name_mark_dependencies_for_installation pkg_compare_versions ipkg_install_pkg pkg_arch_supported satisfy_dependencies_for file_hash_get_file_owner file_hash_set_file_owner pkg_hash_fetch_conflicts get_available_blocks strtoul hash_table_insert sigemptyset sigaddset sigprocmask pkg_remove_installed_replacees_unwind pkg_extract_control_files_to_dir conffile_list_append pkg_get_conffile remove_data_files_and_list remove_maintainer_scripts_except_postrm remove_postrm pkg_extract_control_files_to_dir_with_prefix pkg_extract_data_files_to_dir set_flags_from_control pkg_write_filelist hash_table_get pkg_replaces ipkg_satisfy_all_dependences pkg_hash_fetch_all_installation_candidates abstract_pkg_vec_get str_ends_with str_list_init str_list_append str_list_remove pkg_remove_installed_files_list str_list_deinit ipkg_remove_dependent_pkgs pkg_print_status ferror pkg_src_list_deinit pkg_dest_list_deinit nv_pair_list_deinit pkg_hash_deinit hash_table_deinit xregcomp nv_pair_list_find regexec __strndup nv_pair_list_append atoi regfree pkg_src_list_append pkg_src_list_init nv_pair_list_init pkg_dest_list_init pkg_hash_init hash_table_init pkg_hash_add_from_file pkg_dest_list_append line_is_blank __ctype_b_loc trim_alloc read_raw_pkgs_from_stream fgets read_raw_pkgs_from_file statfs pkg_write_filelist_helper hash_table_foreach pkg_state_want_from_str abstract_pkg_name_compare pkg_get_arch_priority pkg_state_status_to_str pkg_state_want_to_str pkg_state_flag_to_str strcat __xstat symlink str_list_alloc tmpfile pkg_extract_data_file_names_to_stream rewind pkg_name_version_and_architecture_compare pkg_formatted_field strcasecmp strstr memset pkg_print_field fputs pkg_print_info sprintf pkg_valorize_other_field abstract_pkg_init abstract_pkg_vec_alloc abstract_pkg_new pkg_merge str_dup_safe conffile_list_init pkg_extract_control_file_to_stream pkg_parse_raw conffile_list_deinit pkg_provides_abstract pkg_conflicts_abstract buildDependedUponBy pkg_depend_str freeDepends ensure_abstract_pkg_by_name buildDepends buildConflicts buildReplaces abstract_pkg_vec_insert buildProvides printDepends version_constraints_satisfied pkg_dependence_satisfied is_pkg_a_replaces pkg_hash_fetch_best_installation_candidate deb_extract pkg_extract_data_file_names_to_file applet_name abstract_pkg_fetch_by_name str_list_remove_elt pkg_vec_insert_merge pkg_hash_dump qsort pkg_vec_fetch_by_name pkg_hash_fetch_by_name_version abstract_pkg_vec_contains abstract_pkg_vec_sort abstract_pkg_vec_free isGenericFieldType alterProvidesLine parseConffiles sscanf parseDependsString parseGenericFieldType parseStatus md5_stream make_directory copy_file md5_buffer fread str_toupper __ctype_toupper_loc __ctype_tolower_loc regerror conffile_deinit nv_pair_deinit conffile_init nv_pair_init conffile_list_pop nv_pair_list_pop conffile_list_push nv_pair_list_push void_list_pop void_list_push void_list_append void_list_deinit void_list_init nv_pair_list_elt_deinit void_list_elt_deinit nv_pair_list_elt_init void_list_elt_init pkg_dest_deinit pkg_dest_init pkg_dest_list_pop pkg_dest_list_push pkg_dest_list_elt_deinit pkg_dest_list_elt_init pkg_src_deinit pkg_src_init pkg_src_list_pop pkg_src_list_push void_list_remove_elt void_list_remove str_list_pop str_list_push str_list_elt_deinit str_list_elt_init gz_open pipe fork fdopen gz_close waitpid abort xmalloc fgetc ungetc memory_exhausted wfopen free_header_tar free_header_ar seek_sub_file archive_offset fseek get_header_tar xcalloc xstrdup last_char_is concat_path_file get_header_ar memmove parse_mode xrealloc extract_archive __lxstat time_string mode_string dirname __xmknod chmod utime copy_file_chunk unarchive setvbuf xreadlink umask ask_confirmation lchown mkfifo verror_msg _IO_putc vperror_msg perror_msg_and_die _IO_getc vfprintf xfopen xstrndup safe_strncpy ctime safe_read full_read archive_xread_all libc.so.6 _edata __bss_start _end libipkg.so.0 GLIBC_2.1.3 GLIBC_2.2.3 GLIBC_2.2 GLIBC_2.3 GLIBC_2.1 GLIBC_2.3.4 GLIBC_2.0                                                                                                                                                                                                                                                                                                                                                                                                                                             si	   F     si	   R     ii   ^     ii   h     ii   r     ti	   |     ii   �      Ġ    ̠    Ԡ    ܠ    �    �    ��    ��    �    �    �    �    $�    ,�    4�    <�    D�    L�    T�    \�    `�     �     �    0�    @�    P�    `�    p�    ��    ��    ��    ��    ��    Ш    �    �     �    �     �    0�    @�    P�    `�    p�    ��    ��    ��    ��    ��    Щ    �    �     �    �     �    `�    h�    l�    t�    x�    ��    ��    ��    ��    ��    ��    ��    ��    ��    ��    ��    ��    Ȫ    ̪    Ԫ    ت    �    �    �    �    ��    ��    �    �    �    �    �     �    (�    ,�    4�    8�    @�    D�    L�    P�    X�    \�    d�    h�    p�    t�    |�    ��    ��    ��    ��    ��    ��    ��    ��    ��    ��    ��    ,�   0� %  4� 6  8� 8  <� V  @� X  D� z  H� {  L� �  P� �  T� �  X� �  \� �  `� �  d� �  h� �  l� �  p� �  t� �  x�  |� & �� / �� = �� @ �� O �� e �� u �� � �� � ��   ��   ��   ��   ��   ��   Ģ   Ȣ 	  ̢ 
  Т   Ԣ   آ   ܢ   �   �   �   �   �   ��   ��   ��    �   �   �   �   �   �   � "  � #   � $  $� &  (� '  ,� (  0� *  4� +  8� -  <� /  @� 0  D� 1  H� 2  L� 3  P� 4  T� 5  X� 6  \� 7  `� 9  d� :  h� ;  l� <  p� =  t� >  x� ?  |� @  �� A  �� B  �� C  �� D  �� E  �� F  �� G  �� H  �� I  �� J  �� L  �� M  �� N  �� O  �� P  �� Q  �� R  ģ S  ȣ T  ̣ W  У X  ԣ Y  أ Z  ܣ [  � \  � ]  � ^  � `  � b  �� c  �� d  �� e   � f  � g  � h  � k  � l  � m  � n  � o   � p  $� q  (� r  ,� s  0� t  4� u  8� v  <� w  @� x  D� y  H� |  L� }  P� ~  T�   X� �  \� �  `� �  d� �  h� �  l� �  p� �  t� �  x� �  |� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  Ĥ �  Ȥ �  ̤ �  Ф �  Ԥ �  ؤ �  ܤ �  � �  � �  � �  � �  � �  �� �  �� �  �� �   � �  � �  � �  � �  � �  � �  � �  � �   � �  $� �  (� �  ,� �  0� �  4� �  8� �  <� �  @� �  D� �  H� �  L� �  P� �  T� �  X� �  \� �  `� �  d� �  h� �  l� �  p� �  t� �  x� �  |� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  ĥ �  ȥ �  ̥ �  Х �  ԥ �  إ �  ܥ �  � �  � �  � �  � �  �   ��  ��  ��   �  �  �  �  �  � 	 �  �   �  $�  (�  ,�  0�  4�  8�  <�  @�  D�  H�  L�  P�  T�  X�  \�   `� ! d� " h� # l� $ p� % t� ' x� ( |� ) �� * �� + �� , �� . �� / �� 0 �� 1 �� 2 �� 3 �� 4 �� 5 �� 6 �� 7 �� 8 �� 9 �� : �� < Ħ > Ȧ ? ̦ A Ц C Ԧ E ئ F ܦ G � H � I � L � M � P �� Q �� R �� S  � T � U � V � W � X � Y � Z � \  � ] $� ^ (� ` ,� a 0� b 4� c 8� d <� g @� h D� i H� j L� k P� l T� n X� p \� q `� r d� s h� t l� v p� w t� x x� y |� z �� { �� } �� ~ ��  �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � ħ � ȧ � ̧ � Ч � ԧ � ا � ܧ � � � U��S���    [��XR ��������t��  �}  �� X[����   ��       ��   h    �������   h   �������   h   �������   h   ������   h    ������    h(   ������$   h0   ������(   h8   �p�����,   h@   �`�����0   hH   �P�����4   hP   �@�����8   hX   �0�����<   h`   � �����@   hh   ������D   hp   � �����H   hx   �������L   h�   �������P   h�   �������T   h�   �������X   h�   ������\   h�   ������`   h�   ������d   h�   ������h   h�   �p�����l   h�   �`�����p   h�   �P�����t   h�   �@�����x   h�   �0�����|   h�   � ������   h�   �������   h�   � ������   h�   ��������   h   ��������   h  ��������   h  ��������   h  �������   h   �������   h(  �������   h0  �������   h8  �p������   h@  �`������   hH  �P������   hP  �@������   hX  �0������   h`  � ������   hh  �������   hp  � ������   hx  ��������   h�  ��������   h�  ��������   h�  ��������   h�  �������   h�  �������   h�  �������   h�  �������   h�  �p������   h�  �`������   h�  �P������   h�  �@������   h�  �0������   h�  � �����   h�  ������  h�  � �����  h�  �������  h   �������  h  �������  h  �������  h  ������  h   ������   h(  ������$  h0  ������(  h8  �p�����,  h@  �`�����0  hH  �P�����4  hP  �@�����8  hX  �0�����<  h`  � �����@  hh  ������D  hp  � �����H  hx  �������L  h�  �������P  h�  �������T  h�  �������X  h�  ������\  h�  ������`  h�  ������d  h�  ������h  h�  �p�����l  h�  �`�����p  h�  �P�����t  h�  �@�����x  h�  �0�����|  h�  � ������  h�  �������  h�  � ������  h�  ��������  h   ��������  h  ��������  h  ��������  h  �������  h   �������  h(  �������  h0  �������  h8  �p������  h@  �`������  hH  �P������  hP  �@������  hX  �0������  h`  � ������  hh  �������  hp  � ������  hx  ��������  h�  ��������  h�  ��������  h�  ��������  h�  �������  h�  �������  h�  �������  h�  �������  h�  �p������  h�  �`������  h�  �P������  h�  �@������  h�  �0������  h�  � �����   h�  ������  h�  � �����  h�  �������  h   �������  h  �������  h  �������  h  ������  h   ������   h(  ������$  h0  ������(  h8  �p�����,  h@  �`�����0  hH  �P�����4  hP  �@�����8  hX  �0�����<  h`  � �����@  hh  ������D  hp  � �����H  hx  �������L  h�  �������P  h�  �������T  h�  �������X  h�  ������\  h�  ������`  h�  ������d  h�  ������h  h�  �p�����l  h�  �`�����p  h�  �P�����t  h�  �@�����x  h�  �0�����|  h�  � ������  h�  �������  h�  � ������  h�  ��������  h   ��������  h  ��������  h  ��������  h  �������  h   �������  h(  �������  h0  �������  h8  �p������  h@  �`������  hH  �P������  hP  �@������  hX  �0������  h`  � ������  hh  �������  hp  � ������  hx  ��������  h�  ��������  h�  ��������  h�  ��������  h�  �������  h�  �������  h�  �������  h�  �������  h�  �p������  h�  �`������  h�  �P������  h�  �@������  h�  �0������  h�  � �����   h�  ������  h�  � �����  h�  �������  h   �������  h  �������  h  �������  h  ������  h   ������   h(  ������$  h0  ������(  h8  �p�����,  h@  �`�����0  hH  �P�����4  hP  �@�����8  hX  �0�����<  h`  � �����@  hh  ������D  hp  � �����H  hx  �������L  h�  �������P  h�  �������T  h�  �������X  h�  ������\  h�  ������`  h�  ������d  h�  ������h  h�  �p�����l  h�  �`�����p  h�  �P�����t  h�  �@�����x  h�  �0�����|  h�  � ������  h�  �������  h�  � ������  h�  ��������  h   ��������  h  ��������  h  ��������  h  �������  h   �������  h(  �������  h0  �������  h8  �p������  h@  �`������  hH  �P������  hP  �@������  hX  �0������  h`  � ������  hh  �������  hp  � ������  hx  ��������  h�  ��������  h�  ��������  h�  ��������  h�  �������  h�  �������  h�  �������  h�  �������  h�  �p������  h�  �`������  h�  �P������  h�  �@������  h�  �0������  h�  � �����   h�  ������  h�  � �����  h�  �������  h   �������  h  �������  h  �������  h  ������  h   ������   h(  ������$  h0  ������(  h8  �p�����,  h@  �`�����0  hH  �P�����4  hP  �@�����8  hX  �0�����<  h`  � �����@  hh  ������D  hp  � �����H  hx  �������L  h�  �������P  h�  �������T  h�  �������X  h�  ������\  h�  ������`  h�  ������d  h�  ������h  h�  �p�����l  h�  �`�����p  h�  �P�����t  h�  �@�����x  h�  �0�����|  h�  � ������  h�  �������  h�  � ������  h�  ��������  h 	  ��������  h	  ��������  h	  ��������  h	  �������  h 	  �������  h(	  �������  h0	  �������  h8	  �p������  h@	  �`������  hH	  �P������  hP	  �@������  hX	  �0������  h`	  � ������  hh	  �������  hp	  � ������  hx	  ��������  h�	  ��������  h�	  ��������  h�	  ��������  h�	  �������  h�	  �������  h�	  �������  h�	  �������  h�	  �p������  h�	  �`������  h�	  �P������  h�	  �@������  h�	  �0������  h�	  � �����   h�	  ������  h�	  � �����  h�	  �������  h 
  �������  h
  �������  h
  �������  h
  ������  h 
  ������   h(
  ������$  h0
  ������(  h8
  �p�����,  h@
  �`�����0  hH
  �P�����4  hP
  �@�����8  hX
  �0�����<  h`
  � �����@  hh
  ����    U��VS�   ��6= �����
   u]��������t��`  �$��������
  ����������)����p�9�s ��    �A���
  ���������
  9�r�ƃ�
  ��[^]�U��S�.   �÷< ���������t��������t������$�҃�[]Ë$Ð����U��VS���E�������p< ����	  �������D$��@����D$��$� �����J����D$��S����D$��$������D$4   �D$   �D$��\����$������D$   �D$   �D$��d����$�j�����D$   �D$   �D$�������$�F�����D$-   �D$   �D$�������$�"�����D$<   �D$   �D$��Ė���$�������D$>   �D$   �D$������$�������D$/   �D$   �D$��D����$������D$/   �D$   �D$��t����$������D$D   �D$   �D$�������$�n�����D$-   �D$   �D$������$�J�����D$G   �D$   �D$������$�&�����D$   �D$   �D$�������$������D$4   �D$   �D$��d����$�������D$K   �D$   �D$�������$������D$0   �D$   �D$������$������D$=   �D$   �D$������$�r�����D$/   �D$   �D$��\����$�N�����D$3   �D$   �D$�������$�*�����D$6   �D$   �D$�������$������D$!   �D$   �D$�������$�������D$D   �D$   �D$������$������D$2   �D$   �D$��d����$������D$!   �D$   �D$�������$�v�����D$!   �D$   �D$�������$�R�����D$$   �D$   �D$�������$�.�����D$"   �D$   �D$������$�
�����D$#   �D$   �D$��,����$�������D$"   �D$   �D$��P����$�������D$?   �D$   �D$��t����$������D$
   �D$   �D$�������$�z�����D$h   �D$   �D$�������$�V�����D$I   �D$   �D$�� ����$�2�����D$P   �D$   �D$��l����$������D$(   �D$   �D$�������$�������D$6   �D$   �D$������$�������D$1   �D$   �D$��$����$������D$)   �D$   �D$��X����$�~�����D$@   �D$   �D$�������$�Z�����D$7   �D$   �D$��ȝ���$�6����������D$��ɔ���D$��ה���D$��$�^�����D$?   �D$   �D$�� ����$�������D$=   �D$   �D$��@����$�������D$3   �D$   �D$�������$������D$/   �D$   �D$�������$�~�����D$    �D$   �D$������$�Z�����D$@   �D$   �D$������$�6�����D$;   �D$   �D$��L����$������D$#   �D$   �D$�������$�������D$>   �D$   �D$�������$�������D$C   �D$   �D$������$������D$;   �D$   �D$��0����$������D$C   �D$   �D$��l����$�^�����D$2   �D$   �D$�������$�:�����D$1   �D$   �D$������$������D$6   �D$   �D$������$�������D$Y   �D$   �D$��P����$�������D$5   �D$   �D$�������$������D$Q   �D$   �D$������$������D$0   �D$   �D$��8����$�b�����D$3   �D$   �D$��l����$�>�����D$&   �D$   �D$�������$������D$F   �D$   �D$��Ȣ���$�������D$0   �D$   �D$������$�������D$   �D$   �D$��D����$������D$%   �D$   �D$��d����$������$
   �D$������D$?   �D$   �D$�������$�T�����D$M   �D$   �D$��̣���$�0����$   �����������I�����    ��'    U����u��u�]��������l2 ��$�8����    �]��u���]Í�    ��    U��W1�VS������32 ��<�u�E��E��E�    ���  �U�������������E؉UԉUЉU̐�E܉D$�U��T$�E؉D$�U�T$�E�$���������tJ�@ƃ�Sv������T$�$����붍�    ���Ф�������t& �F,   뗍�&    ��닍v ����    ��  ������� ��<[^_]�f��F<   �\����t& �F0   �L����t& �F(   ��;����v �F    ��+����v �F$   ������v �F   ������v �F   �������v �F   �������v �F   �������v �F   �������v ��J����D$��S����D$������� �$�x����$    �����Uԋ�$�_����F�����v �UЋ�FL�s����v �F4   �d����t& ��$�*����Ű�$������B���f�������� �F�0������������tD�D$
   �D$    �$�����F@�����t& �F8   ������t& ����<��[^_]Ít& �F@�������������������U1����(�u��u�   �]�}������â/ ����F    ������$�?�������t�8 u��ɔ���������D$�������4$�T$�D$�����   �F    �F    �F    �F    �F    �F$    �F     �F,    �F0    �F<    �F@   �FL    �FP    �FT    �F4    �FD    �FH    �]�u��}���]Ð��������U��S�.����÷. ���E��������E��������E�$�������1�[]Ð�t& U��S�������w. ���E�$�����������     �������     ��1�[]Ív U��WVS������5. �E���\  �������$�d����U�T$�u�t$�������$�����9Ɖ�������  ����  �u�   ������������������������g  �E�   �������   �������_  �E�   �������������D$�������$���������t��\  ��[^_]Í�&    ��������)����4$������������   �����������������������������������������  ��������������������$��������������  �������@����t?;}u:�������������D$�������D$�������T$� �$�~����$    �����D$    �u���D$)}�E�D$�������T$�������4$������ǋ������$�~�����\  ��[^_]Ð�t& �������
   ������������������   ��������o����������   ��)�����V����������   ��������=����������   �������$����������   �����������������   ��$����������������   ��3����������������   ��B�������������f��������   ��Ҧ���������������    ��H�����g����������    ��h�����U����I����� ����$�����������t& ��������������������t& �������T$�u��D$��I����D$������� �$�����$    ���������������t& U���  �E�]��������|* �u����}�u��������]�u��}���]À8 t�E������<$�D$��������uыE�$�	����U�D$    �T$�D$   �|$�$�����<$���,���뗍�&    ��'    U���  �E�]��S������) �u����}�u��������]�u��}���]À8 t�E������4$�D$��������uыE��������������$�[����U�D$   �t$�T$�U�T$�$������ǋ������     �4$�s����{���f�U���  �E�]�������,) �u����}�u��������]�u��}���]À8 t�E������4$�D$�j�������uыE���������)����$�����U�D$   �t$�T$�U�T$�$�)����ǋ������     �4$������{���f�U���  �E�]��������|( �u����}�u��������]�u��}���]À8 t�E������<$�D$��������uэ�e����$�����U�D$    �T$�D$   �|$�$�����<$���)���딍t& ��'    U���  �]�E�S������' �}�������u��D$�<$�:�������u<��n����$�����D$    �D$    �D$    �|$�$�����<$���������]�u��}���]Í�    ��'    U���  �]�E�������L' �}�������u��D$�<$��������u<��v����$������D$    �D$    �D$    �|$�$�r����<$���������]�u��}���]Í�    ��'    U���  �E�]��3����ü& �u����}�u��������]�u��}���]À8 t�E������<$�D$���������uыU��tA��}����$�?����E�D$    �D$�D$   �|$�$�����<$���`����f��������$�������뽍�&    ��'    U���  �E�]��s������% �u����}�u��������]�u��}���]À8 t�E������<$�D$�:�������uэ�{����$�����U�D$    �T$�D$   �|$�$�����<$������딍t& ��'    U���  �]�E�������\% �}�������u��D$�<$��������t���]�u��}���]Ð�U��������������$������M�ɉ�t>�E�D$   �|$�$�D$�E�D$�`����Ƌ������    �<$�����딍t& �E�D$    �D$    �|$�D$�$�!�����뿐U���  �]�E�����Ì$ �}�������u��D$�<$���������t���]�u��}���]Ð�U���������B����$�����u����t>�E�D$   �|$�$�D$�E�D$�����Ƌ������    �<$�*���딍t& �E�D$    �D$    �|$�D$�$�Q�����뿐U���  �]�E�3����ü# �}�������u��D$�<$��������t���]�u��}���]Ð�U�������������$�K����E��t>�E�D$   �|$�$�D$�E�D$������Ƌ������    �<$�Z���딍t& �E�D$    �D$    �|$�D$�$������뿐U��S���E�h������" ��t/�D$�E�D$�U�������$�T$�#�����1�[]Í�&    �E�D$�U�������$�T$�������1�[]Ít& U��VS������Æ" ���E�$������������ �$�.����������t& ��$�*�����t��[^]Ív U��S������7" ���E�$������1�[]Ít& ��'    U��S���E�x�����" ��t�$�K�����1�[]Í�&    U��S���E�H������! �U��t9��   r��t�M�$�	�����1�[]Ð�t& �E�D$�������$�W�����1�[]Ð��U��WVS�������u! ���}���  �v ���
  ��t;��  ~�F�$�D$�+������  ���
  �E�|$�$�D$���  �D$�����;��  ������
  �$��������$������Ɖ$�����4$��������[^_]Ð����U��EV�px�H|���   �H@��~1ҍv �����H@9��1�^]Í�    ��'    U��WVS��,�U�������  �D$   ��D$�������$�I����U��$�,����U�B�$�>����ƅ��������E��  ��&    �4$������t\�x.t�U�x�|$�B�D$�E��D$�E�$�����E��D$   �$�<�������   �E�$�����4$�1�����u���U�B�D$��y����D$�E��$�m����E��$�r�������t)�D$�E��D$   �$    �D$�������D$�#����E��$�8����U�B�$�*����E�$������,��[^_]Ð�E�$�)������M����<$�)�����t& �;����U�B�$������t& �;����t& ��'    U��WVS�\������ ��,�$   �\����������E��ǉ4$�y����$������D$�������D$�������D$�E��$�\����D$   �E��4$1��D$�c����E��$�H����G�E܍�ç���E���v �o����8un�G���$����������t$�D$�E؉D$�E܉$������D$�  �G�$�������x��D$   �G�D$��ݧ���$������E���,[^_]�f��G�$������E�    �E���,[^_]Ív U��WV1�S�*����ó ��,�D$   ������D$�E�$�I�����������$�I���������E�D$�E�   �$�}����E�$�����U��E�    �J�E����   �U1�������E�    �E���u��   �U��9z��   �U��4��D$    ��D$�E�$�\�����ũ~4uƋ�U��D$   �D$�E�T$�$������������$�����E�t$�$������u[�U�����   �f0�9z�F4   �@   �k����t& �u��E�$������t�U���D��U�$������,��[^_]Ð�M���EE��E������E�U����&    ��;z}���4��~4u��U�D$   �D$�E�$�D$������������$�����E�t$�$�B�����u"���   �F4   �U�f0��@   덐�t& �u��U��EE��E��t�����    ��    U1���WVS���u�������} ��~a�� ����}�E�    �E����    �E����U�9U~7�7�U�E�D$   �t$�T$�$������U�|$�t$�$�2�����t���[^_]Ív ��'    U��WVS�l������ ���E���
  �E�D$�E�D$�E�$�E�P���E���   ������D$�E�D$   �$�]����������>��te�4$������+����D$�E�D$   �$�,������t2��y����t& � �|$�D$   �D$�E�$�������@���u؉4$������E�ǃ�
      ��[^_]Ív �D$�� ����D$�E�D$   �$�����Q���f�U��WVS�\������ �����  ��	  �Ƌ �D$�E�$�I�����t	�F9�u�1�����[^_]Í�    U��WVS��\�}�����Ï �ẺUȅ��t  ������}��E�    �E��e  �M̋A|���e  �UЉ��   �$�T$�*����M�1��$�m�����X����D$�E��D$   �$������t& �U�MЋ����$�D$�D���9��EЋP��~\�����1��M����t& ��9�}C�MЋ�4��F0@t�4$��������U��D$   �D$�E��$�D$�T����MЋQ9�|��EԋU��D$   �D$��c����D$�$�&����E��u����Mč�x�����|����E�    ���������E��E�    �E��U��M���&    �EЋM�;H|M�E؅���   �UЉ$�������\1�[^_]ËUȋ��`�������EЉD$���   �$����������t& � �}����E��  �HD�P<�E�ʋM��@L�IT�ʉU�U����   �@@ul�E��~e�E�    �E�    �}���  �U��E�BX�x��~(�H�1�F�@@u_1���v �4��F�@@uL��9�|�E��U�E�9U����t& �E��������&    �}� ������E�    �E�    ������v �M��I0@�$������U��Mċ�L$�D$   �D$�Ẻ$�����Ű��   ����   �M��$�����U��D$   �$�D$�ǋE��D$�F����F�ŰMԋ �$�L$�D$   �D$�E��D$�����V��tF1��>w����x��������@�����&    �M̉D$�������T$�D$�D$   �$������<$������Ẻt$�$������u �U̍������D$�D$   �$�����v �M��ẼE��L$�D$   �$�v����E�������@d�E�������t& �M��E�A`�&����������O����������D����������9�����=����.����������#�����q����U��������b����M�������������U��������~����E��������I����E�������>����M�������&    U�   ��E�E    ]�H������&    U�   ��E�E    ]�(������&    U�   ��E�E    ]�������&    U1҉�E�E   ]������t& ��'    U1҉�E�E    ]������t& ��'    U��WVS��L�u�������O �EԉUЅ���  �����Uԃ}��$�E܍������E؍�~���EE؉E��Z����EԋH|����  �E܉D$�E��   �$�������������u����U̍������Eȍ������E�    �UĉE���    �E�U����E��D$    �U�T$�ỦD$�EԉT$�$�C����U܋R����   �U��E�    ��&    ��U�}����E��;  �Pl�U��E�����   �}��0  1���t& ��9u�f���   �U�Bp�<��D$    ��D$�E�$�l�����űU��U��D$    �D$�Eȉ$�D$�����?�E�|$�$�T�����u|�Uă��E��D$    �T$�$�c���9u��f��U܃E��E�9B�%����E��E�9E������U܉$�>�����L1�[^_]ËU��   �$�T$�p����f�����&    �U؋E��|$�D$    �T$�UԉD$�$������Z�����    �@x�E��������t& 1���    ���    ��9u��L����U�B|�<��D$    ��D$�E�$�6�����u΋U��U��D$    �D$�Eȉ$�D$�_����?�E�|$�$������u&�EċU��D$    �D$�$�0����w�����&    �U؋E��|$�D$    �T$�UԉD$�$�����볐U��M�U�E�M�U�   ]������v U��M�U�E�M�U�   ]�����v U��WVS��l�E�f������ ����  �H����EЋE�$�����U�B|����  �EЉD$���   �$�������>����U���u����������E�    �U��UԉE̍�Ũ���E��������E��E���E��D$    �U؉T$�U�D$�$�����EЋ@����  �E�    ���t& �EЃE��U�9P��  �UЋ�U܋��D$    �E�� �D$�E؉$�b�����uU��E��RD�@<U�U��T$�U��B�U��D$    �D$�E؉T$�D$�E�$�k����E���t�����x����������E�    �E�    �U��E��t& �U��E�BX�E�@����   ��@���1��UȋU썃�����E�f��B�U�4��F� �D$    �$�D$�E��D$������E���   ��~l�F�U��D$   �D$�E�T$�$�����V��tD1��>w�������������    �EȐ�t& �T$�U��D$�E�D$   �T$�$�j����U����E�D$    �T$�$�M����U�9z�5����E��E�E�9E�������EЃE��U�9P�A����E��U�9U������EЉ$������l1�[^_]Ð��=����]�����t& �������M�����t& �������=�����t& �������-�����t& �E�� ����E�U��   �T$�$������*����t& U��WVS���E�6����ÿ �p(��t(��ۨ���t& �F�P�T$� �<$�D$������6��u��1�[^_]�U����  �]��������o �}�}��}�u�uZ���L����D$�� �����@����$�6����G�4$�D$�'����G�t$�D$��@����$�^����]�u��}���]Ð�t& ��(����D$�E�D$    �$����������ʍ�    ��    U��WVS�<������ ��,�E�$������U����   ��4����������U썓����E荃l����E�    �U�E��-���D$�E�U�D$�D$    �$�����E��E�9E~n�U��E�<��U�|$�$�@�������t^�E�U�t$�D$�$������u����   �U�D$��D$   �$�D$�E�D$�����E��E�9E���,1�[^_]Ít& �|$�E��U����t& U�   ��WVS��,�u�!����ê ����   �����E�D$�E�   �$�l����E�H����   �E�    �v �U��U���E��$������x��tv�v �w�U�D$    �t$��$������uM������� ���E�t>���
  �E��U��U��@4�$�E������U��t$�T$�U�D$�T$�U���$�U܋?��u��E��$������E�E��U�9P�O����U�$�x���1���,[^_]�f�U��WVS�����Õ
 ��<�$    �������E���  �}�   ����  �U��D$�E�   �$��������E��h  �$�    ������E�E��$������ث���UԉE���U���t$�$�����E��U��B� �D$�E�D$��Uԉt$�D$�E��T$�$�Q����x9�r��E�@���E�t|�������U؋U萍t& �B�$�����|9�r��t& �E���t$�$�s���9��E�s�U�t$�B�D$�E��$�����U؋E��t$�T$�$�}����U��҉U�u�������� ���E�t2�E����
  �x4�$�����U��t$�|$�T$�U��D$��$�U܋E��$�ս���U�$�ʽ���E��$����1���<[^_]ËU��D$    �D$������D$�E�$�o���1��΍������D$�������D$������� �$�g����   룍t& U��WVS�������u ��,�E�$   ���
  ��p���D$虸���E����  �}��.����E�    �E荴&    �7�t$�E��D$   �D$�E�$������t$�|$�E�$��������t��t
��,��[^_]ÃE����E�9E��E1��$������l����E��"��E��D$�E�$�b����ƃ�t4��9}~W�E���E��E�@l��űE��D$�E�$�~����ƃ�űE����D$�E��D$    �D$�E�$����9}�f��D$    �E�$�y���������� ��t�E���   ��t'��^����D$�D$   �E�$������,��[^_]Í�G����D$�D$   �E�$�����E�$�����E�$�ֻ��������E1��$������c����v U��WVS��\�U�����Ï �B@�D$��r����D$�E��$�9����ẺE��D$�D$    �D$    �E��$�����E��E��$�����U���t�E�    �E���\[^_]Ð�U�B@�D$   �$�D$������D$�����E̅�tW��D���1��E���L���1҉E���������EЅ����E��T$Dǃ��D$�U��D$   �T$�E�$�a�����9u�wƍ������D$�D$   �U�$�=����E̅���   1�1����9}̉���   ��    �E��EЋ��D$�U�$�������E�űEЋ��$芽�����E�t��$�����D$�EЋU���D$    �D$�������D$��T����D$�E�$��������f��U��$������E���\[^_]Ív ��'    U��WVS��,�)����ò �҉E��E�    ~�E� �E�������}���E��+  �D$�E��   �$�[����E�p����   ��x����E�    �U���U�M���U�ɋ<�t!�D$    ��D$�E��$��������   �<$���������t0���������t���
  �t$�D$�G4�D$��$�҉4$軸���U䃺�   ~N���   ��tD��w�E�t$�$�ҷ���U��D$�F�D$��T$�D$   �D$�E�$�G����?��u��E�E��U�9P�"����U�$�3�����,1�[^_]Ð�t& �D$�E��   �$�`����������������������U��M�E�U�E   �M]�T����t& U��M�E�U�E    �M]�4����t& U��WVS��   �E�S������ ǅl���    ��~�E� ��l����$�����h����D$�E�   �$芺����h����B���  ��l���ǅd���    ���  ��h����   f���t�����`����$�D$�   �D$�T�����`����E� �D$
   �$�ʳ����t�  ������� ��t>�<$�������`����Ƌ��
  �D$�G4�T$�������t$�D$��$��4$蹶����h�����d�����d���9B~U���d����<��D$    ��D$��l����$�
�����u��G(���'�����t���ƅt��� ��`����3�����t& �Ĭ   1�[^_]Ív ��t���ǅp���    ��`����   ��t& �D$��`����D$�   �$�2�����`����E� �D$
   �$訲����t�  ���������t>�<$�ݰ���������Ƌ��
  �D$�G4�t$�D$��`����D$��$��4$藵����h�����p�����p���;P�/�����h������p����<��G(���C���ƅt��� �Q�����&    U��WVS��   �}�������\  ǅl���    ��~�E� ��l���褼����h����D$�E�   �$�:�����h����r���  ��l���ǅd���    ���%  ��h����   f���t�����`����$�D$�   �D$�Ա����`����E� �D$
   �$�J�����t�  ������� ��t>�<$������`����Ƌ��
  �D$�G4�T$�������t$�D$��$��4$�9�����h�����d�����d���9B~U���d����<��D$    ��D$��l����$芾����u��G(���'�����t���ƅt��� ��`����3�����t& ��h����$讵���Ĭ   1�[^_]Ð�t& ��t���ǅp���    ��`����   ��t& �D$��`����D$�   �$袰����`����E� �D$
   �$������t�  ���������t>�<$�M����������Ƌ��
  �D$�G4�t$�D$��`����D$��$��4$������h�����p�����p���;P������h������p����<��G(���C���ƅt��� �Q�����&    U��WVS��\�E�F������� �P0���6  �@4�@�D$��y����D$�E��$�k����E��$��������$  �E�E�    �@���E���  �U썃�����UčU�E���{����Uȍ������E��������U��������E�    �E��U���   ��&    �������Ủ$�����x�<$蘸�����E�t�|$�Ẻ$�D$謴���E��$�1������  ��D$�U��������D$�E�$�T$臫���E�D$�E�D$�E�$辯��������   �E��E�$�e����E�$�Z����U؋�҉U���  �E؋p�V���e  �F���E�EE��T$�D$�F�D$�U��T$�Eĉ$�������D$�E��D$�U��T$�Eȉ$�ݪ���F��������E�D$�E�D$�E�$�	����ƅ��K����E�D$�U��D$   �T$�E�$�~����)�����t& �E��D$   �D$�������D$�U�$�P����������D$�E�$諳���E܍�ɩ���D$�E�$蓳���ǋE܅��E҅��EӀ}� t
�}� ��   �   �}� t�U܉$�����}� t�<$�ޱ���E�$�s����E��$�����U��$�ݯ�������t& �F���E�EE��D$�F�D$�U��T$�Eĉ$蛩������f��������$�Ʈ���U؃E���҉U��8�����    �E��$�q����Eԃ�\[^_]�f��@<������|$�E܉$蝸���+����t& �E��$��������v tN�E��D$    �D$��Ю���D$�������D$�E�$�����E��$������E�   �Eԃ�\[^_]Ív �D$�  �E��$�!������a�������� �$�ʨ���D$�E��D$    �D$��Ю���D$��̬���D$�U�$�h����E��$�}����E�   � �����t& U��WVS��<�}�������� �U����
  �E̍�p���D$�$   衩���}�}  �E��������������u܍������}��   �E䍃����U���$����E�   �E؉UԉuЍ�    �E�P0����  �@4�D$�u���D$�E�$胱���E�}����  �E܉$躯��������  �U����h���"  ��u.�B��o���  ��u�B��l����  ����  f�������<$�^��������?  �U����n���C  ����  ������<$�,���������  �U����u����  ����  �t& �Ẻ$�	����U�B0�u؉4$����������  �U����i���  ��u,�B��n����   ��u�B��s����   ����   �EЉ$葮�������  �U����u����   ��u�B��n����   ����   ��t& �u��Ẽ�D$�U��D$�u��D$   �t$�E�$�����E��U�E�9U�����u��6��t�E���   ����  ��^����D$�D$   �E�$虷����<1�[^_]Ív �B��t���� ����Ẻ$�Ѹ���U�B4�R���f��B��p����  ��tԍt& �3����v �B��d�����    �j���f�������v �U���D$�u�4$� ����E�}���}����U���D$    �D$��˩���D$�u�4$�ܶ��������v �u̹   �����(��������������    �u̹
   �}������(��������v �u̹   �}������(����3����v �B��o��v����^����B��p��v����J����B��r���q�����5����v �u̹	   �}������(��������������v ����   �������<$�.��������7  �E��������)�tD�������Ũ��B�P�v-��������ũ��Vv��������V�G)�&    �������������v ���`����B��a����&    �����f��C����v �B��s���t�������    �:����B��e���V������"����B��r�B�����    �u̹   �����(����"�����    ��G����$�D$�D$   �д���u�4$�E����4$������<1�[^_]Í�&    �u̹   �����(��҅������������������u�����U����E�]��&����ï� �u��u���}�~T�U��4$�D$�״���ǋ������ ��t
���   ��tC��^����D$�D$   �4$�������]�u��}���]�f��D$    �4$脴����뫍t& ��G����D$�D$   �4$�ҳ���4$�J����4$�"���뫍t& U��WVS�l������� ���E�$   ���
  ��p���D$�����U�$�����M����   �E��˩��1��u�U��   �E��:�t& �@4�D$��D$�E��$�,�����t9�D$�E�����$�C���9}~J�E�P0��u���D$�U��$������uǋ�����D$�E��D$    �D$�U�$�ٲ��9}�������� ��t�U���   ��t'��^����D$�D$   �E�$螲����1�[^_]Í�G����$�D$�D$   �z����E�$�����U�$�Ħ����1�[^_]Í�&    ��'    U����]�������Â� �}��}�u��D$    �<$诡����H����D$�D$   �$    �������������
  � ��t
���   ��t)��^����D$�D$   �4$�˱�����   �$��������G����D$�D$   �4$袱���4$�����4$�����ōt& U��WVS�<������� ��L�E�$   ���
  ��p���D$���������U�E�$�֪���E����  �M�E���   �M؉$�D$�P�����x�����˩���E�    �E�    �UЉM̍t& �U܋M���$�+������$谫���U܋M�Eԋ��D$�Eԉ$�����U�z����   �u�1���uQ�  ��t& �@4�D$��D$�M؉$�|����~4to�D$    �D$�E�$�_����E�   �U��9z~q�U��4��D$    ��D$�Mԉ$������uЋE�P0��u���D$�E؉$�����~4u�����D$�U��D$    �T$�M�$������U�9z��Mԉ$�����E��E�9E������U�$�֥���u����"  ���������t�E���   ����  ��^����D$�D$   �U�$聯����L1�[^_]Ív �@4�D$��D$�M؉$�L�����tZ�~4tv�D$    �D$�U�$�+����E�   �E��;x�9����M��4��E�H0��u���D$�E؉$������u���D$�U��D$    �T$�M�$�ޮ��먋�D$�M��D$    �L$�E�$輮����e����E�D$�E�   �$�Υ���M�Q����  �����1��E�    �E�����E�9�}D�M��4��F1u��D$    �t$���   �D$�E�$�������|   �M���Q9�|��E���Y  �����1��E�    �E�    �E���v ��9���   �M��4��F1u��D$    �t$���   �D$�E�$�z�����tj�M�Q뺋�D$�E��D$   �D$�U�$螭���_���������D$�D$   �M�$�|��������v �}���tX1��E�    �^����v �EȃE��D$   �D$�U�$�>����D$    �t$�M�$�����E��E�   �P�����U�$�����?�����G����$�D$�D$   �����M�$�^����E�$�3�����L1�[^_]Í������&���f�U��WVS�l������� ��,�E�$   ���
  ��p���D$�����} �;  �	  1��}��U���E��|$�D$�E�$踜����t��t��,[^_]�t& Í�&    ��9u��U1��$跥���E��@����U��   �E��:��t& �B4�t$�D$�E��$�������
  �D$�U�$�O�����9}~;�E�U�4��B0��u��t$�E��$設����uƉt$�E���$����9}Ɛ�D$    �U�$�������������t�E���   ����   ��^����D$�D$   �E�$�O�����,1�[^_]Ð�����U�$���¤���|$�E�   �$�N����w��~1��������D$�E�$�m���9w�<$� ����t& �K����v �U�B4� �D$�U���D$�E��D$   �D$�U�$贪��������v ��G����$�D$�D$   萪���E�$�����U�$�ڞ����,1�[^_]ËU�$��������������U���(�]��	����Ò� �}��}�u��|$������D$������D$�E�$���������u������� ���]�u��}���]�f��D$��D$������$脢���Ր�����U��WVS茬����� ��L�E�}�$�ڪ���Eԉ$蟗���U�D$   �<$�T$�ƍ�����D$茩��������� �$茞��������D$�E�$觨�����3  �t$�G8�D$�������D$�E��$�O����E��$�Ԡ�����`  ���   ��t>�D$�������D$�D$   �<$�����D$   ���   �D$��<����$�������   ��t>�D$��̯���D$�D$   �<$輨���D$   ���   �D$��G����$�̩�����   ��t>�D$�������D$�D$   �<$�t����D$   ���   �D$��Q����$脩���Oh�������W8��]����u؅ɋ��   �U���Z���EЅ��  ���   ��m����uЅ���  ���   ����  ��{����u܋u�t$$�u��L$�T$�t$ �U؉D$�T$�uЉt$�E܉D$��,����D$�E�$������E�$�֘�������0  ���t/�E�T$�D$    �<$�D$�������D$��X����D$�h����E�   �$������E��$�m����Uԉ$�b����E�$�W�����L��[^_]Ð�u��"����U�D$�<$���T$�t$�D$   �����E�4$�D$�"����<$�D$   �ƍ�6����D$�֦����L��[^_]��'����Ƌ ��������$�����D$�E��D$    �<$�D$�������D$��T����D$胦���E��$蘚���6�:�����t& �E�$聚���u�t$�E��$迦���ƋE��$�b����Eԉ$�W����������    �������E�����f��E؉��������    �������u܋��   �������������t& U���8�]�虨����"� �u��}��M����E܋Uܸ   ��to�������D$�E�$������ti�u�4$躦���ǉ$耓���U�D$�B8�D$�������D$�E��$�}����E��t$�u�D$�4$跗������   �]�u��}���]Í�    �U�������D$�$�g������z����u��v����4$�n����   �D��E����t�u�   ��������  �E�U܉D$�$�4�����u��u�4$�����U܋u���   �D$��D$   �4$�D$�������D$蕤���E�ǀ�      �Ff��E��D$�E܉$�ҟ���������E��$�����U܉��   �E��$�k����<$�c����E܋x����   �U�ƃN0�F,   �B4�F���   �T$�D$   �t$�$萒������tC�u1����������$�����U�1������v �U܉$詘���u܉4$�ޗ��1��h�����q����D$������D$������� �$賝��1��=���� �u�D$    �D$�������D$�4$�i�������������v U���8�}��}�]�u�� ����É� �W����   ���   �������D$�B�t$�D$�E��$�������   �t$�D$�E�D$���   �$��������   �D$�E��D$�E�$�/����ƋE��$�������]�u��}���]Ë��   ������ �D$��D$    �D$��(����D$�E�$����뻐�;.  ���� U��E�������]Ð�t& U���(�]��	����Ò� �D$�u���D����������D$�E�T$�$�2����u�4$跙���4$�/����]�1��u���]Í�&    U��WVS��\���   裤����,� �EЅ���  ���   �҉U���  �������E���D�����I����U��E��(��t& �U؉$蹕���<$豕���Eԋ ���E��M  �Uԋr��D$�EЉ$�ʒ���V�҉���  �<$�5�����t��U��E��|$�T$�U��Ủ$�D$�A����E��E؉$�������w����U؉$谠���E܋F�U܉$�T$�ˡ������   �EЋ@H����   �6�D$/   �4$�c����P��D֍�t����U��������Eȍ������UĉE���U��Eȉt$�T$�$�v�������E�� 9�u�y t��iuX�y �t& tp�$�v 臔���v �E؉|$�$�%����U؉$�����E܉$�_���������    ��\1�[^_]Í�    ��y��t& u.�yeu��ys�t& u��y f�u��$�v �����v 띍�    ��d��t& �l����y ��    �\����$��&    �ߓ���U؋Eĉt$�T$�ỦD$�$貍���E��$�ǐ���E��$謓���E��$�!�����������$葌���$艓�������$������F��t& ������v U��WV��S��<�E܋��   ������w� ��t�$葚������   �U܋B8�D$���   �D$��D$   �$�D$��h����D$�������   ��t(�E܋@8�E��$�*����D$�U��<$�T$�w�����t��<1�[^_]Ð�t& �<$�<������   �$讒��1�ǆ�       ��<[^_]Í�    ���   �$覓�������C����������E����t& �E��$�a����<$������tI���D$���   �D$�U؍E��$�T$�"����E��$�w�����u��E��$蘕���t& 릍�    �<$脗�����   �$��������   �$����ǆ�       ������    ��'    U��WV1�S���E�T������� �x1����2�t& ��9�~'�U����H0�D$�E�D$    �$�J�����t҃�[^_]�f�U��WVS���U�E������|� �Rl�@p�҉E�U�~c�E�    ��&    �M�U���@���E�t6�p��~/�M�1����4��E�t$�$�P�����t�~4t*�M���9y׃E��E�9E���U�B��[^_]Ð�t& �U�t$�$轜������������������U��WVS�<������� ��,�#����E�    �E��E��D$�E��D$�U�T$�M�$�����ǋE�����   �E��ձ����E�@D�L$�D$    ����۱��EЍ������D$�T$�U�$������E�� ��t1��x����D$�t$�D$    �M�$�ћ���U��B�E��B��uՍ������D$�D$    �E�$褛���U�BD����   ����   �E�1��H��3�l�t& �E�T$�D$�U�$�F���������   �E��H��9�};�U�����B4��t��t�z,tދB�B,   ��u��M�A�B럍�&    �}��t�M�L$�E�$�����U�1��$�������,��[^_]Í�����   �D$�$�D$   �Ś���M��$�ʐ����,��[^_]Ít& �U��$豐����,��[^_]Ít& ��'    U��WVS��,�E�6����ÿ� �D$�E�   �$�Q����U�T$�ǋE�$蝘���E�U�   ����   ����   �<$�Z����U�E�$�L����E��E�<$�D$�
����U�����E�zPtm�t$�E��D$�U�T$�E�D$   �D$�������D$�U�$�Ù������   �E�@T����   �E�D$�U�T$�E�$�t�����,[^_]À}� t�������D$�$�D$   �l����D$�����E��D$�U�T$�E�D$   �D$�������D$�U�$�2����G�U��G,   �O0 �B�l�����t& �}� t܋U��T$�E�D$�G� �D$��D$   �D$��L����D$�U�$�Ԙ���E�$�����U��$�ތ����,1�[^_]ËG� �D$�U�T$��D$   �D$������D$�E�$聘���U�$薌���E��$苌����,1�[^_]Ð�t& U��WVS��  �}�����Ì� ����  �U�� ����D$�D$�������D$�$�D$   �����M�E�L$�$譊�����u
  �E�x4�$  �U�B����  �E�   ��d������d����D$�$訙������h�����  �$�}��φ����x����E�$辆���U��h����T$�$���w����M�E�    f�E�  �E� �E�Upgr�E�adin��f�E�g �yP��   ����   ��x�����h����t$�M�D$�B� �D$��D$   �$�D$��L����D$�������x����$�
����4$����ǅ����   ��������  [^_]Ív �U�rT��������Jd��������D$�$������������u��M�A� �D$��D$   �D$��$����D$�E�$�f���댄���  ����    ��  �E�@T����  ��h����M�B� �t$�D$��D$   �D$��L����D$�E�$������h����M�B�A��x����$�
����4$�����M��h����A,   �@,   �U�BD����  �U�z4�,  �E�xX���^  ��t& �؋E���   ����	  �E���   ��t8���   �$�����M�Ƌ��   �4$�D$�'�������  �4$�g����E���   ����  �U�$������x����  ��]����� ������    ������9�h���t4�?����  �w�E�t$�$肈�����������X  ��������u��M�E�t$�L$�$������������t�������U�D$�D$    �$荔�������t& �Down�Ggrad�Ging ��x�����h����t$�M�D$�B� �D$��|$�D$   �D$�������D$�E�$�)�����h����M�B�A������M��d����L$�$�o��������8����U�M��D$    �$�D$��ձ���D$�������D$�œ���G��~B��x���1���X����t& ���X����M����� �T$�D$    �$�D$聓��;w|Ѝ������D$�E�D$    �$�_����<$�g���ǅ����   �p����t& �U���   ��������@4�@�$�����U�D$    �D$    ���   ݝp����$�N���1�RP�,$��؃���؋���݅p����������:����U�\$�M݅p�����D$�A4�@�\$�D$    �$�D$��и���D$蘒��ǅ����   ������t& �Mǅ����    �AT������������v ��h����M�B� �t$�D$��D$   �D$��l����D$�E�$�+����.���f��M�A4�B�U�9�����&    �E�}��E�    f�E�  �E� ���y  �E�Upgr�E�adinf�E�g �M�$������U�M�ƋB� �t$�D$��$�|$�D$   �D$������D$蕑���4$譅���E�@,   ����f��U�� �����L$�D$    �D$�E�$�V����}�����t& ��h�����t~��h����$�����p��ti�E�   ���������6��tR�~�U�|$�$褄��9�h���u���h����������|$�L$�$谉����������t�������'�����&    �M�qd���b  �a����M�U�$�T$��l����D$赎���������     ��X�����\����$��}����\����D$   �$�ό����\�����������`����L$�$    �D$�Y����������U��l���� �J0�   �E�L$�$豌�����ǉ�������  ��h������7  ��h����$����ƉD$��{����D$�E�$��}���4$�����E�D$�������U�D$�E�$�D$�������g  �E�$謃���U���   ���d  ��h�������  ��h������   �ɉ�������  ��������D����M艅,�����(�����$����"�t& �4$�D�����������҉�������  �������U�x��$�D$�T����Ɖ$�ʋ����t��M�|$�$�7�����t���(�����$�����,����t$�T$�$�D$�|���E�4$�������D$�ȉ�������;  �������$蠂���O�����&    �E�Inst�E�allif�E�ng�E� �~����v �ȋM�$�L$�Ì���������������X����M�   ��D$    �D$�������D$�E�$������l����E�L$�$�Ћ���U��%����D$�D$   �$�Ӎ���U�E�|����M��B����D$�D$   �$諍����`�����\����$   �D$�T$諈�������������U�M��D$�B�D$    �$�D$������D$�S���ǅ���������l����M� �D$�A8�D$��(����D$���   �$�){���U���   �$蘄���M�����   �@  �D$�E�$蘇���������������U���   ����������   �D$��5����D$�E�$�z���E�$��������	  �������D$�E�$��������|����-  �E�$艀���M��D�����������   ��������|����$�`y�������

  �$螀����Ɉ�����tӋU�M�������B�p�Ap��t
�$�`����1�������/�t$����D$������D$�E�$��y���������E��D$    �$�D$�5����������$�����E�$����I����v �U���B8�L$�$�D$�\�����������������U�M��D$    �$�D$������D$�H����k����������D$�E�D$    �$�&���ǅ���������?����U�$�܆���@���������P
  �M��������H�����D����� ���ǅ����    ���   ��������̺����D�����@�����<����4�t& �������������$�~���������	�ɉ������2  �������������E�I�$�������L$�{���������$�0�����t��������$讅����u���������H�����D����D$�E�L$�T$�$�!x���u�4$�����4$���~����u1�M�AL���8  �E�������$�D$�T$�!x��������  �������$����M�y4�{  �$   �s�����t� inst�@all �E�������M���   �ɉ������\�����������D����M艅8�����4�����0�����t& ��������҉����������������U�p��$�D$�|z����h�����������$�D$�b����u��������$�Ѕ����tI��8�����������4����T$��0����L$�D$�$��v���u�4$蕅���4$����|������  �������$�|���D����U�M��$�D$    �D$��T����D$�j����4$�|��ǅ���������{�����������J����M�D$�������D$�T$�t$�D$    �$�����������$�0|����h�����t"��h������   ��tf��F� �����6��u��U���   ���������&    �F� �f����6��u������v �u���Ƌ �$��u���U�M�D$���   �D$    �$�D$��1����D$�������D$�k����6�������������������x����E�$�v������&    �&����U���   ���M�����h�����tw�JT��up��h����A0�A,   ��  ��d����D$�D$   �$�����M��h����$�T$�Nx����h����U�D$�$��z����h����E�L$�$�T{���U������D$�D$   �$臆���M��D$������D$�E�$�yt���U�E�D$�B�@�$�D$�}|���������E�$�\z�����������V����M�������D$�D$   �$�����U�M�B�@�$�D$   �D$������D$�����U�B�@�$�D$�{����������������M�E�L$�$�x���U��]����D$��0����D$�D$   �$苅���M�E�L$�$�9}����������������U�$�0����@����������  ��h�����T����X��t& �<$褀����us�M�AL���>  �E�������$�D$�T$�Ys��������  ��������҉������R  �������U�@�$�������D$�+v���ǉ$衁����u��<$��x���볋������U�D$�$�=x��������������   �������������T$�$�${������  � �U�D$   �D$�������$�D$�������D$�?��������������$�\s���ƉD$�������B�����8�����4����������L$��0����T$�D$�$��q���u苅�����t$�$�
��������  �4$��w���t& ������h�����t��h������$�T$�o���������������� �������U�D$   �D$�������$�D$��<����D$�]����M�|$�$�s���������U�7��4$�D$�������������h����������D$�E�t$�D$   �L$�$� ����������]�����E�$�	w�������������U�D$�$�ov�����������M�D$�$�vr������������T����M�D$   �D$�������T$�$�D$聂���E�������M�D$�T$�$�p�������\���������D$�E�D$    �$�>����������[�����&    ��|����$�x���������������J����M�D$�������t$�T$�D$�D$    �$�����4$��u��������������U�L$��@�����D$    �L$�D$�E�$见�������� ��   ��U�D$    �D$��ɿ���D$�$�w�����������������M������D$�D$    �$�L����	����n���Ƌ �$�fo���D$�E�D$��1����D$��B����D$������� �$�'{���E�$�u���6������������<����E�D$    �L$�$�Ҁ���V����M������D$�D$    �$谀�������U�$�p���t& �a����M�$��o��������D$�E�D$   �$�o����U�E�h����U�B4   �ыR0�Ѓ��A0�D$�T$��D$   �D$��X����D$�E�$�"�����h�����t�U�BT��u��h����A4   �E�   �$�1z����%����D$�E�D$   �$�����U�E�}����M���   ��t�A4�B��;����D$�E�D$   �$�����`�����\����$   �T$�L$�z��������Ӳ���D$�E�D$   �$�W����h����$�{���M�$���{���v��������������t`��������Ļ����P�����L����������������p�y��u�U��t& �6��tJ�F�<$�D$�����u狕������҉�����u���h����$�+n���E�$� n���������&    �<$�z������    u��U�|$�$�#r��9�h���u��E��P����|$�D$   �$�L$�Z~���U���   ���n����<$��u�����^����k��� �$�Zl����L����|$�D$    �L$�D$�E�$�~���%����t& U��WVS謀����5� ��<�y���E�    �E܍E��D$�E܉D$�U�T$�E�$�r���}����E���   �E�U�pD��۱���
��ձ���D$    ��EЍ������D$�L$�T$�U�$�j}���E�� ��t8��x�����&    �D$�t$�D$    �E�$�9}���U��B�E��B��uՍ������D$�D$    �U�$�}���E�HD����   �U�1�����   �U܋B����   �21ɋz����t& ��9��B,   ~"���z u�E��9��B,   �@�B��ޅ�~w������1��U؍������U����    ��<��G4��tC��t>�E؉D$�U��D$   �T$�E�$�Q|���|$�D$    �U�$�:l������u`�U܃�9r��E�1��$�,r����<��[^_]Í�    �¿   ������D$�$�D$   ��{���E܉$��q����<��[^_]�f��E܉$��q����<��[^_]Ív U����E�]�u��}��@d�]~����� ��t�]�1��u��}���]Ð�t& �/w���ǉD$�E�   �$�r���G��~"1��t& ������D$�E�$��y��9w�<$�Hq���t& 뚍�    U��WVS���E��}����_� �@���E�~i������1��������U�E�v �U��<��4t<�E�U��D$   �D$�E�T$�$��z���U�D$    �|$�$�j����u
��9u��1���[^_]Í�    ��    U��WVS�<}����Ź ��<�D$   �������D$�E�$�[z���U�T$�E�   �$�4|�����E�t$�@�D$   �D$��м���D$�E�$�z���������D$�D$   �U�$��y���E�D$�U�$�:x������t$�@�D$   �D$������D$�E�$��y����ھ����D����U��T$�D$�D$   �E�$�y���E��t'�U�B�D$   �D$��K����D$�E�$�hy�����$  �G�D$   �D$��T����D$�U�$�<y����D����D$�D$   �E�$�y���E�O0   ����   �E�$�2h���E�<$�'h���E��|$�U�$��j�����ƋE�E�xP��   �t$�E��D$�U�T$�E�D$   �D$��l����D$�U�$�x������   �E�@T���X  �E��D$   �D$�������D$�U�$�`x���|$�D$    �E�$�Ih����<[^_]Ð�t& ��D����D$�D$   �U�$�x����<�   [^_]Í�    �}� �2�����]����D$�D$   �U�$��w���D$�����E��D$�U�T$�E�D$   �D$��l����D$�U�$�w���U�B�B,   �G����f��}� t�E��D$�U�T$�U�B� �D$��D$   �D$��L����D$�E�$�Qw���U�$�fk���E��$�[k����<1�[^_]Ð�t& �U�B� �D$�E�D$��D$   �D$������D$�U�$��v���E�$�k���U��$� k����<1�[^_]Ív ��'    U��WVS��,�E�vy������ �D$�E�   �$��f���E��M�   ��t|�U�1��R��~p������1���Խ���E�U���t& �U���9z~K�E��|$�$�"s���U�|$�D$   �T$�U�ƋE�$�D$�+v����D$�E�$�ju����t���,[^_]�f�U���8�]��x����B� �}��u��mc���E�   �����  �E�<$�D$�-q�����E���   �w���L  �u�E�|$�D$   �Ɯ   �4$�D$�#d���ǋ �4$�D$�sw���U�$���v�������   ��   �4$�d���<$�E��d���|$�4$�E��Fg���U�����zPtt��tp�E��U�D$�T$�F� �D$��D$   �D$��L����D$�E�$��t���U�O0 �G,   �$�i���E��$��h���E�]�u��}���]Ð�t& �U�$��h���E��$��h���U������D$�������D$�D$   �$�t���E�D$    �|$�$�pd���E�뒋�U�D$    �D$�������D$�$�Ht���E������c����$Ð�����������U���8�u��u�]�}���v����Y� �F0���   ��D$�E�$�Cr�������%  �4$�c���<$�E��c���|$�4$�E���e���D$�E�E�D$�E��D$��D$   �D$�������D$�E�$�s���}� �  g�F�O0   �F,   �G�E�D$   �|$�$�Xc���+f��D$��D$   �D$������D$�E�$�-s��1��]�u��}���]�f��E�D$�E��D$�F� �D$��D$   �D$��L����D$�E�$��r���E��$��f���E�$��f��1�띍t& �4$��a���ǉD$��D$   �D$��L����D$�E�$�r���<$�f��1��Y����F� �D$�E��D$��D$   �D$������D$�E�$�Qr���j���U��S��$�E��t���Á� ���   ��u>�U��D$�B�@�D$�������D$�E��$�`���E��$�i���E��$�f����$1�[]Ít& ��'    U��WVS��L�E�t����� ���   ��t��L1�[^_]Ð�t& �U��D$�B�@�D$�������D$�E��$�_���ẺE��D$�D$    �D$    �E��$�_j���ƋE��$�re����u��U̅�tz������1��������U��E����t& ��9ủ�vU�U��T$�EЋ��$�m����u݋EЃ����D$�E��D$   �D$�U�$��p���EЋ����$�rh��9u�w��E��$�"o����L1�[^_]Í�    ��    U��WVS�\s����� ��L�E��EЉ$��l���U�$�Ol���@���E���   ������������U��+�t& �4$�tq���D$�EЉ$�h���E�� ���E���   �p�4$�k����uʋU�t$�$�wf����t�D$�E�$�dc������  �U���   �t$�|$�D$   �D$�$��o���E���   ��u��4$�bg���E�� ���E�u�f��U���   ��u{�������E�f��E���E�tf1��f��E�� ���E�tP�p�4$�k����u�U̿   �E�t$�D$   �T$�$�No���UЍE��D$�$��o���E�� ���E�u���u��E�$�^���U�E�T$�$�b���E���E���   �u�f��@�U�D$�$�b����t'�E��@�$��b���E��@    �EЉt$�$�_o���E�� ���E�u��E���E�t#��t& �@�$�b���E��@    � ���E�u�UЉ$��o����L1�[^_]Ð�t& �Uȉt$�$��f����������$�]c�������E�    빍v U1ɉ�WV1�S���E��p����k� �E�    �Px�@|�҉U�E�x6��    �U���P��u���x����������u��9u�}ӉM��E����   ��   �$�h��������   �E�8�E��xq1�1��t& �U���P��t+�v �����t�xu��@@u�����H@�����u��9M�}�����    t1ҍv �����`�9�|�E���[^_]��    �퍃�����D$������D$������� �$�'g���E�������f�U��WVS��,�}�M�o����,� ���   ���E߅�t
�}� ��   ���   1����E���   �E�@D��u
�G0�M  �}� ��   �������������O0�   �G,   � ��ܿ���t$�D$�|$�E�$�=f���|$�E�$��]���������t$1��D$�|$�E�$�f���|$�E�$�``���|$�E�$��`���E��G4   �@   ��,��[^_]�f��E�@`��un��   �D$�������D$������� �$��e����,��[^_]Í�&    �G� �D$��D$������$�7d��������� �$�`���������    ��D$��P����D$������� �$�|e�������v �E��D$�|$�E��D$�E�$��j����������E�@\��ui��u��D$    �D$�������D$�E�$��j����ȿ���E�f������t_�xu� �D$�E��D$    �D$�E�$��j���ύ�&    �E��|$�D$�E�$�Fa���ƋE��$�^���������������   �D$    �D$�������D$�E�$�dj���������D$�D$    �E�$�Gj����$����D$�D$    �E�$�*j����`����D$�D$    �E�$�j���������D$�D$    �E�$��i���������D$�D$    �E�$��i����Ϳ���D$�D$    �E�$�i��������t& U��S���E�Xl����� �D$    �D$�E�$�pb����1�[]Í�    ��    U��WVS�l���å� ���u� e���E싆�   ����   �U����   �x��   �@   �E�   �E�   ���&    �E��U��E�|����tN�t�u�W�B��~�1���t& ��9r~ȋ���x4u�D$�E�$��h���W�E��Ր�t& �}�tJ�U�r��~@1��U����U��9r~/�D$    ����D$�E�$�]a����tՃ�[^_]Ð�t& 1���[^_]Ë�D$��r����D$��4����D$������� �$�Hb��1��ʐ�������U��S��$�E��j����Q� �Pp��������DЋE�T$�D$��D����D$�E��$��U���E���$[]Ít& U��WVS��<�E�vj������ ���   ����  �x��tB��ɩ���U썃@����������E؉UԐ�w�E�D$�F�$��^�����F��  �?��u��	c���ǉD$�E�   �$�c���O����   ��@���1��������E��U��*��    �P��tI�R��t�T$�$�b���O��9�}\����x4uыP,��t��t���tۋP�Ґu���    � ���U܉D$�E��T$�������D$��$��`���O9�|�f��<$�\���E�@���E���   ��@�����0����U�E��!�v �G�D$�G�$��f���E�� ���E�tj�U��z�G��t�$��f���ƋG�$�,\�����G    t��G�U�D$�G�T$�������D$�E�D$��$�`���E�� ���E�u���t& ��<1�[^_]Í�    �/S��� �$��S���U؉D$�F�T$�������D$�EԉD$��$�_���3����t& ��'    U��WVS��L�U�6h���ÿ� �B8�$�a������  �U�B8�$�tY���E�$��\���E���$�\���E�� �$�Md���U�   �UЉ$�I^���}�ǰ   �<$�Y���u���   �4$�Y���U�Bp��t�$�Y���E�@p    �Bt��t�$��X���E�@t    �Bx��t�$��X���E�@x    ���   ��   �EЍU�U��������}�u�E�E��EȉŰE�1��E�    � �P�E؅҉U�~J�H1�1��E�    �A���]����t#���t1���8 ��t& t
�@����u�9�O�����;u�|ċU܉|$�T$�U؋B�D$�EԉD$��U��D$   �D$�E�T$�$��c���U؉$�YX���EȃE�9E��D�����L[^_]��Q���ǋ ��'t5�$��Q���U�D$�B8�D$��p����D$������� �$�]�������U�B8�D$�������D$�E��$�_Q���E��$�tT���ƋE��$�WW�������������������������U����]���e����R� �҉u��։}���t� ��t�$�W���4$�d����]�u��}���]É���'    U��WVS�|e����� ��  �������L����������L����$�������D$��Y���B   ������   ��(���1�󫍃)�����L��������ǅ����   ǅ����   ��H��T�����F�����X����������D��`�����d�����d����������L��l�����t�����p����������P��x�����������|����������T�������������������������X��������G���������������   ��������<���������������   ������������������������l��������Q���������ǅ����   �����������������ǅ����   �   ��������!�������������������������������������ǅ����   ǅ����   ǅ����   ��d�����������������������ǅ���   ǅ���   ǅ���   ��p�������������������������x�������������� ����������t����������������������   ���������������������   �� ����������$����������|��,�����.�����0����������h��8�����H�����<���������耉�D����$  �Z���B   ��@�����󥋅(������8  ������D$   �D$������D$������$�_���������D$�E��D$   ������$��Z������$����  ������D$�E��D$   ������$�Z������$�����  �������)���������������� �� �����0���������������   �t& �xr�'  �xc�  �x �  ��4����T$�E�$��Z������  ��8����T$��4����D$    �D$�� ����D$������$�}^����0����$�R����4����$�R����8����$�sR����<�����t��<����$�[R����,����$�MR����(����$�?K������,�����  �$�yR���D$    �D$    �D$    ��,����T$������$�O����t���T����D$    �D$�D$   ��,����T$������$�O������  ��d������X  ��h���)ЉD$��,���Љ$��Z����0�����|������   �E�)ЉD$��,���Љ$�Z����4����U�����  �E�)ЉD$��,���Љ$�iZ����8����U�ǅ<���    ��~�E�)ЉD$��,���Љ$�9Z����<�����0����   ��������   ��0����8s�������0����   ��������  ��4����D$�U�$��X�����i  ��8����D$��4����� ����D$�D$    �T$������$�Q\���������@����$�^P����$�����  [^_]Ð��@������t]�։׃���4����$�T$��\����u5�G����  �v s�G�    ��t& �b����v ����t& �Z  �������u���8����D$��4����������D$�� ����D$�T$��������$�U���	���f��U��E�)ЉD$�,����$�X����8����L����v �U��E�)ЉD$�,����$�X����4���������v ��l�����p���)ЉD$�,����$�dX����0���������t& ��,����$�fO����,����D$   �D$������������D$�T$�������$��T��������&    ��0����   ������u{��8����T$��4����D$�U�$�Q���������&    ��8�������  ��8����w�$�u[��������f���8�������  ��8����$�@S���W�����f���0����
   ��7������   ��0����   ��������^  ��8����D$��4�����\����D$�D$   �T$������$�Y����8�������  ��8����$��Z���Ƌ�4����$�Z���t$�D$�� ����$�P��������v ��@����$�M��������$�G��������$�G����(����$�<O����$�����  [^_]Í�&    ��8����$�vP�����D$�U��$�2I���U�����  ��8����$�T$�3Q���a���f��D$    ��<����T$��8����D$��4����T$�E�$��K���)���f���4����������D$�������$�T$�"Q��� ������E���Ƌ �$�F���D$������D$��l����D$��B����D$������� �$�YR����@����$�KL���6���������    �D$   ��<����D$��8����T$��4����D$�U�$�+K���i�����4����������D$�D$   �T$������$�W���$   �R���������f� 10�@ ��8����������8����D$��4����T$��0����D$�������D$������� �$�|Q����@����$�nK��ǅ$���   ��$���������A����D$�D$    ������$�W��뻍t& ��'    U�6   ��WV1�S�Y����>� ���   �}�E�    �������E���E�$�|E���U؉�$����$�F���M����0����$�gK���}�� ��4����<$�sF���M�E�Q�@0    �@4    ����  ��g����������T$�D$������|$�E��8�$�XD���U�B8�$��M���M���A8�(  ���   �AD    �AH    �AL    �AP    �AT    �AX    �A`    �A\    �Ad    �Ah    �Ap    �At    �Ax    �Al    ǁ�      ǁ�       ǁ�       ǁ�       ǁ�       ǁ�       ǁ�       �D$��s����D$   �$�#H����t���   [^_]��D$   �E�   �D$�������$�R����u��D$   �E�   �D$��|����$�R������@���u��$   ��O���E��  �M���t��\����D$�$�' ���  �u��4$�"L�����F  �}�L����8���tZ�4$�L���<$����K���D�$�[O���E�E��D$�U�BL�D$������E�$�L$�rB���E��$�wH���E�E��Ɖ4$��D����K�����$�O���u���,����4$�K���������T$�t$�� ����|$���D$��,����$�S���E��$�U���U��,����B<�$��T���}�U�G@�BL��t�D$�������D$�E�$��A���M�1���(�����(����	   󫋅(����D$    �D$    �D$�E�$�sL������   �M�����   �}�1�1҉�������t& ��9Ή���   �E�����t鋅����D$��$����L$�}���<$�H�������  �M�뻍v �_@���Ƌ �$�#A���D$�}�G8�D$��]����D$�������D$������� �$��L���6���   [��^_]Í�    ��[����$�C������b���D�������(����$��P���U�B(���:  �E�����  �U�B��t
�M�AD   �}�G��t
�E�@H   �U�B��t
�M�AL   �}���t
�E�@P   �U�r��t
�M�AT   �}�O$��t
�E�@\   �U�R ��t
�M�A`   �}�G0��t
�E�@d   �U�B,��t�Mǁ�      �}�G8��t
�E�@|   �U�B<��t
�M�Ah   �}�G4��t
�E�@l   �U�M�B@;��   t���   �}�E�WL��p�.����E�WP��t� ����E�WT��x�����GD���-  �wH���T  �E�@����D����@  �U苍D���������]��&    �G4�@�T$�D$������|$������$��>���E�$�M����u;�E�$��D����D����	�ɉ�D�����   �q��t�}��O0��u��G<�f��D$    �D$    �t$�E�D$�U�$�P��띋}�����<���tN�E�p��u�  ��6���~  �V��<������L����L$�$��P����uՋ}��L����G0   �G4��$����$�O���E��$��C����,����<$��C����@����e����E��}�����P�����H����V����U苍H�����������t& ��H����	�ɉ�H����*����}�q�Wp����   �F�T$�D$�� ����D$������$�Z=���E苍P����D$�L$��D$��0����<$�H���ƋE�$�8C����t��E�P4��tV�F�$��K�����c����D$   �t$�D$    �F�D$�U�$�O���8����F�$��O���E�f��p����v �p4륍v �� �����<����D$�������T$� �$�H��ǅ@���   ��@��������4$�D$   �>���E�� /usr�@/lib�@/ipk�@g/li�@sts �u��}���������������t$�D$��4����$�D���������t$�D$��4����<$�D���������D$�������D$�<$�lD���g���������D$������D$��$����$�ED���K����E��D$��$����|$�E�$�M�������������ǅ@���������@�������������U1ɉ�1�V�u���u	���t& �ЋP�H����u�^]Ív U��WVS��O����u� ���������7��t��$�2A����p�$�%A�����7u��[^_]Ít& ��'    U����]��O����"� �u��}��}�$   �G���ƋE�$��M�����F�7�]�u��}���]Ít& U��WVS���}�FO����ϋ �7����t8��A����� �E��f����2����t�����M��DA u��1�[^_]Ív ���   [^_]Ít& ��'    U��WVS��N����e� ���E�$�mC�����$��F�����E���   �U1��$�JC���U�ҍ|�t*���XA�����ҍ�    t���v t����DA u�9�v)�,A�����    ���    ��9��v v
��DB u��G �E��t$�$��C���E���[^_]Í������D$�������D$������� �$�fE���ϐ��&    U��W�   VS��M����p� ���$   ��E���E�    �E�    �E�f��M�|$�$�L$�<������   ��t& �M�$�9B���ƍG�9�u;�E�|8�
t1��|$�$��:���U�T$�E��)��D$�E���$�Y<����u����Q�m��E�����)�k�29U�t>�E��D$
   �$�G;����t�  �U�$�uK���M��U�����E�M��:���f��U��M���   �D$�$�S:���E��f��U��M��   �$�D$�3:���U�ƋE���    �$�>������[^_]Í�    U����]��L����� �}��}�u��<$�������D$�A������t!�$�?H���4$���?�����]�u��}���]Í������D$�������|$1�� �$�C���ϐ��&    U��S�L���×� ��T�E��D$�E�$�H8����u �E�1�RP�,$���E���؋�����T[]�f�������� �D$   �D$   �D$�������$�B����T[]��Ð�����U��WVS��,�u�K����� �}�E�    ���  ��D$   �<$�D$�������D$�H����D$�F�@�D$������D$�E��$�~6���U�����   ��T$�D$   �<$�D$�������D$�?H����ɩ���D$�E��$�?�����E�tG�E�u�}�D$�������D$���   �$�>?���E�$��=���E��$�<��1���,[^_]�f��75���Ƌ �$��5���D$�E��<$�D$    �D$�������D$�G�����,[^_]Í������D$�D$    �<$�G�������땍������D$�D$    �<$�aG��������q����t& ��'    U��WVS��I���Å� ��,��B���E��E���   ��t��,1�[^_]Ð�t& ������D$�E�������M�L$�D$   �$��F���E�M��   �$�L$�>���E��P��~�������1�������M�E����&    ��9�}��M���4��~0 y�E�M�D$��L$�D$   �D$�E�$�pF���M�t$�$�!>����u	�E��P멐�D$��M��D$   �D$�E�L$�$�0F���M��Q�y�������'    U��S���U�E��H����N� 9Bt��[]Ð�t& �E�D$��ɿ���D$�B�$��?���׍v ��'    U��WVS��,�E�vH������ �@�E�U�   ��ti�U�r(��u�k�v �6��tb�~�U��E��T$�$�GF����uߋU��D$�G�D$�E��D$   �D$��D����D$�U�$�?E���   ��,[^_]Í�    �U��D$�E��D$   �D$��p����D$�U�$��D����,1�[^_]É���'    U��VS�G����&� ���u�4$��$����D$�E��1҅��  ��,����4$�D$�xE���   ����   ��4����4$�D$�YE���   ����   ��<����4$�D$�:E���   ����   ��D����4$�D$�E���   ����   ��L����4$�D$��D���   ��to��T����4$�D$��D���   ��tT��\����4$�D$��D����t6������D$�������D$�������t$� �$��=�����   [^]�f��   �v ��� �����[^]Ív ��'    U��VS�MF����ւ ���u�4$�������D$�DD��1҅���   �������4$�D$�(D���   ��tp�������4$�D$�D���   ��tU�������4$�D$��C����t:��X����D$�������D$�������t$� �$�=�����   [^]Í�    �   ��Ӡ�����[^]Ð�t& U����E�]��vE������ �u����}�u1����]�u��}���]Í�    ���   ��tߍ�    �w�U��T$�$�@C����tË?��u�f�뷍�    U���(�E�]��u��E���Ì� �0�E�� ��t!���t�T$�$��B���]��u���]Ð�t& ��D$�������D$�������t$�T$�L$� �$�<���]�1��u���]�U��WVS���E�D����� �p(��u�H�6��tB�~�U��T$�$�rB����u��D$    �D$    �G�$�s5����[^_]Í�&    ��1�[^_]Í�&    ��'    U1���S�D���Õ� ���U9� �����   9�(����   ��   9�0����   ��   9�8����   ��   9�@����   ��   9�H����   ��   9�P����   t{9�X���tk��*����D$��8����D$�������T$� �$��:���$   �k;����t,� <STA�@TE_S�@TATU�@S_UN�@KNOWf�@N>�@ ��[]Ð�   �v ���$����$�mA����[]Ít& ��'    U1���S��B����u ���U9�������   9������   ��   9������   tt9�����tg��p����D$��h����D$�������T$� �$��9���$   �:����t&� <STA�@TE_W�@ANT_�@UNKN�@OWN>�@ ��[]Ív �   ��ä����$�@����[]Í�    U��VS�� �u�B���à~ �F��uS�D$   �$   �[0���E��F�D$�E��D$��D����D$�E�$�%-���E��$�*3���E�� [^]Ít& �D$��8����D$�E��$��,��멐�t& U��WVS��,�}�A����~ �?o��  ��d����4$�6���E�D$�t$�<$�[=���E�    ��u��`����U�E���8,��  �x��l����4$��5���E�D$�t$�<$�=����u�U苃h���	E���8,�O  �x��t����4$�5���E�D$�t$�<$��<����u�U䋃p���	E���8,�  �x��|����4$�G5���E��D$�t$�<$�<�����  �������4$�5���E܉D$�t$�<$�k<����u�U܋�����	E���8,��   �x�������4$��4���E؉D$�t$�<$�+<����u�U؋�����	E���8,uj�x�������4$�4���EԉD$�t$�<$��;����u�Uԋ�����	E���8,u.�x�������4$�f4���t$�<$�D$�;����u	������	E��E���,[^_]�f��k����1�� �
�����,[^_]�f��U���x���	E���8,u��x������t& U��WVS��,�u�F?�����{ ��:  u!�$   �A7����t	f� ok�@ ��,[^_]Ë�`���!��E���   ��h����   !��E��  ��p���!��E��  ��x���!��E��/  ������!��E��A  ������!��E��S  ������!��E��e  #������u��w  �<$�6��������  �  �E؅���  �E܅��Z  �E����'  �E����  �E����  �E����  �}����[  �Mԅ��(  �4$�2���D� ��,��[^_]Ð��d����$�2���x��h���!��E��������l����$�|2���|��p���!��E��������t����$�Y2���|��x���!��E��������|����$�62���|������!��E�������������$�2���|������!��E�������������$��1���|������!��E�������������$��1��#������uԍ|������������$�1���|�r�����&    �������4$�D$�j7���4$�1��f�, �����v �������4$�D$�B7���4$�Z1��f�, �����v �������4$�D$�7���4$�21��f�, �M����v �������4$�D$��6���4$�
1��f�, �����v ��|����4$�D$��6���4$��0��f�, ������v ��t����4$�D$�6���4$�0��f�, �����v ��l����4$�D$�z6���4$�0��f�, �����v ��d����4$�D$�R6���4$�j0��f�, �N�����B����D$��<����D$������� �$��2��1��p������&    U��VS�� �U�w;���� x ��D$�B�@�D$������D$�E�$�&���E���   ��t�� 1�[^]Í�&    �E�$�	0���ƋE�$�|,����t��%��� �� [^]Í�&    ��'    U��WVS��   �u��:����lw �F4��t6��t1���   ���{  �U�D$�������D$�E��$�T$��%���5��V���  �E�D$��D$�B�D$��O����D$�E��$��%���E�1��D$   �D$��X����D$�E�$�7���U���   ����   �Bp��t�D$��k����D$   �$�8���F����   �@�D$   �D$��}����$�`8���E��$�4����t5�E�@p����   �U�T$��D$������D$������� �$�1���E�1��$��*���Č   ��[^_]Í�    ��D$�������D$�������D$�������   � �$�0���Č   ��[^_]Ít& ��D$�������D$������뾋U�B4������t& �E�u��D$�E��D$��}����D$�E�$�N$���E��$�S*���������t$�U��T$�$   ��%���E��������t$�E��D$�$   �%���������E��t$��|����T$�$   �%���E��E�����   �E����N  �E�����  �E�$��&���ǋE�$�)���E����`  �E�����   �M�����   ��������������|$�U�D$�������T$� �$�i/���e����������t$�|$�$   ��$�����]����E��<$�D$�s*�����F����D$��4����D$�D$    �U�$��4��� �����t$��|����$   �D$�z$�����L�����|����$�T,�����6����D$��X����D$�D$    �E�$�4������f��t$�U��$   �T$�$����������E��$��+����������D$������D$�D$    �U�$�14�������t$�E��$   �D$��#����������U��$�+�����n����D$�������D$�D$    �E�$��3���H����������t$�|$�$   �j#����������|����<$�D$� )����������D$�������D$�D$    �U�$�w3���������    �������t$�|$�$   �#����������E��<$�D$�(�����y����D$��d����D$�D$    �U�$�3���S����U����}��}�]�u��5����9r ���   �������   ~�]�1��u��}���]Ð���   ��t4�p��t%��&    �F�$��&���F    �6��u苇�   �$�4��Ǉ�       릍�    U���H�}��}�]�u�� 5���éq ���   ���   ��t���]�u��}���]Ív �E�    � )�����Ɖ��   �\  �4�J  �W���?  ��D$�B�D$������D$�E��$�����E��$�.������  �������D$�E��$�1)�����E��P  �E��$��%���G�@�$��(���E؍�y����EԍE�EЍ�D����E��U�t& ���<.��   </����E��T$�D$�ẺD$�EЉ$�X���E�D$���   �$�)���4$�K%���E܉$�@��������   �$�~%���G�@�t$�E��E؉D$�E��$�/�����k����Eԉt$�D$�EЉ$����뇍v ���   ���p����$���<$�E܉D$�0��������   �E܉$�%!��������t& �V�F�����t& �E܉$�q&�����   ��������� �$����D$�E��D$�������D$������� �$�R*����    �E��$�A$�����   �����f��E܉$�	&���4$�1���D$���   �D$�������D$�������D$������� �$��)�����   �v����������D$��<����D$������� �$��)���M�����������������U��WVS��<�E�62���ÿn �   �E��+���E��+���E荃�����D$�D$   �U�$�@/���E�D$�U��$�+���E�@��~p�����1��U؋U��&�D$�E�$�U���U䉆�   �B��9��:  ��4���t�F��uʋ�D$�U��D$    �T$�E�$�.���   벍v �U�$�$���������D$�D$   �E�$�.���U�T$�E��$�%���U�B����   �U��E�    ��U����E�$�*�����  �p��u�t& �V��    �6���t& tF�U�T$�F�D$�E�$�a������t׍�����D$�D$    �U�$��-����<��[^_]ËU�E��E�9B�o����E�1��$��#����<��[^_]Í�    ���������H���1��E��X�v �F,��t>�D$�T$�D$    ��D$�E��D$   �D$�U�$�d-���F,   �F0    �E��9x������U��4����   ��uߋV0��t��F,땋U��D$    �D$�������D$�E�$�-���-���f�U�   ���H�M�u��u�]�}��A�/����l 9Fv�]�Ћu��}���]Ít& s������䍴&    �F�Q���E��U���  ����  �E��U�EЉUԍ�����E̋UЉU��2���t,��!������&    �E��E��0���t�����DBt�EԉE��0���tT�!�����t& �E��M��1����t7�����DBt��)�!����   � �DxD���uI9�ue�M��E�MЉEԋE�1�9E�t	�8���E��M�1�9M�t���1���E��	�t4��t�룐�t& ���&    �!����   � �DpD�또��)������U�1��M؉U��M��� ���U܉����DB��   �M��1��DB��   9���   �E��M�E���M��U��9�D$�Ẻ$�����M̉��$���D$��������   ���1����}� �v u��1҄�����f�� ����v �����G����   �������M��������E�EԉM������������E�������E�D$�E��D$
   �$�h�����1����M܍E��D$
   �D$�$�G������������u���    �T�����)ʍ�&    �`����v U���(�E�]�u��}�� ��,����Wi �E��E�0�E����th���td�D$�$�*������t���]�u��}���]Ð�E��t$�$������ue�U����   ��t`���   ��t\9���   �   뷍�&    ��D$������1��T$�U��D$�������t$�T$� �$�#���z���f����q�������   �D$�E��T$�t$�D$��<����D$������� �$�A#���8��������L��+����v U����E�]��+����?h �u��u�D$�E�$�������<t,��>uO�~=�v un�~ f�uf�Ћ]��u�����]Í�&    �~=t�~ u&�������]��u���]�f��~ t��ރ�<��t& u6�~<f�u@�~ f�u8���v �ʍ�    �~ �t& t���    ���    ��>��t& u.�~>f�tF������D$�������t$� �$�4"��1��u������=uՀ~ ��&    uȅ������U�����~ u��������A�����    ��'    U��WVS�|*����g ���   �}�$   �v"���E��E��<$������v�E��  ���A<5vO�������D$�������D$�������|$� �$�{!���E��$�����w�U�� ��E��e�[^_]Ð�t& �����������f��E�$�I���$���o�����D$�U��$�-�����E��`  �  �4$�G���������t$�T$���D$�E��$�&���4$�����v �U��$������d����M�� �E��e�[^_]Ív ��_����D$�<$��������
  �U�B ��t��$�������D$�M��$������E���  �  �U�r �4$�����g����t$���T$�D$�M��$��%���Y������K����D$�<$�b������  �M�Al���0����Ql�e���   �D$'����҉�|����   �U�~/�M�   1��Ih�Mԍv �Uԋ����$���;u��||���D$�M��$������E��z  � Repl�@aces�@:   �U�Bl����   ��M���1���������}�����L�����H����U���Bh����L���D�H������t$�T$�D$�D$�   ��|����$�$����|����$�Q���D$��|����T$�M��$�H���E9xl��U��$�%���M�f�
 �e�������������D$�<$�������  ������D$�<$�������4
  �U���   �$�������D$�M��$������E���  �  �U���   �4$���������t$�w  �v �������D$�<$�z������  �M�A$���H����$�\�����D$�E��$������E��M  �  �M�q$�4$�.���������t$�T$���D$�E��$�n#���������t& �������D$�<$�������F  �������D$�<$������������E���   ��������D$   �U��$�|�����E���  �  �U�����   �D$   �$�D$�������D$��"���T����t& �U���   ���?����$�S�����D$�M��$������E��D  �  �U���   �4$�"����|����t$���T$�D$�M��$�b"���������E���   ��������D$   �U��$������E���
  �  ����l����D$�D$   �$�"��������t& �������D$�<$������V  �E�P<���`����H<�   �e���   �T$'����ɉU��M�~2�E�   1��@8�E܍�    �U܋����$�3��9u��|���D$�M��$�������E���  � Depe�@nds:f�@  �U�B<����   ��M���1���������}�����\�����X�����U���B8����\���D�X������t$�T$�D$�D$�   �M��$�� ���E��$����D$�U��T$�M��$����E9x<��U��$�^���M�f�
 �e��1������9����D$�<$�:�����.  �U�e���   �D$'������   �E�����  �E�   �v �F���t$�x��t�$�����E��<$�����M��DE��6��u͋E��D$�U��$������E��  � Conf�@file�@s:
 �E���   ��t]��������F���tG�@��t@�D$�T$�|$�D$�   �U��$����M��$�R���D$�E��D$�U��$�L���6��u��e�����f�������D$�<$������/����U�B��������$�������D$�M��$������E���  �  �U�r�4$������'����t$���T$�D$�M��$���������t& �U���   �$������D$�M��$�Q�����E���  �  �U���   �4$�b���������t$�f��U��$�G�����D$�M��$������E��8  �  �U�2�4$���������t$�{�����&    ��C����D$�<$�����������M�qd��������Qd�e���   �D$'����҉E��   �U�~2�M�   1��I\�M���    �U������$���;}�t|���D$�M��$�I�����E���	  � Conf�@lictf�@s:�@
 �U�Jd����   ��M���1���������}�����d�����`�����t& �U���B\����d���D�`������t$�T$�D$�D$�   �M��$�J���E��$�����D$�U��T$�M��$�����E9xd��U��$����M�f�
 �e��������T����D$�<$�����������E�xL���`����HL�   �e���   �T$'����ɉ�x����M�~/�E�   1��@H�EЍv �UЋ����$�3��;}�t|���D$�M��$�������E��  � Reco�@mmen�@ds: �@ �U�rL����   ��M���1���������}�����D�����@����t& �U���BH����D���D�@������t$�T$�D$�D$�   ��x����$������x����$�y���D$��x����T$�M��$�p���E9xL��U��$�M���M�f�
 �e�� ����������D$�<$�*������  �U���   ��������$�	�����D$�M��$�������E���  �  �U���   �4$�����������t$�T$���D$�M��$���������&    �������D$�<$�����������U���   ���e����$�y�����D$�M��$�7�����E��j  �  �U���   �4$�H���������t$������t& ��O����D$�<$�"�����7����U�B(��������$������D$�M��$��
�����E���  �  �U�r(�4$������[����t$�T$���D$�M��$���������t& ��+����D$�<$�����������E�@x�� ��l����a�����   ��4���1��E�    ��h�����    �M�At�<���h����<$�D$�����t/�<$�5���D$    �<$�D$����U�E�   �Rx��l�����;�l���|��M�����  ��l���������E�@x��l����e���   �   �T$'����U���l�����~0�M�   1��It�Mؐ�U؋����$���;�l����t|���D$�M��$�N	�����E���  � Prov�@ides�@:   �U�Jx����   ��M���1���}�����T�����������P�����t& �U�Bt���: tX��T������T$DǉD$��P����D$�   �L$�E��$�M���U��$�����D$�M��L$�E��$�����U�Jx��9�|��M��$����U�f�
 �e������������D$��<����D$������� �$�?���e��������t����D$�<$�e������   �U���   ���0����$�D����
�D$�M��$������E�t9�  �U���   �4$�����{����t$�T$��
�D$�M��$�W��������������D$��<����D$������� �$����%����������D$�<$�������   �U�B0�$�!���M�EċA4�$����U�EȋB,�$�/���$���u���Mĉ�t����$�d���ƋEȉ$�W����t����T1�4�t$�E��$������E��>����U�� �MȉL$�Eĉ$�|$�t$�D$�������D$�b���Uĉ$�
���<$�
���Mȅ�������Mȉ$�
�������������D$�<$������������E�PT��������HT�   �e���   �T$'����ɉ�p����M�~,�E�   1��@P�E̋Ű����$�f��;u�||���D$�M��$������E���  �E�� Sugg�@estsf�@: �U�BT����   ��M���1���������}�����<�����8����U���BP����<���D�8������t$�T$�D$�D$�   ��p����$� ����p����$����D$��p����T$�M��$����E9xT��U��$����M�f�
 �e��Y����M�Ix��l��������������D$��<����D$������� �$� ���e������������D$��<����D$������� �$�����e��h����������D$��<����D$������� �$����e��<����������D$��<����D$������� �$�|���e������������D$��<����D$������� �$�P���e�������������D$��<����D$������� �$�$���e�����U��VS�����6S ���u�4$�>����vM�E�t$�$����$��� ����v�E�4$�D$�� ���E�$����4$�����[^]Í�    �������D$�������D$�������t$� �$���뉍�    U��WVS���u����ÏR �}���.  �������D$�|$�4$����������D$�|$�4$�����������D$�|$�4$������T����D$�|$�4$�����������D$�|$�4$�����+����D$�|$�4$�����K����D$�|$�4$�����C����D$�|$�4$�z���������D$�|$�4$�d���������D$�|$�4$�N��������D$�|$�4$�8����9����D$�|$�4$�"���������D$�|$�4$����|$�$
   ������[^_]Ð��&    U��WVS�����5Q ���$    ��������Y  �  �������D$�E�$�
���$���	���t$�<$�D$����4$����������D$�E�$�����$�������t$�<$�D$�����4$����������D$�E�$����$������t$�<$�D$����4$�J����T����D$�E�$�e���$���k���t$�<$�D$�k���4$����������D$�E�$�.���$���4���t$�<$�D$�4���4$������+����D$�E�$�����$�������t$�<$�D$��
���4$�����K����D$�E�$�����$�������t$�<$�D$��
���4$�n����C����D$�E�$����$������t$�<$�D$�
���4$�7���������D$�E�$�R���$���X���t$�<$�D$�X
���4$� ����_����D$�E�$����$���!���t$�<$�D$�!
���4$�����������D$�E�$�����$�������t$�<$�D$��	���4$���������D$�E�$����$������t$�<$�D$�	���4$�[���������D$�E�$�v���$���|���t$�<$�D$�|	���4$�$���������D$�E�$�?���$���E���t$�<$�D$�E	���4$�����������D$�E�$����$������t$�<$�D$�	���4$����������D$�E�$�����$�������t$�<$�D$�����4$�����9����D$�E�$����$������t$�<$�D$����4$�H����t����D$�E�$�c���$���i���t$�<$�D$�i���4$�����O����D$�E�$�,���$���2���t$�<$�D$�2���4$�����������D$�E�$�����$�������t$�<$�D$�����4$�������[^_]Í������D$��<����D$������� �$�u���Ѝ�&    U����E�]�������L �u���t#�$�������t�$�x����w�4$�+���]��u���]Ð�t& �U�D$�D$   �4$�T$����̍v U��WVS��,�u�����L �E�    �F�@�$����ǋ�$����D�$�h�����E���   ��D$�F�@�D$�������D$�E��$�����E��$�����ǉE����������E���   �v �E�� ��t?�E��D$�4$������t��D$�E��D$   �D$�E�$����E�� ��učv ��}���t����t& ���E��$������E����u�<$������E��$�������,[^_]Í������D$�������D$�D$   �E�$�����,[^_]Í������D$�������D$�D$    �E�$�d��렍�    U1�����$����ÐJ �t$�u�    ���� r�������������Ft�F    1��F   �Ћ$�t$��]Í�    U����]������2J �u��$    �������t�$�{����]����    H����u���]Ð�������D$��<����D$������� �$������]��u���]Ð��&    U��WVS���u�}�#���ìI 9��H  �F���;  �F���H  �F���u  ���   ����  �V ���,  �F$���9  �F(����  �E����   �~,��  �~4��t& ��  �G0	F0�F8����   �Vt���F  �F\����  �Fh���   ���   ���z  ���   ���  ���   ����  ���   ����  ���   ����  ���   ���|  ���   ���N  ���   ���   ���   ����  ���   ����  ���   ��u���   ���   ��1�[^_]Ít& �G,�F,�G4�F4�G0�F0�F8�������F@�������FH��������NP��������G8�F8�G<�G8    �F<�GX�G<    �FX�G@�GX    �F@�GD�G@    �FD�GH�GD    �FH�GL�GH    �FL�GP�GL    �FP�GT�GP    �FT�GT    �w������   ���   ������&    �G,�~4�F,�>����G4�F4�3�����t& �G�F�F���������&    �G�F������t& �G\�F\�Gd�G\    �Fd�G`�Gd    �F`�Fh�G`    ��������    �Gh�Fh�Gl�Gh    �Fl�Gp�Gl    �Fp�Gp    ������t& �Gt�Ft�Gx�Gt    �Fx�G|�Gx    �F|�G|    �����t& ���   ���   ���   Ǉ�       ���   ��������   �$������   �m�����&    �G(�$����F(�������t& �G �$����F �������t& �G$�$�q���F$������t& �G�$�Y���F�x�����t& ���   �$�>�����   �	�����&    ���   �$������   �������&    ���   ���   ���   ���   ���   ���   ���   ���   ���   �$�����������t& ���   �$������   �������&    ���   �$������   ������&    ���   �$�v�����   �k�����&    ���   �$�V�����   �=�����&    ���   �$�6�����   ������������������U1���5   WVS���u����èD ��󫍆�   �    �F    �F    �F    �F    �F    �F    �F    �F$    �F     �F(    �F,   �F0    �F4   �F8    �Ft    �F<    �FX    �FP    �FH    �FT    �FL    �F`    �Fd    �Fp    �Fl    �FD    �F@    �Fx    �F|    ǆ�       ǆ�       ǆ�       ǆ�       ǆ�       ǆ�       ǆ�       ǆ�       �$����1�ǆ�       ǆ�       ǆ�       ǆ�       ��[^_]Í�    ��'    U����]������"C �u��$�   ��������t�$�������]��u���]Í�����D$��<����D$������� �$�����΍�    ��'    U���8�]�E�&���ïB �u��}��$��������t���]�u��}���]Í�    �U�$�Q���U���   ������D$�ǋE�$��������u��<$�����<$����U�D$    �D$    �$�E��E��D$������<$������y�����&    ��'    U��VS���u�g�����A ��$�����F�    �F    �$�����F�F    �F    �F    �F    �F    �$�v����F$�F    �$�d����F �F$    �$�R����F(�F     �$�@����F8�F(    �F,   �F0    �F4   �$�����Ft�F8    �$�����F@�Ft    �F<    �FD    �$��������   �F@    �Fx    �$��������   ǆ�       �$�������   ǆ�       �$�������   ǆ�       �$�������   ǆ�       �$�k������   ǆ�       �$�S������   ǆ�       �$�;������   ǆ�       �$�#������   ǆ�       �$�����ǆ�      �4$�I���ǆ�       ��[^]Ð�����������U��V�E�u�Px�H|��~1�91u�$�t& 94���t& t��9�1�^]f�Í�&    �   ^]Ð��&    U��WV���E�Pp�U��Pl��~9�E1��p|��E�E���9M�t(1��	�t& 9�t��9�    ��9��1���v �   ��^_]Í�    ��    U��WV���E�P`�@d���E�~J���U��E�    �E�0�H��~!��U9Pt-1������}9xt��9��E��E�E�9E��1��f��   ��^_]Í�    ��    U��WV���E�U�x`�@d�r|�Jx���E�~i���}��E�    �E�U� �R���E�U�~71��U��ɋ��P~ 9t:1����    9���t& t&��9����9}�˃E��E�E�9E��1��f��   ��^_]Ít& U��WVS���E�����> �E�    �P<�U�PD�@XU�E�E����   �U��E�    �B��~s�t& �B�U����p�F��tq�8 �   �   �   t��������u��   �<�    �U��L$�F�$�f����U�E��F�8    �E�9B��E��E�9E�~%�E��g����D$   �$   �����F�s�����[^_]Ð��&    U����u��u�]��U� ����	= �FD9�<�NL)�9�|#�FT)�9�|:)�;V<}C�F8�]��u�����]Ív �FH���]��u���]ËF@�]��u�����]ËFP�]��u�����]Ë�T$�D$������D$������� �$�X���1�뮐��&    U��WVS���}�������_< ��tk�GX��td�D$��(����D$������� �$�����GX�P��~1��t& �@�����$������GX9p�@�$������GX�$������GX    ��[^_]�f�U��WVS��L  �u�������=������; ��������ǅ����    ��t& <|��������������u苅�����������    ���������B���$��������������U  ����������������<���ǅ����    �A��������?����������������������������t& �������������$   �4���������  �������������     �@    �@    ���7������  ������������������������)�t& ���(t2��*t-��|�t'������7�����t���Ћ������ �DP tǉ������ �������$�������������>  �y����0������������������DF ��   ��u�.��    ���������DA ��   ���������������u؋������������<��������t$�������$�=����G�4$�������������t1�����������DA u
��)t��|uT���������������u؃�����������9�����|�������H�����(��   �������������<��b����v ��*u��������������    릍�-����D$��<����D$������� �$�����������    ��L  [^_]Á�L  1�[^_]Í������������щ������]����������   ���������������   �������������������������<��   ������������DF t'��&    ����������������������DA u����   �������  �������$�m����������������G�<��O���+������������f��������   �������u`�������������������������<��   ��@�����)�������r����������������������[�����)u��Q����������   �������u*�������������������������<��   �������������   �������u*�������������������������<��   ������������<=t<<th<>t:�������������<��c������������������������<��   ��=����������������������������<��   ������������������������������<��   ������f�U��WVS���U�������O6 �B<BDBLBTu1���[^_]Ð�@���$�����ƋE���pX��   �@D1���~+��U�B@�U�����$�������E�    ��9xD֋U�BL��~.1�f��U�BH�U�����$��������E�   ��9xL֋U�BT��~.1�f��U�BP�U�����$�������E�   ��9xT֋U�z<���%���1���    �U�B8�U�����$�����\����E9x<�������� ����D$��<����D$������� �$����������������U��WVS���U�f������4 �Bd��u
1���[^_]Í@���$�V����ǋE���x`t:�@d1���~Ӑ�t& �U�   �B\�U�����$���������E9pd�뢍�G����D$��<����D$������� �$�<���������v�����    U��WVS���U������?4 �Bl��u
1���[^_]����$�����U���Bp��   �Bl1����ҍt& �E��9xl~ËU�Bh���D$�E�$�Y����U�ƋBp�4��F��t+�t$�E�$�������t��U�T$�F�$�R���뤍t& �'������F��    uÃ������[^_]Í�9����D$��<����D$������� �$�9���������#����v U��WVS���E������?3 �D$�@�$������M�Ax��u1���[^_]Í�    ��   �$�����U���B|t]�M��E�Px��~�1��   ��U�M�Bt�����$�D$�A����M�Q|�:�U���T$�@�$�S����M9qx��z�����V����D$��<����D$������� �$�R���������N�����    ��    U��WVS��<�E�������O2 �xX�HD�P<����   �
�ɉM���   ��t�����i����E荃m����U䍓[����E��������E�    �U܉E؍�    ��O��t
�U��DU��T$�U�L$�T$��������$�����O��~A1��t& �G������D$�B�D$�B������� �D$�E؉D$��$�V���9wŃE��E�9E�~9���U��n���������� �D$   �D$   �D$��B����$������t& ��<[^_]Ð��&    U����}��}�]�u�������	1 ���u�   �]�u��}���]Ív �����ƋG�4$�D$������E�t$�$�����4$�E��������t9��t$�U���t���f�t>�u���������!���두�M�����Ӎ�&    �u����v y�    �f����v �}����v �U���f�밍�&    ��'    U��WVS���U������/0 �B�@�H� �ɉM��E��|   �E�    �U�M���@���E�tV�@���E�~L1����t0��9u쐍t& ~6�U���<��|$�M�$�{�����t؋G4��u˃��   [^_]Í�    �E��E�9E����1�[^_]Ív ��'    U��WVS���U�������o/ �B�@�H� �ɉM�E�~h�E�    �U��M���x��tE�G���E�~;1����&    ��9u�~(����D$�U�$�������t����   [^_]Ív �E��M�9M����1�[^_]�f�U��S���E�H������. �D$�E�$�x�����������[]Í�&    ��'    U��S���M�����Ñ. �Q4��t1���t��[]Í�    �L$�E�$������������[]Ív U��WVS��,�E������?. �Pl�� �U�tv~t�@p1��E�E� �E��
f���9u�~X�U���8�|$�E��$������u݉|$�U���H����D$�D$   �$    �T$������,�   [^_]Í�&    ��,1�[^_]Í�&    ��'    U��WVS��L�E�����Ï- ���   ����  �H`�E�    �ɉM���  ������EȋE�@d���R  ��������d����E�    �U��M��M��t& �EЋUЋ@�EԋB���|  �E�    f��M��Eԋ��ɉM���  �A����  �@���E��3  � �E�B���!  �������E�    �M����&    �M̃E��U�9Q��   �E�U�4����  �~4t�~,uЉt$�M؉$�5�����t��E�4$�D$�2�����u��MȋUȋA����U�~{1���t& �Eȃ�;x}e�E���E��M����$�T$������uՋE��4$�D$�������uM�V���@�$�D$�~������2����Eȃ�;x|���&    �Mȉ$�t$�����M̃E��U�9Q������    �UЃE��E�9B������M�E��E�9Ad��   �E��Q�����M��L$�EĉD$�U���$�A��������D$K  �E��D$�������D$�U���$�����M؋A�>����D$I  �E��������D$�������D$��$������M������UȋB��u�$�����E�    �Eȃ�L[^_]Ë �D$��l����D$������� �$�����E�    �Eȃ�L[^_]Ð��&    U��WVS��   �U�����Ì* ���   ���~  �H���c  �U�M�@   �E�R<�ID�@LʋMITʃ� �U��2  �E�    �E�    ��  ��������������������p�����l�����h����M�U��IX�R��ȉE��@�U��E�����4  �R����  ��`����������������E�    �E��U��M��E܋U��M��<��D$   �L$�|$�G�D$�E�$�}�������t�@4����  ����  �U��E�M��D$    �T$�$�D$�   �L$�D$   ������U��E��B;E��s����� ������M���|����������E�    ��x�����t���K�  �1���t����M�E��|$�T$�$�D$�   �D$�D$   �z����M��E��U�9Q��  �M��E��U��4��D$   �M�T$�t$�F�$�D$�y�������t��D$�4$�'������s����M��������  �E��U�|$�D$�   �D$�������D$�D$   �$������M��9�  9}�E�    �w  �M�U�A����U�~m1���E��;p}^�Eԋ��E؋M؋��$�T$�U�����uՋE؉<$�D$�r�����uMԋW���@�$�D$�&������  �E��;p|��U�|$�$�T����E��M�D$�E�|$�L$�$������U��҉U���   �E����  1�1��M�1��9��t�M�������u�<��   �D$�E��$��������E��8  9�~"�E�1ҍ���)��ƋE��������9�u���U���    �A�t$�<$�������V����M��E��U�t$�D$�   �L$�D$�D$   �$�K����E��M�9M��{����E�U��M��A�Ĭ   [^_]ËG,����������U��x����D$��L$�D$   �D$�E�$������M��E��U�9Q�m���������}  �E��U�D$�$�����u������3  �   �   �M��D$�$�������E��v  �<$�����M���    �D�������t& �M��A�������������E�    �E��U��U��� ����E���P����M���|����M����@�@�P� �҉U��E��  �E�    ��    �MċU����@���E���   �P����   �E�    ���t& �E�9U���   �Mȋ�M����x,�E�tߋ��   �@��uҋU�E�z� ���E���   1���U��;r��   �MЋŰ<����$�T$�,�����uԋM̉|$�$�I�����u��E̋MЋP���@�$�D$�������u��EȋP�E�9U��T�����&    �E��E�9E�� ����M��E��U�9Q����������E�    �����M�Ủ$�T$�ƋE��t$�D$�����}�����t<�Ű�|�����L$�D$   �D$�E�$�����E��$�����MȋQ������~&�>1ҋ�x,t�`��    ���x,uQ��9�f��4$�R����ŰM���L$�D$   �D$�E�$�����ŰM�T$�$�-����EȋP������ �M̋U�D$��$�D$   �D$�E��D$������4$������MȋQ������E�     1�������D$Q   �D$�������D$�������D$������� �$�����M1��    �G����M��	�������1��U�������u�p��   �����U��M�B�U� �@� �D$��D$   �$�D$��p����D$�����������l����������D$��<����D$��$�	��������M�1����������U�������u���������M�D$��D$   �D$�������D$�E�$�����E����U��������h����������D$��<����D$��$���������U��S���E�����Ñ! �D$    �D$    �D$�E�D$B  ���   �$�������1�[]Í�    U��S������G! ���E�D$    �D$p  �D$������� �D$�E���   �$������1�[]�f�U��WVS�l������  ��,�u�4$��ɩ���D$�������E�th�W����U�E����   ����   �p��t$��ɿ��f��F�|$�D$�M�$�n����6��u�}�1��<$�;����E�$�0�����,��[^_]�f��� ����D$�������D$�������t$�   � �$������,��[^_]Ëu��$�t$�����������   �M��������������$�M����u��}�v �E��$��������Y�����E��.��   ��/t�M��$/   �L$�j����u��4$����������   �}���)�t9����   �G���P�v%����   ���Wv��f�uv�W�F)t& ��ud�E��D$   �D$   �D$�U�$������E��$�������B�����&    �����E�$��t& ������U��$���������v �M�L$�u�4$������������P�U��P�������u�   �}������(����S����v U��S��$�E�����á �D$�E�D$�������D$�E��$�G����E��D$    �D$�  �D$������� �D$�E���   �$������E��$������$1�[]Ít& U��S������' ���������D$�E�D$�E�$�������[]Í�    ��    U��VS�]������ �� �D$    �D$�   �������D$������� �D$�E���   �$�B����Ƹ   ��t�E�4$�D$�x����4$�`���1��� [^]Ð����������U��WV���M��t\�U��tU�E�@��~K�U1��E�    �t& ��r�v ���t�E�D$�F�$�D$�U�v��uߋU���E��E�9BŃ�^_]Í�&    ��'    U��WVS���E�V������ �U�@�E��$������ƅ�t�}��1ҍv �����1�9�w���1��u��E�R�<�    x���tP�U���$�T$������u�E�G��1�[^_]Í�    �ƋF��u��$   ��������ǉFt+�@    �U�E�B�$�����U�W�1���[^_]Í������D$��D����D$������� �$�����������͍�    ��    U��WVS���E�F������ �}�@�E��<$������ƅ�t��1ҍ�    �����1�9�w���1��u��E�R����pt����t�D$�<$�������t�v��u��1�[^_]Ð�F��[^_]Í�    ��'    U����u��u�]�������, �F�$������F    �F    �]��u���]Ív U���(�}��}�]�u��`������ �G��t1��]�u��}���]Ð�t& �E�� 	  �G    �G    �G    ����tZ��;E|���tL�F��G�D$   �$�Z������Gu��������D$�������D$������� �$�/����   �o�����E�D$�������D$��x����D$������� �$�����뇐����������U��S���E�x����� �D$�E�   �$�S�����[]ÐU��S���E�H������ �D$�E�$�(�����[]Í�    U��S���E�����á �D$�E�$����1҅�t����[]Í�    �P��[]��Í�    ��'    U���(�]�E�������O �}��}�u�1��   �E��|$�$�����<$�E��;����|�/t|�U�rp��t&�4$�"����<$�t$�E�D$�o����M���D��E�U��|$�D$�$�^�������u0�E��t)�M�|$���   �$�����E�U�H0�   �J0�   ���]�u��}���]Í�    ��'    U���(�]�E�������o �}��}�u��$�|$���������t���]�u��}���]Í�&    �������E�t$�<$� ����U���E�T$�|$�$������u�u�뵍v �������D$�������D$������� �$����댍v ��'    U��WVS���u�6����ÿ ����   �E�t$�$�>�������   ��U�D$�$�����U�҉���   �G����   �U�t$�$�T$�U�T$�������   �ƉD$�E�|$�$���������   �U�t$�|$�$������xm�E�t$�|$�$������xV�|$�4$��������[^_]ËF4��t���c����G   �W����v �G   ��G����v �'����G�B����v ������1��D$������D$������� �$�f���뎐��&    U����]��������r �u��������������t$�$�����E�D$��@����D$�E�$�1����������t$�$�����]��u���]É���'    U����]��y����� �u��u�t$��@����D$�E�$������������D$�D$   �F�D$��$�����]��u���]�U����]������â �u��u�t$�������D$�E�$�y����������D$�D$   �F�D$��$�����]��u���]�U��S���E������A ��E� ��   ��u	��[]Ív �	�������t�L$�$������[]Ív U��S���E�h������ ��E�$�D$�f�����������[]Í�    ��    U��WVS���E�&����ï �x��tJ�O��~C1����&    ����t& t��9ΐ}&����B4��u�E���T$�$�;����O9�|ڃ�[^_]�U��WVS���E������? �x��t&�O��~1��������D$�E�$�����9w��[^_]Ít& U����E�]��f������ �u��D$�E�$�S�����1���t�F��t
�]��u���]ËV��t��D$    �$�3�����t�@�֋F�v �΍�    U����E�]�������� �u��D$�E�}��$�������u1��]�u��}���]Ð�x��~�0��P4��t�1Ƀ�t؍�    ��9�}ɋ��P4��t���u�븍�    U����E�]��v������ �u��D$�E�}��$�`�����u1��]�u��}���]Ð�x��~�01���v ��t��9�~ԋ��P4��u�U9Pu�����������������U��WVS���E������� �D$�E�$��������E�u��1�[^_]Ð�@1����M��t& �4$�������U��B9�~3�U�����$�����ƋE�4$�D$������uƉ4$������U��B9�t��U������[^_]Í�    ��    U���   �]��F������ �}��u��*����E��B������;������E�t��t�E��u��t& 1����]�u��}���]ËU�B��t�@��tދ�M�D$   �D$������D$�$�����U�B�H� ���M��E���  �E���~T�������E�    �U��M��E��U��4��M��T$�$�D$   �D$�����E��t$�$�����E��U�9U���M��I�ɉM���  �������E���������h�����4����E�    ��|�����x�����t����UԋM��T$�$�����Ƌ@����   �P����   � ��� �E�~)� ��t����D$��L$�D$   �D$�E�$������E���tN��U���x����D$��L$�D$   �D$�E�$�����;u�t�U��M��T$�$�<�������   �u��F���E��e  �@�E�    ����   ��t& �U��M���U�4��F�D$���   �D$�F�D$��D$   �$�D$��|����D$�6������   ��~!���   �<$�D$�
����M��t$�$�+����U��E��E�9B��E��M�9M�������E��x~�������U��D$�$������~�������M��D$�$�����E��H���Q  ������1��E�    �U����t& �U��E��B;E�~a�M��U؋�M���L$�Eĉ$�U��tҋUċM��B�D$��L$�D$   �D$�E�$�4����Uă��   t��똋M��֋A���7  ������U��E�    �E�    �E�    �M��V��tj�E��@0t9�U���tb�UȋM���U�D$��D$    �$�D$�E��D$�����MȉM��U��E��E�9B~&��M܋��Eȋ��   �@��u��MȉM�뎉E��ˋMȅ��U����M��M�M��U�ɉM���  �G�Ẽ}���   �U���   ��   �M��U�A�M�D$��D$   �$�D$�������D$�������D$������U���	����E��E�    �B���G  �U��M����B�D$�B�D$��U�D$   �D$�E��$�D$�����E��E��M�9H��W�ŰM��$�����<$������E��$�����������E�����   �U��M��D$   �$�D$������D$�6����u��������U��M�D$   �D$�T$�$���������L$��D$   �D$�������D$�E�$���������������E�    �E�    �E�    �E�    �E�    �E�    ���S����E���tw�W�U��G����O�M�������E���tx�U��M��D$   �$�D$�������D$�\����u������E�    1��E�    �E�    �E�    �E�    �E�    �O�M̃�~�E��tA�E�    �����}�f���   �E̋U�D$   �D$��,����D$�$����������E̋U�M�D$��D$    �$�D$��x����D$�����G��~D������E�    �E���U��M���� �L$�D$    �D$�E�$�i����E��U�9W̋M�������D$�D$    �$�@���������}���������M��A�D$�A�D$��D$   �D$��X����D$�E�$������u��������&    U���(�]��E������
 �u��u�D$���   �$�}�����1���t$�D$    ��T$�4$�D$�� ����D$�Ѻ���]��u���]Ít& ��'    U��WVS���E�&����ï	 �p� �D$��ɿ���D$������� �$�b�����t*���t$��0�����    � �<$�D$�����F����u�M�A�8��tB���t<�H��~5��H���1��E��f��M�A9p~����U��D$�$�m�������uڋU��D$�E�$��������t5�P<��~.��[���1��M썶    �G8�����D$�E�$����9w<��[^_]Ív U��WVS��l�E�����ß �   �E̋E�$肸�����EЉE���   �U���������|����������UĉM��u��}��E��0��th腶�����E���   �U�T$�M�L$�uĉ$�t$�������uu�}��G����   �U�T$�M�L$�u��t$�}̉<$�;����E��0��u��EЋ�E���tf����E��$覼���E����u�UЉ$蒼����l1�[^_]Ít& �E��$�y����A�����l�����[^_]Ív �<$�l����U��U��EԋE�@(���E���   �E�    �U��>f��u��   �}����u��&    �E܋U��E��U��M؋	�ɉM�th�u��}��u܉}��M؋q�D$    �D$    �F�$觻���}�9��E�~��6�u��>au��~lu��~lu��~ ��&    t���    �k����v �E��$f������U��B�D$�MԉL$��D$�u��D$    �t$�}�<$�>����Eԉ$�S����c���f�U��S�������g ���E�$蟻����[]Í�    ��'    U��S���E������1 �D$�E�D$�E�$�Q�����[]Ð��������������U����]��i������ �u��u�4$������t$�D$�E�$�G����]��u���������]É���'    U��WVS���E�����ß � ���E���   �E����   �u�������	   �����   蟻������&    �E�M�	�ɈM�t�E��DB u�u������D$�D$#   �4$�����}�? u
�.��t& �}�E���M�D$   �D$�$�����u�~ u�1���[^_]Ð�t& �E	�E� ���E��[���녍������D$�������D$������� �$�y��������뱍������D$�������D$������� �$�N��������농t& ��'    U��WVS��,�E�������O � ���E�u7�������D$��4����D$������� �$������   ��,[^_]Í�    �u�������   ���t|�+������v �E�M�	�ɈM�t�E��DB u�u�D$:   �u����4$�P�������tN�E��D$
   �D$�<$裻��;u��~   �������D$��X����J�����E�E� ���E��o���땐�u�F    ���������G�G�E��$�Y������$达�����Gt9�U��$�T$�(���1��������t& �~ �VuC�������D$������������������D$�������D$������� �$誽���   �����M�U��A���`����t& U�
   ��WVS�����à ��\  �u�U������������
8�EU�U�: �v  �E�������������������������   ��������D�����������������������������t$�u�D$�L$�4$�[������  �������������������L$�t$�$� ����M�9����t,��������&    �E�M�9����t�����DB u䋕���������������!��က��t�ȋu������  DȍBD� Ƀ�+�������>����t"虷��������>����t�����DB u苕���������������!��က��t��������  DȍBD� Ƀ�+�������U�: �������\  [^_]Ív ��'    U��WVS��  �u�C������  ��t1�>����t(����������t& t�>����t�����DB t�4$�������  ����&    ��   �> ��&    ��   ������1�ǅ����    ǅ����    �������������������<$���D$�������Y������������DA u���,t
�ҋ�����uI�������v �  �������$�+������������t\�>,�FEƅ�t7�������8 t+���r���f���������,t���u��ǅ����    1��������E���  ��[^_]�1���  ��[^_]ËE1��     �׍v ��'    U��S������G�  ���E�$�O����U�T�$�p�����[]Í�&    ��'    U��WVS���E�v�������  �0���ty������������U��	�����t_�D$�<$�G�����t��D$�E��$�´���8yu(�xeu"�xs��&    u�x f�u�Uǂ�      ���$�Z������u��E�0��1�[^_]É���'    U����   �]�4����������I�  ��0����D$��t�����,����D$�u��u�������D$�E�}��}�t$�$�P����4$踻���G,��,����$������G0��0����$������G4�]�u��}���]Ív ��'    U��WVS��l�u�E�#����ì�  �F�E�F�E�8�����  �Vx�U��V<�UȍVD�U̍VL�UЍVT�UԍVd�U؍Vl�U܍�(����U���1����U���?����U���I����U���R����E�    �E�    �E�   �U����D$�������$����������tH�D$�E��$�n�����u΋�D$�U��$�Y�����tI����D$������$�β���F���u��U�}��:��  �1����t  ��l[^_]Í�    ��D$�E��$�������t#��D$�������$�s������   �R����t& ��D$�U��$�ð����t#��D$��_����$�;����F ������&    ��D$�E��$苰����t#��D$�������$�������   ������t& ��D$��Z����$�P�����t ��D$��b����$�ȱ�����   �������D$��{����$������t��D$�������$萱�����   �o�����D$��i����$������uD��D$��q����$�ɯ����ts��D$�������$�A������   � �����l�   [^_]Ë�D$��t����$�������   ������U�Fx�E��:�E��D$�������$誹���Ft�,�����D$�������$�>�����u7��D$�������$�&�����tV��D$������$螰�����   �}�����D$�������$�����D$    �D$    �$�g������   �F�����D$������$踮����tI��D$�������$�0����8yu#�xeu�xs��t& u�x f�u
ǆ�      �$�Ю���������D$�������$�W�����t��4$�D$赸��������D$�������$�,�����t��4$�D$蚬��������������D$�Uĉ$�������t��D$�Eĉ$�y����F$�[�����D$��9����$�ͭ����t��4$�D$�;����E�   �)������O����D$�U��$蘭����t'��D$�E��$�����E�    �E�   �F(�������D$��+����$�Y�����tZ��$������#�$�P����E��D$��$�_�����������U��T$�E��$�e����U��Ft�$�g����E�    �u�����D$�������$������t�EȉD$��$�"����F8�D�����D$�������$趬����t�ỦT$��$�����F@������D$��T����$腬����t�EЉD$��$������FH�������D$�������$�T�����t�UԉT$��$菶���FP������D$��C����$�#�����t�E؉D$��$�^����F\������D$��K����$������t�U܉T$��$�-����Fh�O�����$�۪����u4��E��8 �3����E��u'�M���!����E��4$�D$�����������V����V(�$������E��E��$�����U��D�D$�F(�$�˧���E��F(�$������U�f�
 ��D$�F(�$賴��������U��V�E�u�H��~!�1�92u�%��t& 94���t& t��9Ȑ|�1�^]f�Í�&    �   ^]Ð��&    U��EV�p��~�1ҍ�    �����`0�9��1�^]Ð�t& U1���U�M9J~���]É���'    U��V�E�u�H��~!�1�92u�%��t& 94���t& t��9Ȑ|�1�^]f�Í�&    �   ^]Ð��&    U��S���U�E�D$   �����æ�  �D$�B�D$��$������[]Ð�t& U��S���U�E�D$   �ݸ����f�  �D$�B�D$��$觤����[]Ð�t& U��WV1�S���E褸����-�  �x��~H�M1���	�U�M����&    ��9�})�U��� �D$�M��$�v�����uރ�[^_]Í�    9���    u��   �D$�U��$袥���M�Q��M���E���P��[^_]Í�&    U����u��u�]�������|�  ��$�H����4$�@����]��u���]Ív ��'    U����u��u�]�賷����<�  ��$�����4$� ����]��u���]Ív ��'    U����]��y������  �u��$   �y�������t�     �@    ���]��u���]Í������D$��<����D$������� �$膮���ΐ��&    U����]��	����Ò�  �u��$   �	�������t�     �@    ���]��u���]Í�����D$��<����D$������� �$�����ΐ��&    U��W1�VS���E蔶�����  �E�    ��@�U���E�~4��E�U�4��D$    ��$�D$�M�����u�N0@�E���9}�͋E��[^_]�f�U��WVS���E�&����ï�  �@���E���   �U1���U����&    ��;u�}S�E���    �U�M�<���D$��$������uыM�|$�$������tV�U���E�R� �U�;u�E�|��M��   �D$�E��$� ����U�M��R���E���P��[^_]Ð�t& �M�U�	��M��M� �D$�A�$�Z�����t͋E�@�E��4����U��U��f�U��WVS��<�U�����ß�  �R������҉E���  �����1��������M�E�M���t& �U��9z��  �M��    �U�����B�D$$�B�D$ ��D$�U�B�D$�B�D$��D$�M�L$�E��D$   �D$�U�$跱���M��4��E���$�D$�l������p����t$�U�$腣�����Y����M�U�q��M���@�4$�D$�-������1����t$�U�B�D$��D$�M䍃<����D$�D$   �L$�E�$�����U�B�D$�B�D$��D$�M䍃|����D$�D$   �L$�E�$�����E����   �������D$�D$   �M�$躰���U�M����$臥���U�M����$贤���U�M���U���E��<[^_]Ít& �U�B�D$�B�D$��D$�M썃�����D$�D$   �L$�E�$�9����U�B��   �D$��$�N����M�Q��M���E�@�E��<[^_]Í������D$�D$   �M�$�����E�D$�U�T$�M�U����$耰���M�$蕤���E�$�ʣ���U�M�������U��WVS�L�������  ��<�$!   �|$#����E������E��  �������D$�E�$�Ŧ�������/  �|$�$诡����tW�$�c����D$�E�D$�������D$��L����D$������� �$�$����D$   �$   �����e�[^_]Ít& �4$�ܤ����U����������������������B�G�����������B�G���������B�G�����������B�G���������B�G�����������B�G���������B�G�����������B�G���������B	�G�����������B
�G���������B�G�����������B�G���������B�G�����������B�G���������B�G�����������B�G���������B�G	�����������B�G	���������B�G
�����������B�G
���������B�G�����������B�G���������B�G�����������B�G���������B�G�����������B�G���������B�G�����������B�G���������B�G�����������B�G�B  ���������B�e��[^_]�f��������D$��<����D$������� �$�X����D$   �$   �D����e�[^_]��w���� �$�=����D$�U�������D$��,����T$������U��S���E蘮����!�  �D$   �D$�E�$�@�����[]Í�&    ��'    U���(�]�E�V�������  �}��}�u��D$	   �$�|$��������t/�E�|$�D$�������D$��t����D$������� �$�c������]�u��}���]Ð��&    U���(�]�E�֭����_�  �}��}�u��$�|$�М������u���]�u��}���]Í�&    �?���� ��tD�$� ����|$�D$�E�D$�������D$�������D$������� �$轤��롍�&    �E�|$�$赥���ƋE�$�����y�����&    U�   ��WVS��������  �����Ô�  ������������1��1�ǅ����    f��E�D$   �D$�������$�ϛ����t~�����������������! ��t������  DЍFD� ҃�+�������tO������������<$�D$��������tQ�������<$�D$�ۦ����5����
�a�����  ��[^_]Ít& �F�������������$腪�����Ɛ�t& �������D$��<����D$������� �$�X�����  ��[^_]���������������U��S�Ϋ����W�  ��t�E��D$�E�$   �D$蠘��1҅�u�E�1�% �  = @  ��t��[]Ít& U��S�~������  ��t�E��D$�E�$   �D$�P���������t��[]Ð�����U���(  �]��6����ÿ�  �}��u����������t7�E�D$�E�������D$   �4$�D$�/����E�t$�D$�E�$��]�u��}���]Ð��U��WVS��   ��\����E轪����F�  ��X����p���x  ��X���@wC��X�����t.�E��X�����\������T$�L$�$趞����X����E�P�ļ   [^_]Ë�\�����X��������щM��M�E��E�I� �M��M��|����E�I�@�M��M�E���A9A�?  �E�9�\�����  ������M���P�����T�����t& �U�1���E��B�E��B�E��B�E��B�EċB�EȋB�E̋B�EЋB �EԋB$�E؋B(�E܋B,�E��B0�E�B4�E�B8�E�B<��@�E��U��M��E��}���|����M���P����E��M����n�t& ��   ����   ����    u�E���	�3E��f���@�����T������E��������������@�:to�M��}��ǋE��U��M�����   EE��E��������x����E�1�#E�3E��두�E�3E�1��넍t& ���x����E�3E�!�3E���f�����    E��U��M��E��|���}�M�9E�������U�E���|����B�E��
�M��B��X����J��X���?����\���������   )�9�FU��h�����h����D2��\����L$�$�T$�>�����h����M�A��@��d���w ��h����\���)�X����#����A��������E�����`�����x���щ�t����M� �I��l����E�M��M�@�I�E��ЉM��MA9Av�A��t���9�`�����  ������M���P�����T�����x���1���E��B�E��B�E��B�E��B�EċB�EȋB�E̋B�EЋB �EԋB$�E؋B(�E܋B,�E��B0�E�B4�E�B8�E�B<��@�E���x����M��E��}���l����M���P����E���p������p��   ����   ����    u�E���	�3E��f���@�����T������p����������������@�:tv�M��}��ǋ�p����U��M�����   E�p�����p����������l����E�1�#E�3E��념�t& �E�3E�1���q�������h����E�3E�!�3E���V���E��U��M���x����l���}�M�9�t����r����U��l����E���d�����d�����
�M��B�E���?�J��d����B�t$�D
�D$��`����$讙���U�r�~�����&    U��WVS�L�������  ��,  �U������������$�Eǅ���#Egǅ�������ǅ ����ܺ�ǅ$���vT2ǅ,���    ǅ(���    ǅ0���    �	�����0������(���s��,�����7�  �8   )���������(����|$�D$    �D2�$�ʓ����(�����4���Ƅ54�����������7����4�����(�����,�������	�������8����������������������D������������������� �����$����������� ����������������(���9���(���v��,���������9�������  ������U�������������������1���E��A�E��A�E��A�E��A�EċA�EȋA�E̋A�EЋA �EԋA$�E؋A(�E܋A,�E��A0�E�A4�E�A8�E�A<��@�E������������������������� ����������������������������   ���   ����   ����    u�������	�3����t& ��@�����������������������������@�:��   �����������ǋ�������������������   E������������������T��������1�#����3������i���������3����1���S����v ���H��������3����!�3������-�����t& � ��������������������������������9����������U�������� ����
������B������J�B��,  ��[^_]ÿx   )�������v U��WVS茡�����  ��������  ǅ���#Egǅ�������ǅ ����ܺ�ǅ$���vT2ǅ,���    �����ǅ(���    ǅ0���    ��x�����d���1��   ���M)��D$��x����D$   �L$��$詝��Ɓ��  ��  ����  �������x����������������(����������� �����������$���   ������=�  �������U���������(�����p�����l���w��,����E���������p�����l���f�������1���E��A�E��A�E��A�E��A�EċA�EȋA�E̋A�EЋA �EԋA$�E؋A(�E܋A,�E��A0�E�A4�E�A8�E�A<��@�E���������������������d�����������������������������|������   ���   ����   ����    u��������	�3�����t& ��@�����p������|����������������@�:��   �������������ǋ�|�������������������   E�|�����|����������T���������1�#�����3�������i����������3�����1���S����v ���H���������3�����!�3�������-�����t& �������������������l������������������9��������������������������������������������� �����$��������������E�$�����   ���:  ���������t����?  ��0������(���s��,�����7�  �8   )���t�����(����|$�D$    �D2�$������(�����4���Ƅ54�����������7����4�����(�����,�������	�������8�����t����������������D�������������������������$����������� ������������������(���9���(���v��,���������9�������  ������U���h�����p���������1���E��A�E��A�E��A�E��A�EċA�EȋA�E̋A�EЋA �EԋA$�E؋A(�E܋A,�E��A0�E�A4�E�A8�E�A<��@�E���������������������h������������������������������������   ���   ����   ����    u��������	�3�����t& ��@�����p�����񋅌����������������@�:��   �������������ǋ���������������������   E������������������T���������1�#�����3�������i���������3�����1���T������L���������3�����!�3�������1�����������������������������������������9������#����U�������������
�������B�������J�B1ҁĬ  ��[^_]ÿx   )��������x����������t����$����������U��WVS���U薚�����  ����   �E����   �$d   膒���Ƹ������tR�E�d   �0�E�E��!��t& ��4$�|$趇������tL�E�0�E��D$�E�|$�4$�D$�Q�����x�9�~��[^_]��    Í�&    �x��t& 먍�    �$    �H����E�     �������[^_]Í�    ������� �D$(   �D$   �D$�������$貐���������[^_]Ë������ �D$,   �D$   �D$�������$�{���������H��������U1���S���U�F�������  ��t�$虗����[]Í�&    U��WVS���}�����ß�  �7����t �W���������������7����u��1�[^_]Í�    U��WVS���}�Ƙ����O�  �7����t ����������������7����u��1�[^_]Í�    U����]��y������  �u��u�4$�
����T�1��:
t�]��u���]Ð� �   �]��u���]Í�    U����]��)����ò�  �}��}�u��<$跌���ƋE�$誌����1�9�|)֋U�7�$�T$������������]�u��}���]Í�    ��'    U����]�蹗����B�  �u��u�4$�J����t$�D$�E�$藓���]��u���������]Ð��������U���(�E�]��f�������  �}��D$�E�u��D$�E�$蹉������u���]�u��}���]Ë������������D$�������D$��$�p����E�D$    �D$    �<$�D$豍���E��$���������t8�U��D$�E�<$�T$�D$膍����������ɿ���t$�D$��$�����4$� ����X������������������U���(�]��y������  �u��u�4$�����������   ������������uG�]��u���]Ð�t& ���������D$��8����D$�������t$�T$� �$�m���������f��������D$��p����T$�D$������� �$�<��������늍������D$������t$�ϐ��U���8�U�]�u��}���R蛕����$�  ����   �U�D$�$�#����E�$�X����ǋE�@�<$�E��D$�q�������u'�U�$谆���<$訆�����]�u��}���]Ð�t& �U��|$�T$�U��D$   �D$������D$�������D$�E�$�9���뜍v �D$������   �D$�������D$�E�D$   �$�����w����v U��S讔����7�  ���E�$�?�����[]Í�    ��'    U��S���E�x������  �D$�E�D$�E�$�a�����[]Ð��������������U��S�>�������  ���E�$菈����[]Í�    ��'    U��S���E�����Ñ�  �D$�E�$�؁����[]Í�    U��S���E�ؓ����a�  �D$�E�D$�E�$葇����[]���������������U��S螓����'�  ���E�$������[]Í�    ��'    U��S�n�������  ���E�$������[]Ð������������U����u��u�]��3����ü�  ��$舄���F�    �$�w����F    �]��u���]Ív ��'    U����]��E������o�  �u��u�$跑����E�$誑���F1��]��u���]Ð��������������U��WVS���E薒�����  �p��u�0�6��t*�~�U��T$�$肐����u�G��[^_]Í�&    ��1�[^_]Í�    U��S�>�������  ���E�$�/�����[]Í�    ��'    U��S���E�����Ñ�  �D$�E�$計����[]Í�    U��VS�ݑ����f�  ���$   �݉������t;�E�D$�E�4$�D$豅���t$�E�$�������    E�����[^]Ív ������D$��<����D$������� �$�Ȉ������[^]Ív U��WVS���E�F�������  �x��t"f��w�4$�ы���4$艂���G    �?��u��E�$�a�����[^_]Í�    ��'    U��S������w�  ���E�$������[]Í�    ��'    U��S辐����G�  ���E�$������[]Í�    ��'    U��S���E舐�����  �D$�E�$�8�����[]Ð�����U��VS���u�W�������  ��$謁���F�    �$蛁���F�F    �$艁���F�F    �$�w����F�F    �$�e����F�F    �$�S����F�F    �$�A����F�F    ��t�$�����F    �F    ��[^]Ív ��'    U��WVS蜏����%�  ���E�}�u�$�����������E�D$�4$谈�����4  �4$������G�D$�  �G�$�������ɔ���D$�G�D$��D����D$�G�$�tz���D$�  �G�$������E�D$�E�$��������   �E�D$�������D$�G�$�+z���D$�  �G��B����$�r����������D$�G�D$�������E��D$�G�$��y���D$�  �G�$�6����t$�G�D$�E��D$�G�$�y���t$�G�D$��7����D$�G�$�y��1��G    ��[^_]Ít& ��3����D$�G�t$�$�ky������f��E�D$��y����D$�G�$�Hy�������������U��S�ލ����g�  ���E�$�ό����[]Í�    ��'    U��S���E訍����1�  �D$�E�$�H�����[]Í�    U��VS�}������  ���$    �}�������tC�E�D$�E�D$�E�4$�D$������t$�E�$諉�����    E�����[^]Ít& ��A����D$��<����D$������� �$�`�������[^]Ít& ��'    U��WVS���E�֌����_�  �x��t"f��w�4$葇���4$�~���G    �?��u��E�$������[^_]Í�    ��'    U��S�~������  ���E�$������[]Í�    ��'    U��S�N�������  ���E�$蟂����[]Í�    ��'    U��S���E�����á�  �D$�E�$�ȃ����[]Ð�����U����u��u�]�������l�  ��$�8}���F�$�-}���F��t�$�}���]��u���]Ð��&    U����u��E�u�]�萋�����  �}��}�F�E�$�[�����E�$�N������Ft�<$�?����F�]�1��u��}���]Ð�F    �琐�����U��S�.����÷�  ���E�$������[]Í�    ��'    U��S���E������Á�  �D$�E�$蘁����[]Í�    U��VS�͊����V�  �� �$   �͂������tK�E�D$�E�D$�E�D$�E�4$�D$�s����t$�E�$�������    E��� ��[^]Ð�t& ��V����D$��<����D$������� �$訁���� ��[^]Ív U��WVS���E�&����ï�  �x��t"f��w�4$�!v���4$�i{���G    �?��u��E�$�A�����[^_]Í�    ��'    U��S�Ή����W�  ���E�$�_�����[]Ð������������U��S螉����'�  ���������D$�E�D$�E�$�nw����[]Í�    ��    U��S���E�X�������  �D$�E�$�u����[]Í�    U��S�.����÷�  ���E�$������[]Í�    ��'    U��S���E������Á�  �D$�E�$�����[]Í�    U��S���E�Ȉ����Q�  �D$�E�$�(�����[]Í�    U��S螈����'�  ���E�$�߅����[]Í�    ��'    U��S�n�������  ���E�$�������[]Í�    ��'    U����]��9�������  �u��$   �9�������t�$諁�����]��u���]Ív U��S������Ç�  ���E�$�O~����[]Í�    ��'    U��S���E�ȇ����Q�  �D$�E�$�x����[]Ð�����U��U�E�    �B1�]Ív ��'    U��S�~������  ���E�D$    �$�'����[]Ð�t& U����]��I�������  �u��u�D$    �4$��~��1��F    �    �F    �]��u���]Í�    U��M�Q��t����A�t��]Ít& �A    ��]Ð�t& U��WVS���E�Ɔ����O�  �}�p��tY�F��t�U�$�T$�ׅ�tX�E�p��t8���u�0��    � ���t& t �P�Ґt�E�$�D$�ׅ�tN�����u��E�    �E���[^_]Ít& �E�x�W�U��$�8�����tى<$�|���E���[^_]Ð�t& �>��W��E�U�;xuЋU�r�ȍt& U��WVS���E�M������l�  �0�Q�F9�E�tu��u�9����t& t.�9�f�u�׋��;Qt[�4$�|���E�8�E���[^_]Ð�������D$��l����D$������� �$��|���E�    �E���[^_]Éω$�T���륉y�v 띍�&    ��'    U����]��)����ò�  �u��}��}�$   �#}������t1�E�4$�D$�|���G��0�W1���tB�]�u��}���]Ð�t& �������D$��<����D$������� �$�|���   �Ð�t& �G�G1�봍�    U����]�艄�����  �u��}��}�$   �|������t1�E�4$�D$�|���G��tK�01��w�]�u��}���]Í�&    �������D$��<����D$������� �$�x{���   ����t& �w1��7�w밍t& U��WVS���}������o�  �w��t#f��<$�Ԃ���Ɖ$�*z���4$�"u���O��u߃�[^_]Ð������U��VS蝃����&�  �� �E��$�.�������   �q~���U������   ��t3�E�$�dz���U������   �������D$�$�t���� [^]Ív �E��$�1z����ɩ���D$�E�$�\t���D$�E�$�}���$    ���Ou���U�$�4v���E�$��y����tS�$   �Y�����t& �������$�&r���U��f���f��������$�r��1��a����������$��q��1��L����$    ��������������U��VS���j������  ��t����p�$�s������u��1�[^]Ít& ��'    U��S�.����÷�  ��$�E��D$�E�D$    �$�Pw����tO�E��u8�ă���ЉE����
  �$�Is�����
  �$�;s���E���u(��$[]�f��E�������ˍ�    �������$�w����7l���t& ��'    U��S莁�����  ��������$��p���$   �����t& U��WVS��  �������D$��  �L$�������������}�1��������   �������U������������Þ�  ��������������,�����    ����D����,���u틍����9M��3  ��   �������E�����   �u��   ����   �M��   ����   �u��   ����   �M��   ����   �u��   ��uw�M��   ��uk�u��   ��u_�M��	   ��uS�uĿ
   ��uG�Mȿ   ��u;�u̿   ��u/�Mп   ��u#�uԿ   ��u�Mؿ   ��u�}���׃��������u�9�����������ǅP���   Bυ��������  �M�ǅP���   ���  �u�ǅP���   ����   �M�ǅP���   ����   �u�ǅP���   ����   �M�ǅP���   ����   �u�ǅP���
   ����   �M�ǅP���	   ����   �u�ǅP���   ��ut�M�ǅP���   ��uc�u�ǅP���   ��uR�M�ǅP���   ��uA�u�ǅP���   ��u0�M�ǅP���   ��u�u�ǅP���   ��u��������P�����P�����9�����F�������������   ��9�P���v9+D����  ���������t����&    +������  ���;�P���r拕P����L��)ȉ�������  ��ȃ��D��ǅ\���    t3��X���1�1���������&    ������L�������L����u�1�f�����������t���X����������4������X�����9�����w΋�����;�P���ǅX���    �    �;  ������������������ǅL���������0����ڍ���������8�����4�����P���+������<���������(���ǅ ���    ǅ���    ������������������ǅH���   ��������+�������������������������������ӥH�������<������U  ��������4���������������+�4������<���+�4�����������ǅ ���    �׉�$����������������v �� ����4���� ���;�������T�����  ��L������������������������   ��9�����sf��$���9�����F�������9�������sF������������������ �D�9�w�'f���(���)�+��������9�v��;�����r�ǅ���   ��ӥ����������   �$�v�������!  ���
  �z������� ����D���
  �E�J�M�8�B    ���������������<�u6ǅL���    ��������8���� ���������$��������������v ��,�����T������������X����� ����E����L������    ��������F�U�U�E��E��Q���������L����q�����t& �   �e�[^_]Ë}1��    �    �e�[^_]�������������ƅ���c(�9�0�����G����  �������   +�T�����,�������T�����;����sS��    ��@����� ����4��&    ��G����������E�U��E��U����Q)��@���;����r͋�H�����,���t��&    1�,����腅,���u���T�����L���1�,����   ����#�,���;��X�����   ��<�����T����������׉�4���������������u>�   �e�[^_]Ë�0����;EsN=   ҃��҃������f�E䉍0���������������0��t���t& �F��p�$�nj����u�   띋M�}+E��0����A�G�����f�E��v��������������������X����   ��8����T�����T�����L������������#�,���9��������������������뼃�������������(���9�P����3�������������1���P�����!������v U��WVS�,x���õ�  ��   �M�u�E��U����
  ���
  ��K �����s ������
  �ẺU��M��u�;}��  �E̋u�#E��ƉE�� ���E���   ��ctm�v �U��u��J��)ϋM���9ωM�s!��t& ���
  �$��l��������	�9}�w�űuȋU���s ���#E���B�E�����M�v�}�cu��   �Č   [^_]Í�    �u��N�m�)σ}���  �}�u$�j  ��&    ���
  �$�fl��������	E�9}�w�u��E��M��v��C ���f�uЋu�f�E���uԉ�+u�;us �v ���
  �$�l�������	E�;ur�UԋE��}�!ЍǉE�� ���E�v��c�0�����    �}ċE��O�׃��E�)���9�s"��    ���
  �$�k�������	�9u�w���}؋M���{ ���!���A�E��8���}�v�}�cu������v �E��H��)�9u��U܉u�v%f����
  �$�Fk���M��E��u���	E�9u�w��E��U�#E̋}ċu���U��U��G)���S ���#E�)Ɓ��  � �  )� �  +U�9u��u�C�;E�GE��E��E�)�;E��2  ���
  �}�}�}��}�}��}�	ww1Ґ�t& �u�����9U�u�}��u�}�u�}� �  �  �U�)U��q����u��M��}�+}���;}�u��������
  �$�Lj��������	E��������E�	��u��E���9�w�G9E��j����u�1�����    ���E��  ��&    �M�������9�r��u�}��E��U�u�+}�E�9U��u��1����M�1ҍ4�E��E���    �M�����9�u�����f����
  �M����u��D$�$�t$�[h��u��u�u�}� �  ��������
  ���
  ���
  ǃ�
   �  �E�1��U�1ҍv �}�����}�1�����3��� �  ��uދ��
  ���
  �D$ �  �D$   �D$�E��$�j��;��
  ��   ��
  ǃ�
      �E�    �F������
  �U��E��F�M������ �  �U��T������
  1�1����
  ǃ�
   �  �u��u�����u�1�����3��� �  ��uދ��
  ���
  �D$ �  �D$   �D$�E��$��i��;��
  u;��
  ǃ�
      �E�    ������E��Ủ��
  ���
  1����
  �E���������$�4`���U�E��}��U�������&    U��W��VS�Zr�����  ���	  ���
  ���
  ����(���� 
  ���
  �$�g��	��ƃ����   �����������\������
  ���
  �   ��   ��\��������
  ��)ω�8��������0�����4���wD���t& ���
  �$�g�������	�4�����v���8����   +�8�������|8��8�����8�����4�����������`���w?�ƍv ���
  �$�f�������	ǃ�v䋕`����   +�8�������D��`���������f9�4����O  ǅ<���   ���ǅ<���   t��<������	  [^_]Ã���\���w���
  �$�)f�����������\�����������d����w�  ����L���w&���
  �$��e������	�d����	   )�����t��d�����d���������h����~�������P���w&���
  �$�e������	�h����   )�����|0��h���������L���  ��H����������P����������h����w�1�����l�����t& ��w���
  �$�)e�������	�l�����l��������`�������l�����9�H������t���w������`���w�������Ǆ�t���    v荕t�����$�����$����M�}�   �E�   �� ����L$������|$�D$    �D$    �$   ��������p�����  ��<����������  f���d��������������    ��9�u�d�����t& � 	   ��9�u�U��    ��9�u�E�   �D$�E�D$�� 
  �D$��@
  �D$���E�   �E�   �E�   �E�   �E�   �E�   �E�   �E�   �E�   �$  ���������������<����4����v �   ��9�u�E�   �D$�E��D$���	  �D$���	  �D$���E�   �$    �o�����<�������  �E��H����������`����������'  ����,�����t& ��,����������  ��,�����w���
  �$��b�������	ǋ�0��������
  ����� �  ��0���u����
  ���
  ���
  ǃ�
   �  ��X���1���T���ǅ���    �v ��T������X��������1�����3������= �  uщ��
  ���
  ��T����D$ �  �D$   �D$�$�c��;��
  �\  ��
  ǃ�
      ǅ0���    �������0������
  ���
  ǅ<���    ���
  �j�����P����L�����p���ǅ���    ��D����E���C �����@�����    9�D����:  ;u�s'��&    ���
  �$�^a�������	�l���9u�w���l���#�@�����E��E��Hӭl����@)΃�w&��p�����������t�������p������{����v ����   ���6  ���v w&���
  �$��`������	�l������Ѓ�����t��l�������p�����l������D9�D����%�����$�����
���������t& ���     �����up��������ǅ���    �D8��p������������w���
  �$�1`�������	�l�����l�������p�����l������D9�D����������$�������������������&    ���8�����u�p���������T��p����0�����w���
  �$�_�������	�l�����l�������p�����l������D9�D����������$��������������t& ���     �����u�������E��Z����������l����� �����L����D$�� 
  �D$��@
  �D$��$������
  ���
  �E�	   �|$�$  ������ts��<������w���������$�X���E������ǅ<���   �R����M�U��E�L$�M�$������������E������E�����ǅ<���    ������L�����$����E�   �$    ���U�T$�U�T$���	  �T$���	  �T$��P����P�������t��tR�E��-�����<��������M�U�E��L$�M�$�J������p����E�������E������ǅ<���    �l�����5����$�W���E������떍�����$��U���������(��������w1���
  �$�t]������(�����	Ƹ   +�(�������|�������(������������&    U��WVS��g����U�  ��,�E���
  �E�D$   �$   ���
  �rT����t���A���D$�$   �WT���D$   �$   �CT����t���A���D$�$   �(T���$  �u��Ib����N���ǃ�
      ǃ�
      ���
  ���
  �$�{\���E򋃨
  �$�j\���   �E���&  ���
  �$�L\�����  ���
  �$�5\���Ƌ��
  �$�%\�����
  �$�\�����
  �$�	\�����
  �$��[�����
  �$��[�����
  �$��[�������u܃���  �E�t�t& ���
  �$�[����u��E��\  ǃ�
  ����1��$   �@^���ǉ��
  �t& �����5 �����   D���ʁ� ����Dщ����5 ����D�����ʁ� ����Dщ����5 ����D�����ʁ� ����Dщ������ ����Dȉ����5 ����D�����   �b���ǃ�
      �u�ǃ�
      ǃ�
      ���ǃ�
      ��������1  �E��t����
  ��v3��t& �H����
  ���
  �D$���
  ���$��U�����
  ��wҋ��
  ���}   ���
  1ɋ��
  ���
  �E�1��}؋}�����}�1�����3�9Ή�w⋃�
  �t$�D$   ���
  �D$�E��$�[��;��
  ��  ��
  ǃ�
      ���
  �D$   �D$   �D$�E�$�a���U��E��M���	��E���	���	��
  ��9���   �������   �$�tS�����
  �$�fU�����
  �$�XU����,��[^_]�f����
  �$�>Y����u��������Q����   �$�!S����,��[^_]Ë��
  �$�	Y���Ƌ��
  �$��X�����������1���    ���
  ���$��X��9�w��E������������U�1��E��M���	��E���	���	�;��
  �����������   �$�R��������u[������� �$�   �`R�����
  �D$   �D$   �D$�E�$�_��������D$��d���������$�R�������������륍�����$�TP����������U����]�E�b�����  �}��}�u��D$�<$� W������t���]�u��}���]Í�&    ��y����$�|$�Ra����L���     �ː��������U����u��u�]��b���Ü�  ��t��$�dS���F�$�YS���4$�QS���]��u���]Ít& ��'    U����u��u�]���a����L�  ��t��$�S���F�$�	S���4$�S���]��u���]Ít& ��'    U����]��ya�����  �}��}�u�������8�E�D$   �|$�$�0T����u�]�u��}���]Ív ��K���8u���t& ~�1��t& �E���$�vV��9���čt& U��WVS��`���Å�  ��  ����������  uA�M�������D$   �D$   �������L$�4$�j]��=   t71���  ��[^_]É�������  )ЋU   �D$�$��U��뗋������������    �<$��S�����&  �<$��S��������  ��������������������u��t+��u'�B��s��v��u�B��t��v��u�B��a��������  ������1ɍ�����f�����9�u�   ��������M���9�u��D$   �D$    �<$��P��9��D  �D$$   �$   �Y\���ǋ��
  ���  �ǃ�
      ��X����D$   �������D$    �$�yP��%�  �G��`����D$   �D$    �$�SP���G��h����D$   �D$    �$�2P���G��p����D$   �D$    �$�P���G��|����D$   �D$    �$��O���G�4$�5R��1҅���   �W��=����D$   �D$    �$�O���D$   �D$    �ƍ�E����$���O��������G�W ��������Vv5�D$�������$�H]�������������   ������������������������4$�Y�����P����D$/   ��$��Z����t�O @  �(����O �  ��    �����G���$�X���M�D$   �L$�W���
  �$�T$�EZ����������W���
  ������� �G��E�$�WL���������G���$�RX���U�D$   �T$�W���
  �$�T$��Y�����r����G���
  ������� �u�G���4$��K�����F����D$������$��[�������������O   �����O �  ��&    �����O `  �t& ������O    �t& ������������   �����������(����s������
  ��tv�ǃ�
      ������D$   �D$    �<$�qM���������������1��$�K���s����������<$�O����v;��������   ���������A�����M��� ud�������4$�=Z����i����<$�NO������&    wZ���������t'��u#���Qv��f�u���Qv�ҍv u�Q����놋������D$��M����$��U����������������  �ˍ�    ��'    U��WV1�S�:[����×  ��\�E�}��D$<   �D$   �D$�<$��W����<t��\��[^_]Ð���������<�}�`���  �U��`��  ����������E�$�*P����
��  �E��D$;   �D$�<$�T���D$$   �$   �fW���D$
   �D$    �ƍE�$�K���F�}�/��   �D$   �$   �(W����D$   �|$�$��H�������6  < �.  </�&  1ҍ�&    ���    < ��    t</�t& t�����u�F� �D$�E��$�1Q���E��D$
   �D$    �$��J���F�E��D$
   �D$    �$��J���F�E��D$
   �D$    �$�J���F��\��[^_]Ð�U���/t{�� ��   ���
  ����   �E��D$
   �D$    �$�qJ����$�FT������������U��
�6����v �m����v ������1��$�dH�������1������D$���
  �$�V���U�T$�V�D$   ���
  �$�T$�rU���������F��E�$�ZI���������D$�U�$�N���E�$�9I�����s���������1��$��G���^����U��WVS��   �u�SX����ܔ  ����  �E������ �4$��l����K���   ����  ��l���������D  �U�$�K����l����$���uK���D0�$��R���u�t$��p����$�dM����l�����p����|$�$�<R���U�J���*  �4$�&K���M�ƋA�$�K���D0�$�R���u�t$��t����$�M���}�G�D$��t����$��Q���E�7  �EtY�M�A% �  = �  ��  �E�9  �E�  ��p����4$�uH����t������#  1��Ĭ   ��[^_]Ít& �E��  ��p����E��D$�$   �t$��C������u5�E   u�U�E�;B��  �E�% �  = @  t��p����$�rK���E   ��  �u�N��% �  = `  �  �C  =    �   = @  �v ��  =   ��t& ��  ��p�����Z����$�L$�6U���u��  f��U�M��$�D$��ɿ���D$�^M���������t& �u�F�$�f@���ƋE�x�P�H�@��x�����|����$�AL����x����t$��|����|$�}�L$�t$�D$��v����D$�<$��L���Z����v ǅt���    ������4$��H��������   ��l����:�����3������3����y/���������������y ���������������A:F��������U�M�B�$�D$�oJ��������    ��t���1��<$�4F��������v �   ������    ��p����$�O���Ɖ$�B���D$   �D$�����$�LQ����t�E   u��l����$��C����t& �4$��E��������v �U��$�R���M��p����A��������$�R����t���������t& = �  ��  = �  ��   = �  ��t& ������}�W���F  ��p�����t����D$�$�P�����z  �E   �z  �M�A% �  �   ��&    �A���$�N���U�}�|$�ƋB�D$   �4$�D$�+P���M�������A� �A��Z����v �u��p����F�V �L$�|$�E��E��U�D$�$   �D������  �F% �  = �  ������E un�U��p����B�D$�B�$�D$�{K���u��p����F�<$�D$�B������f���t��L$��p����$�>������  �u�F% �  놐�t& �}�G�E�E�E�D$��p����$��F���l���f���p����u�L$�F�$��D�����1����E   �@����}1��G�D$��D$�������$�7Q��������    �u�F% �  = �  ������F�U�D$�ǋE���$�|$�D$�L���������F�������    ��l�����l����$�7E���������������p�����ɩ���D$�<$�"O�������  �}�������W�t$�T$�ЋU���D$�$�K���4$�D���G% �  �.����u�F�D$��D$������$�;P���F% �  �����E   tL�}�G% �  ������E   u�u��D$��<����$�E@���}1��G�D$�E�$�NF���������p����D$��0����$��O���U�B% �  �����E   ������U1���D$��D����$�O���q���f��U�M�B�$�D$��E���U�����&    ��'    U��WVS�<P����Ō  ��,�E�    �������     �E%   �E�E�$�U���E���   f��E ��tA�U �����   �֋U�:��v �F����tv�|$�$��M����u�}���tf��te�E�U�D$�E�T$�U�D$�E�T$�$�E>���E��U�$�U�E�$�U���E��q����E���,[^_]Í�    �}�1���u���u��U�B�D$�E�$��D��뮍t& U��WVS��\�u�&O���ï�  �E�    ��t#�$   �J���Eԉ4$�J���U��B    ��} �*  �E@��  �������$��I���E܍������D$�u�4$�ML�����E���  �D$ �  �D$    �D$    �$�"F���}ЍE��D$   �D$   �|$�������Eĉ$�K���<$��A���   ����   �u�����u  �������}��   �/�t& ��D$�E܉$�+L������   �F�D$�uЉ4$�C���}Љ<$�>������u��E�    �E��$�F���EЉ$�A���4$�A���U܉$� ?���E؃�\[^_]Ð�<$�,A������  �UĀ:!���I�������   �MĀy<���.�������   �ya����������   �yr��������&    �E��D$�UЉ$�E���M̋}��    �|$�ƋE�D$�������U�D$�������T$�D$�M�4$�L$�?G���E�������v �E�    �E؃�\[^_]Í�    ��N����<$�>@���   ���T  �u�������r  �������}��    �D$    �D$    �EЉ$�V?���E�D$�UЉ$�D��������MȉE����^�M��	�MċuĹ   �}����������EĉD$�E܉$�1J�����e  �U��B�D$�M��$�A���u��4$��E���}��<$��:�����E���   �uȉ4$�X?�����{����4$�G?��������   �}��?�}��:�����h������`����/�����P������H���� �����8������0����F:G���!�����<$��>�������  �M��:������������,  �������$��8���t& �E��   � �Eĉ�������t& �E�    �E�$�2C���E��$�'>���UЉ$�>���M܉$�1<���E؃�\[^_]�f��   �i�����    �E��D$�U��$��B���M̋}��    �|$�ƋE�D$�������U�D$�������T$�D$�M�4$�L$�D���}��E؉<$�AD���E��$�B���4$�~=���<����   �����������M�D$�������L$� �$�nA���E�    �B����y������J�����������y �����2�����������G:A�������������$��D���E�������U��WVS���   �I�����  �E�  �}�E��D$�$   �|$�a6�����  �M��0����D$�$   �L$�<6�����`  �U��E�3�T���3�P���	���  ǅ���   �M���% �  = @  ��   = �  ��  = `  �  =    �t& ��  = �  ��t& ��  =   ��t& �P  = �  ��t& �N  �}�<$�;<���ƋE�4$�D$�:;������  �4$��9���Ef��g  ǅ���    �G��    �E��D$�E�$   �D$�5����������U��y����$�T$�EG��ǅ���������������   [^_]Í�    �E��  ��������X  ��@���% �  = @  ��  �Mǅ$���    ����,����}�<$�E:������ �����  ��4�����3���ǅ���    ������������� ����$�v8�������   ������<$��:�������g  �F�ɉ�����F�P��?  ����  ������$�:�������^  ������������)��`  ���j  �U������$�D$�aA��������u�L$�4$��(����FA���}�|$�ƉD$��(����$�5����(����$�������I�����������7���4$��7��������E�;�<����S����E�}�D$������|$�$��5��ǅ��������'�����    ���������  �}�L$�D$A   �<$�G1��������  ��ɩ���D$�4$�K7�������m  �U�������D$�$�:��������  �D$�����D$�����|$�$��?���<$���������8������  �4$��8������&    ��  �E����,�����    ��,������K����E��}�E�Eȉ<$�E�E�D$�9������  �E��D$�E��D$�E�$��=������  �E��M�D$�$��4����������u�������$�t$�D���������&    �E��U��u�L$�E��E��U�D$�t$�$   �:6������  �}ǅ���    ����,����#����v �$    ��7���}�U�����,�����$����]  �E���  �T$�$��/������  ��$����4$�7���}������������Vv1��������V��6���)�v��������V��7���)�f����p��������v ��������   ����������(��҅��?�������f�������   ����������(��҅�����������t& �F���P�v��f���������Vvυҍ�&    �h����V�G)�봍�    �� ����4$�.:�����t  ��������������$����E�!�$�����$����M�T$�$��2����������u��H����$�t$�B��ǅ��������d����t& �-��ǅ���    �8������u�������$�t$��A��ǅ��������}����t& �Et:�}�������|$� �D$��k����D$������� �$��9���0�����������ɩ���D$�E�$��6�������D����E��  �M�$�7������  �M��������!������E��M�D$�E��$�D$�>�����x����u��p����$�t$��@��ǅ���    �����}��(����$�|$��@��ǅ��������h����U��p����e������$�T$�@���^����������|$�$�@���&����U�L$�$�W7������  �Mǅ���    ����,���������<$�|4���M�������$�L$�7@���uǅ�����������,��������U�������$�T$�@���Mǅ�����������,����X����}�������$�|$��?��ǅ������������M��M����$�L$�?��ǅ������������4$�7���E�D$�������$�?��ǅ��������=����������$�/��ǅ�������� ����u������$�t$�/��ǅ�������������U������$�T$�r/��ǅ�������������U�������$�T$��>��ǅ������������E�D$�������$��>��ǅ�������������$����$��2���M��0����$�L$�>��ǅ��������^����u�������$�t$�>��ǅ��������:����U�������$�T$�`>��ǅ������������u�������$�t$�<>��ǅ�������������U��WVS��   �}�u� ?���É{  ��	���   �������������� ��   ��!���t<ǅ����    �   �t& �E�t$�D$   �D$�������$�5��9��  �E�D$    �D$   �D$�������$�&;��=    ��t��E�$�R<�����  ��u�1���   [^_]Ð�t& ��    �X����������E�D$�������D$   �D$�������$�:��9�����������t!�E�$��;������   ����������   �E�D$�������D$   �D$�������$��4��9�����u!������1�)�׉�	�������<�����    �E�$�q;�����v t������$�|<����   �����[^_]Í�#����$�,����   �����[^_]�f��������$�><����   �����[^_]Í�����$�p,���������������������U��S��<����wy  ���E�D$�E�$��/��������� �$
   �D$�9����[]Ð�������������U��S�<����'y  ���E�D$�E�$�/��������� �$
   �D$��8���$   ��:����������U��S�N<�����x  ���E�D$�E�$��-����[]Ð�����U��S�<���çx  ���E�D$�E�$��-���$   �|:��U��W1�V1�S��;����qx  ����P�<$�t$�9���t$�D$�ǋE�$�5�����t9�~�� ����[^_]Ð�t& �E1��D$������� �D$��<����$�:������[^_]Ð����������U��WVS�\;�����w  ��,�u�}�D$/   ��������D��4$�G8���E��?/u�v ���?/t��4$�.���<$�E��.���M�1҃}� �T��$��5���������|$�t$�E�E��������DЍ�B����D$�E�T$�$�%���E��,[^_]Ð������U��WV1�S�:����#w  ����������$�*����
t'��t& ��y��Y���Ƌ	փ��$��)����
uރ���[^_]Ð���U����]��9:�����v  �u�������� �$�u,��������������� �D$��I����D$��$�_1���E�D$�E�D$��$�6���]��u���]ÐU���(�]���9����Rv  �u��u�}��Z$�����8������D��E�4$�D$�,����K����> �<$E���$���t$�D$��N����D$������� �$��0���]�u��}���]Ð��������������U��S�>9�����u  ���E�$��-����[]Í�    ��'    U����]��E�9���Ïu  �u��u�D$�4$�-����t
�]��u���]Í�y����t$�$�3%����&    U��S���E�8����Au  ��t�$�7����t��[]Ð�t& ��1�[]Ë������ �$�4&�����&    U����]��i8�����t  �u��u�}��}�t$�<$�&����t�]�u��}���]Ív ��t��t苃����� �$��%�����&    U����]��E�8���Ït  �u��u�$�t$�c%����t�]��u���]Ð��t������ �$�%���t& U����]��7����Bt  �u��u�4$�/����t
�]��u���]Å�t������ �$�8%����    ��    U����}��}�]��c7�����s  �u���t+�u���4$�M2���t$�|$�$�](���]�u��}���]Í�T����$��$��������U����u��u�]��7���Ìs  ��t�4$�v*���T�9�w�;Et1ҋ]��Ћu���]Ð�����������U���   �]��6����?s  �E�}��}�u�uJ�D$�  �<$��!������   �}�t�E�<$�D$�Y&������   1��]�u��}���]Í�    �E��D$�|$�$   �5#����y��� ���8��t& u��$    �V)���Ɖ$���J)����?  �<$���   �1���E��$�$���t$�D$   �$�2���ƋE��$�:'����yB������]�����r����$�|$��4��������A����������$�|$�4��������%����E�D$    �<$�D$�=2��������띐������U��S���U�E�U5�����q  �D� ���D$�E�$�D$��#����[]Ð������U��WVS��<�}�5���ßq  ��u1���<[^_]Ív �������E܍������������������E��  �E�    �U؉MԉE��7����{  �O�M��E�    ��1��U܀�uu�c��    ��8�tR�����u��NՀ�vp�F�<�p����E���e����D$   �D$    �<$�%���U��   �@����v ��+E܋M��U��1�������   	E�ȃ��ωE��g����v �   ��  t��U��  ��EE�E�E���ǃ�����   ��,�E�    ��   1���r�U�u�Gf�8���    t6�������    u�U�M�E�!U�	M��U����<�   [^_]Ív ��+EԋMЋ�	M������t��,u���<-tM<=�v t0<+�t& t0��,�v �|���f�똸������0����E�    �t& �ËE���!E��U�!U�E�	E��E�#E���!E�!E��U���(�]�E���2����o  �u��}��$�g*���E�$���
  ��(���<$�ƍ@�D$�U(���U�E�ƃ�
   9�	-�3�9�}�F�D$���
  �$�&(��ƃ�
   ���]�u��}���]Ð���U��WVS�l2�����n  ���}��E�|$�D$�E�$�"������y�����8�t& tփ���[^_]Ít& U1���WVS���u�2���Ýn  �}�E�    ���3��&    t6)�E�����&    ~&ǉt$�|$�E�$�E!���� }ԃ�[^_]Ít& �E���[^_]Í�    ��'    U����E�]��1����n  �u��u�D$�E�t$�$�#��9�u
�]��u���]Í������$��������U��U�U������m  ���������������
  ��%   ����ໃ�r���
  ��%�   ����ඃ�w�����
  ��   �Ѓ�@����ൃ�x���
  �Ѓ� ����ໃ�r���
  �Ѓ�����ඃ�w�����
  ��   �Ѓ�����ൃ�x���
  �Ѓ�����ໃ�r���
  �Ѓ�����ඃ�w����   t>����������t��  ���
  ]�f��Ѓ�@��������s���
  �K�����t& ������ൃ�x��  ���
  ]Ít& �Ѓ���������s���
  �V��������U��S���E��/����al  �$   �D$�E�D$�����[]Ð�������������U��VS�/����&l  ��������t�������&    ���Ћ���u�[^]�U��S���    [���k  �.��Y[��                            ipkg: %s
 0.99.163 ipkg version %s
 where sub-command is one of:
 
Package Manipulation:
 
Informational Commands:
 
Options:
 ipkg.conf /usr/lib/ipkg 				is %s/%s
 Ad:f:no:t:vV: IPKG_CONF_DIR query-all conf-file dest force-defaults force_defaults force-depends force_depends force-overwrite force_overwrite force_downgrade force-downgrade force-reinstall force_reinstall force-space force_space recursive multiple-providers multiple_providers noaction nodeps offline offline-root test tmp-dir verbose-wget verbose_wget verbosity version   usage: ipkg [options...] sub-command [arguments...]
    	update  		Update list of available packages
   	upgrade			Upgrade all installed packages to latest version
    	install <pkg>		Download and install <pkg> (and dependencies)
  	install <file.ipk>	Install package <file.ipk>
 	configure [<pkg>]	Configure unpacked packages
 	remove <pkg|regexp>	Remove package <pkg|packages following regexp>
    	flag <flag> <pkg> ...	Flag package(s) <pkg>
   	 <flag>=hold|noprune|user|ok|installed|unpacked (one per invocation)	
 	list    		List available packages and descriptions
    	list_installed		List all and only the installed packages and description 
 	files <pkg>		List all files belonging to <pkg>
    	search <file|regexp>		Search for a package providing <file>
   	info [pkg|regexp]		Display all info for <pkg>
 	status [pkg|regexp]		Display all status for <pkg>
 	download <pkg>		Download <pkg> to current directory.
  	compare_versions <v1> <op> <v2>
   	                          compare versions using <= < > >= = << >>
    	print_architecture      prints the architecture.
  	print_installation_architecture
   	whatdepends [-A] [pkgname|pat]+
   	whatdependsrec [-A] [pkgname|pat]+
    	whatprovides [-A] [pkgname|pat]+
  	whatconflicts [-A] [pkgname|pat]+
 	whatreplaces [-A] [pkgname|pat]+
  	                        prints the installation architecture.
 	-A                      Query all packages with whatdepends, whatprovides, whatreplaces, whatconflicts
    	-V <level>               Set verbosity level to <level>. If no value is
   	--verbosity <level>      provided increase verbosity by one. Verbosity levels:
    	                         0 errors only
    	                         1 normal messages (default)
  	                         2 informative messages
   	                         3 debug output
   	-f <conf_file>		Use <conf_file> as the ipkg configuration file
    	-conf <conf_file>	Default configuration file location
 	-d <dest_name>		Use <dest_name> as the the root directory for
 	-dest <dest_name>	package installation, removal, upgrading.
   				<dest_name> should be a defined dest name from
 				the configuration file, (but can also be a
 				directory name in a pinch).
    	-o <offline_root>	Use <offline_root> as the root directory for
    	-offline <offline_root>	offline installation of packages.
 	-verbose_wget		more wget messages
 	Force Options (use when ipkg is too smart for its own good):
  	-force-depends		Make dependency checks warnings instead of errors
 					Install/remove package in spite of failed dependences
 	-force-defaults		Use default options for questions asked by ipkg.
 				(no prompts). Note that this will not prevent
  				package installation scripts from prompting.
   	-force-reinstall 	Allow ipkg to reinstall a package.
  	-force-overwrite 	Allow ipkg to overwrite files from another package during an install.
   	-force-downgrade 	Allow ipkg to downgrade packages.
   	-force_space            Install even if there does not seem to be enough space.
   	-noaction               No action -- test only
    	-nodeps                 Do not follow dependences
 	-force-removal-of-dependent-packages
  	-recursive	 	Allow ipkg to remove package and all that depend on it.
  	-test                   No action -- test only
    	-t	 	        Specify tmp-dir.
 	--tmp-dir 	        Specify tmp-dir.
   	regexp could be something like 'pkgname*' '*file*' or similar
 	eg: ipkg info 'libstd*'  or ipkg search '*libop*' or ipkg remove 'libncur*'
   Confusion: getopt_long returned %d
 force-removal-of-dependent-packages force_removal_of_dependent_packages force-removal-of-essential-packages force_removal_of_essential_packages x���>���>���>���>���x���>������>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>�������>���>���>���>���>���>���>���>���>���>���>���>���>�������>�������>���>���>���>���>���>���>���h�������>���>���>���>���p���>���@���>���>���>���>���>���>���>���>���>���>���0��� ������ �������������������h�������������������ipkg must have one sub-command argument print-installation-architecture print_installation_architecture %s: the ``%s'' command requires at least one argument
 print-architecture print_architecture flag configure remove search compare_versions compare-versions list_installed list-installed status %s: unknown sub-command %s
 download upgrade update purge info %s - %s - %s
 ipkg_op PATH /usr/share %s/ipkg/intercept:%s /tmp/ipkg-intercept-%d-%d IPKG_INTERCEPT_DIR Configuring %s
 Debug mfs: %s  
 Successfully terminated.
 Collected errors:
 depends on conflicts with Root set:
 What %s root set
     %s 	%s %s none <= >=  (%s %s)  unsatisfiable What %s %s
 	%s %s
 target=%s
 What %s (arch=%s) %s
 arch %s %s
 Failed to download %s
 Downloaded %s as %s
 Package %s not installed.
 Debug install_cmd: %s  
   writing status file
 Nothing to be done
 %s/*.ipk Packages Packages.gz %s/%s/%s /tmp/ipkg.XXXXXX mkdtemp %s/%s.gz Inflating %s
 w Package %s is not installed.
 hold noprune ok unpacked Non-user leaf package: %s
 No packages removed.
 install_pending whatdepends whatdependsrec whatrecommends whatsuggests whatprovides whatreplaces whatconflicts   ipkg_cmd.c: ipkg_finalize_intercepts: rmdir %s return %d
   Configuring unpacked packages
  An error ocurred, return value: %d.
    ipkg compare_versions <v1> <op> <v2>
<op> is one of <= >= << >> =
  Cannot find package %s.
Check the spelling or perhaps run 'ipkg update'
    %s: Unable to allocate memory 
 Package %s (%s) is installed on %s and has the following files:
    The following packages in %s will now be installed.
    %s: ERROR: failed to unlink %s: %s
 conffile=%s md5sum=%s modified=%d
  %s: ERROR: %s exists, but is not a directory
   %s: ERROR: failed to make directory %s: %s
 Updated list of available packages in %s
   Setting flags for package %s to %s
 ipkg: interrupted. writing out status database
 Package seems to be %s not installed (STATUS = NOT_INSTALLED).
 No packages flagged as installed by user, 
so refusing to uninstall unflagged non-leaf packages
    Removing non-user leaf package %s
  Package %s not installed in %s
 ������������������������������������y���n��������������������������(���ipkg_files_cmd ipkg_install_pending_cmd ipkg_update_cmd postinst    ERROR: %s.postinst returned %d
 Downloading %s
 file: Copying %s to %s... Done
 http_proxy ftp_proxy no_proxy -q --proxy-passwd= --proxy-user= --proxy=on http:// ftp:// .deb   Setting environment variable: http_proxy = %s
  Setting environment variable: ftp_proxy = %s
   Setting environment variable: no_proxy = %s
    wget --passive-ftp %s %s%s %s%s %s -P %s %s %s: ERROR: Command failed with return value %d: `%s'
   Package %s provided by hand (%s).
  Package %s has no Architecture defined.
    %s : This should never happen. Report this Bug in bugzilla please 
     ERROR: Package %s (parent %s) is not available from any configured src.
 ipkg_prepare_url_for_install ipkg_download -ipkg.backup diff -u %s %s     [Press ENTER to continue] ERROR Warning  Forcing downgrade  %s%s on %s from %s to %s...
 %s%s (%s) to %s...
 %s/%s-XXXXXX %s/conffiles %s: failed to open %s: %s
 Null new_file for new_pkg=%s
 upgrade %s install %s preinst Aborting installation of %s
 %s: Failed to copy %s to %s
   removing obsolesced files
 %s.   installing data files
   resolving conf files
   cleanup temp files
 Done.
 Failed.
  old %s   new %s   Forcing downgrade 
       Configuration file '%s'
    ==> File on system created by you or by a script.
    ==> File also in package provided by package maintainer.
       What would you like to do about it ?  Your options are:
        Y or I  : install the package maintainer's version
        N or O  : keep your currently-installed version
          D     : show the differences between the versions (if diff is installed)
     The default action is to keep your current version.
    *** %s (Y/I/N/O/D) [default=N] ?   cleanup_temporary_files: pkg=%s local_filename=%s tmp_dir=%s
   %s: Cannot satisfy the following dependencies for %s:
	 This could mean that your package list is out of date or that the packages
mentioned above do not yet exist (try 'ipkg update'). To proceed in spite
of this problem try again with the '-force-depends' option.
   comparing visible versions of pkg %s:
	%s is installed 
	%s is available 
	%d was comparison result
    Package %s (%s) installed in %s is up to date.
 Not downgrading package %s on %s from %s to %s.
    INTERNAL ERROR: null pkg passed to ipkg_install_pkg
    Function: %s calling pkg_arch_supported %s 
    INTERNAL ERROR: architecture %s for pkg %s is unsupported.
 Package %s is already installed in %s.
 Reinstalling %s (%s) on %s...
  Not installing %s (%s) on %s -- already installed.
 %s: The following packages conflict with %s:
	  Only have %d available blocks on filesystem %s, pkg %s needs %d
    Failed to download %s. Perhaps you need to run 'ipkg update'?
  Package %s md5sum mismatch. Either the ipkg or the package index are corrupt. Try 'ipkg update'.
   %s: Failed to create temporary directory '%s': %s
  INNES : file_hash_set_file_owner failed
    INNES : hash_table_insert failed
   Checking for replaces for %s in package %s
 Replacing pre-existing file %s owned by package %s
 Pre-exiting file %s is obsolete.  obs_pkg=%s
   Package %s wants to install file %s
	But that file is already provided by package   <no package>
Please move this file out of the way and try again.
     not removing obsolesced files because package marked noprune
     removing obsolete file %s
      Warning: remove %s failed: %s
    installing maintainer scripts
        extracting data files to %s
        Calling pkg_write_filelist from %s
    pkg=%s old_state_flag=%x state_flag=%x
  Function: %s calling ipkg_install_pkg 
  Getting old  from pkg_hash_fetch 
  Old versions from pkg_hash_fetch %s 
   Getting new  from pkg_hash_fetch 
  New versions from pkg_hash_fetch %s 
   Versions from pkg_hash_fetch in %s     Comparing visible versions of pkg %s:
	%s is installed 
	%s is available 
	%d was comparison result
    Function: %s calling ipkg_install_by_name %d 
                              ipkg_install_pkg unpack_pkg_control_files backup_make_backup install_data_files                 pkg_remove_installed_replacees_unwind satisfy_dependencies_for ipkg_install_multi_by_name ipkg_install_by_name ipkg_install_from_file    �D  �:Not upgrading package %s which is marked hold (flags=%#x)
  Assuming locally installed package %s (%s) is up to date.
 %s/%s.postrm %s/%s.*   deleting %s
   deleting %s (noaction=%d)
 	%s
 in ipkg.conf.
 prerm     not deleting modified conffile %s
    %s Unable to allocate memory. REPORT THIS BUG IN BUGZILLA PLEASE
   WARNING: Removing essential package %s under your coercion.
	If your system breaks, you get to keep both pieces
    ERROR: Refusing to remove essential package %s.
	Removing an essential package may lead to an unusable system, but if
	you enjoy that kind of pain, you can force ipkg to proceed against
	its will with the option: -force-removal-of-essential-packages
  Package %s is depended upon by packages:
   These might cease to work if package %s is removed.

   You can force removal of this package with -force-depends.
 You can force removal of this package and its dependents
   with -force-removal-of-dependent-packages or -recursive
    or by setting option force_removal_of_dependent_packages
   Removing package %s from %s...
 %s: unable to get dependent pkgs. pkg %s isn't in hash table
 ipkg_remove_dependent_pkgs pkg_has_installed_dependents rm -fr %s
 offline_root offline_root_post_script_cmd offline_root_pre_script_cmd proxy_passwd proxy_user loading conf file %s
 option src/gz lists_dir ERROR: Not enough memory
 TMPDIR /tmp ipkg-XXXXXX pkg-hash obs-file-hash /pending %s/etc/ipkg/*.conf 1 noarch 10 i686  %s: Can't open status file: %s for writing: %s
 %s: ERROR: Can't write status for package %s since it has a NULL dest
  %s: ERROR: An error has occurred writing %s, retaining old %s
  WARNING: Unable to remove temporary directory: %s: %s
  hash_table[%s] n_buckets=%d n_elements=%d max_conflicts=%d n_conflicts=%d
  ^[[:space:]]*(#.*|[[:space:]]*)$    ^[[:space:]]*("([^"]*)"|([^[:space:]]*))[[:space:]]*("([^"]*)"|([^[:space:]]*))[[:space:]]*("([^"]*)"|([^[:space:]]*))([[:space:]]+([^[:space:]]+))?[[:space:]]*$   %s:%d: Ignoring invalid line: `%s'
 %s: Option %s need an argument
 %s: Unrecognized option: %s=%s
 ERROR: duplicate src declaration.  Skipping:
	 src %s %s
   supported arch %s priority (%s)
    defaulting architecture %s priority to 10
  WARNING: Ignoring unknown configuration parameter: %s %s %s
    %s: Failed to create temporary directory `%s': %s
  ERROR: Unknown dest name: `%s'
 ipkg_conf_write_status_files ipkg_conf_init ipkg_conf_parse_file ipkg_conf_set_option   %s: Unable to allocate memory
 can't get %s open for read
 bad statfs
 trim_alloc Null pkg
     creating %s.list file
 %s/%s.list %s: saving changed filelists
 %d: %s: out of memory
 %s/%s.%s Running script %s
 IPKG_OFFLINE_ROOT PKG_ROOT /bin/sh /lib/ld-linux.so.2 /lib/ld-linux.so.3 /var/sh /var/ld.so %s script returned status %d
 WARNING: Cannot open %s: %s
 .- unknown operator: %s Architecture Architecture: %s
 Conffiles Conflicts , Description Description: %s
 Essential: yes
 Filename: %s
 Installed-Size Installed-Size: %s
 Installed-Time Installed-Time: %lu
 Maintainer maintainer: %s
 MD5sum MD5Sum: %s
 Package Package: %s
 Priority Priority: %s
 Provides ipkg_internal_use_only Replaces Recommends Section Section: %s
 Source Source: %s
 Status Status: %s %s %s
 Suggests Version: %s
 Version Essential Filename Out of memory in  %s
 %s/%s.control not-installed half-configured half-installed config-files post-inst-failed removal-failed reinstreq replace prefer obsolete unknown deinstall  Failed to alloc list_file_name
     creating %s file for pkg %s
    Could not open %s for writing: %s
  Calling pkg_write_filelist for pkg=%s from %s
  pkg_write_filelist pkg=%s returned %d
  arch %s (priority %s) supported for pkg %s
 arch %s unsupported for pkg %s
 %s: ERROR: Illegal value for state_status string: %s
   %s: ERROR: Illegal value for state_want string: %s
 abstract_pkg_name_compare: a=%p a->name=%p b=%p b->name=%p
 %s: ERROR: Illegal value for state_status: %d
  %s: ERROR: Illegal value for state_want: %d
    %s: ERROR: installed package %s has a NULL dest
    %s: ERROR: uninstalled package %s has a NULL tmp_unpack_dir
    (offline root mode: not running %s.%s)
 Linking /bin/sh to /var/sh failed : error %d
   Linking /lib/ld-linux.so.2 to /var/ld.so failed : error %d
 Linking /lib/ld-linux.so.3 to /var/ld.so failed : error %d
 Deleting /bin/sh previously created failed : error %d
  Deleting /lib/ld-linux.so.2 previously created failed : error %d
   Deleting /lib/ld-linux.so.3 previously created failed : error %d
   %s: Error extracting file list from %s: %s
 pkg_info_preinstall_check: updating arch priority for each package
 pkg_info_preinstall_check: no architecture for package %s
  Clearing state_want and state_flag for pkg=%s (arch_priority=%d flag=%d want=%d)
   pkg_info_preinstall_check: update file owner list
  No installed files for pkg %s
  pkg_name_version_and_architecture_compare: a=%p a->name=%p b=%p b->name=%p
 pkg_name_version_and_architecture_compare: a=%p a->arch_priority=%i b=%p b->arch_priority=%i
   %s: ERROR: Unknown field name: %s
  Unable to open the control file in  %s
 unable to read control file for %s. May be empty
   ���9���П��x��� �������9���9������9���9���9�������9���9������9�������(���9���9�������9���9���9���9���9���9���9���9���9���9������9���П��x��� �������9���9������9���9���9�������9���9������9�������(���9���9�������pkg_write_changed_filelists pkg_state_status_from_str pkg_state_status_to_str pkg_state_flag_to_str pkg_state_want_from_str pkg_state_want_to_str pkg_run_script pkg_get_installed_files pkg_print_field pkg_formatted_field pkg_formatted_info set_flags_from_control abstract_pkg_new pkg_new pkg_depend_str: index %d out of range for pkg=%s
   Seems I've found a replace %s %s 
  dependency check error.  pkg %s isn't in hash table
    %s:%d: possible_satisfier is null
  %s:%d: possible_satisfier->pkg is null
 %s:%d: something terribly wrong with pkg %s
    not installing %s due to requirement for %s
    not installing %s due to broken depends 
   %s: ignoring recommendation for %s at user request
 %s: unsatisfied recommendation for %s
  package %s suggests installing %s
  Adding satisfier for greedy dependence: %s
 Freeing depends=%p
 << >> Depends pointer is NULL
 Greedy-Depend Pre-Depend %s has %d possibilities:
 	%s version %s (%d)
 %s: null pkg scout
 ../src/pkg_depends.c %s:%d: satisfying_pkg=%p 
 %s:%d: satisfying_pkg=%p
                                buildDepends depend_init buildReplaces buildConflicts buildProvides pkg_hash_fetch_conflicts    pkg_hash_fetch_unsatisfied_dependencies add_unresolved_dep merge_unresolved /
 /.
 ./control    %s: ERROR: Failed to open %s for writing.
                      pkg_extract_data_file_names_to_file INNES: In %s, malloc of hash_entry->next failed.
   %s: primes table might not be big enough (! << %d)
 %s: Out of memory.
 hash_table_insert hash_table_init   INNES: In %s, hash_table_insert failed.
    best installation candidate for %s
 Multiple replacers for %s, using first one (%s)
       replacement_apkg=%s for provider_apkg=%s
       no pkgs for provider_apkg %s
      %s arch=%s arch_priority=%d version=%s  
  Found a valid candidate for the install: %s %s  
  Multiple packages (%s and %s) providing same name marked HOLD or PREFER.  Using latest.
    Package=%s, %d matching providers
  Please select one with ipkg install or ipkg flag prefer
    %s: for apkg=%s, %d matching pkgs
    using latest version of installed package %s
   no matching pkg out of matching_apkgs=%d
   using latest matching %s %s %s
   Package %s version %s has no architecture specified, defaulting to %s.
 

+=+%s+=+

  apkg=%s nprovides=%d
  adding %s to providers
     %s
     %s %s %s
   using held package %s
 	depended upon by - %s
 	provided by - %s
 	depends on - %s
                    hash_insert_pkg add_new_abstract_pkg_by_name pkg_hash_dump      pkg_hash_fetch_best_installation_candidate  %s: ERROR: Provides string is empty Provides: ipkg_internal_use_only,   %s: ERROR: version string is empty  %s: ERROR: epoch in version is not number   %s: ERROR: nothing after colon in version number    Provides: ipkg_internal_use_only  %s: out of memory 
 Provides: Version: Conffiles: Essential: Status: %s %s %s Package: Architecture: Filename: Section: MD5sum: MD5Sum: MD5Sum Source: Installed-Size: Installed-Time: Priority: Pre-Depends alterProvidesLine parseVersion  with set_status
  WITHOUT set_status
    Function: %s. Found pkg=%s version=%s arch=%s cmp=%s version=%s arch=%s 
   Function: %s. Found duplicate for pkg=%s version=%s arch=%s
    Function: %s. calling pkg_merge for pkg=%s version=%s arch=%s   Function: %s. Adding new pkg=%s version=%s arch=%s
 abstract_pkg_vec_alloc pkg_vec_insert_merge pkg_vec_alloc   %s: Failed to open file %s: %s
 %s: ERROR computing md5sum for %s: %s
  %s: ERROR: failed to copy %s to %s
 %s: ERROR: failed to rename %s to %s: %s
 file_md5sum_alloc 0123456789abcdeffile_copy file_move file_read_line_alloc                    	
                 	
 
	
 	 
	x�j�V����p $�ν��|�*ƇGF0��F�ؘ�i��D��[����\�"�k�q���Cy�!�Ib%�@�@�QZ^&�Ƕ�]/�SD����������!�7Ç���ZE�������og�L*�B9����q�"a�m8��D꾤���K`K��p����~�(�'��0���9�������|�eV��D")���*C�#��9����Y[e���}����]��O~�o��,�C��N�~S�5�:����*�ӆ�Null string pointer passed to sprintf_alloc
    Null fmt string passed to sprintf_alloc
 %s: Error compiling regex: print_regcomp_err   %s: ERROR: fork failed before execution: `%s'
  %s: ERROR: Child process died due to signal %d: `%s'
   %s: ERROR: Received unintelligible return value from system: %d xsystem %s: conffile %s has no md5sum
  %s: conffile %s: 	
old md5=%s 	
new md5=%s
 conffile_has_been_modified nv_pair_list_append %s/ %s/%s.tmp pkg_dest_list_append pkg_src_list_append   %s: ERROR: element not found in list
 void_list_remove void_list_push void_list_append pipe error fork failed gzip stream init failed Couldnt wait ? gzip aborted
 Couldnt write Incomplete literal tree incomplete distance tree � Invalid gzip magic unknown method %d -- get newer version of gzip  invalid compressed data--format violated    invalid compressed data--crc error  invalid compressed data--length error                              ?  � ������?���                                                 	      
                                 ustar Invalid tar header checksum Unknown typeflag: 0x%x Invalid magic Cannot resolve long file name ./ Cannot link from %s to '%s' extract_archive: %s Cannot create node %s Don't know how to handle %s %s %d/%d %8d %s  control.tar.gz data.tar.gz !<arch> invalid magic         �e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e���e���e���f���f���f���e���f��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e��/e���f��/e��/e��/e��/e��/e��/e��f���e���f���f��/e��/e��/e��/e���f��/e��/e���f��Ignoring GNU extension type %c  %s not created: newer or same age file exists   couldn't create leading directories Cannot create symlink from %s to '%s'   no file specified to extract -- extract_function=%x
 unable to stat `%s' %s: omitting directory `%s' is not a directory cannot create directory `%s' unable to open directory `%s' %s: overwrite `%s'?  unable to open `%s' unable to remove `%s' unable to close `%s' unable to create `%s' cannot create fifo `%s' cannot create symlink `%s' `%s' and `%s' are the same file unable to close directory `%s'  unable to change permissions of `%s'    unable to preserve ownership of `%s'    internal error: unrecognized file type  unable to preserve times of `%s'    unable to preserve permissions of `%s' Unable to read all data Unable to write all data %s:%s %s%s%s %s:  %s%s
 xstrndup bug memory exhausted Cannot create directory `%s'  Cannot set permissions of directory `%s'    rwxst ugoa  $  �   I         �	  8     �  Short read 0pcCd?bB-?l?s???     ����    ����           �n    �L    �n    �n    �n    �n    �n    �n     �L    �n    �L    �n    �L    o     o    �f    o    o    o    J �         9     <P     �6    �      %     H  
   �           ��    p
           �E     TA     x        ���o�@  ���o   ���o�=  ���or                                                                                                                                                               d�         �P  �P  �P  �P  �P  �P  �P  �P  Q  Q  "Q  2Q  BQ  RQ  bQ  rQ  �Q  �Q  �Q  �Q  �Q  �Q  �Q  �Q  R  R  "R  2R  BR  RR  bR  rR  �R  �R  �R  �R  �R  �R  �R  �R  S  S  "S  2S  BS  RS  bS  rS  �S  �S  �S  �S  �S  �S  �S  �S  T  T  "T  2T  BT  RT  bT  rT  �T  �T  �T  �T  �T  �T  �T  �T  U  U  "U  2U  BU  RU  bU  rU  �U  �U  �U  �U  �U  �U  �U  �U  V  V  "V  2V  BV  RV  bV  rV  �V  �V  �V  �V  �V  �V  �V  �V  W  W  "W  2W  BW  RW  bW  rW  �W  �W  �W  �W  �W  �W  �W  �W  X  X  "X  2X  BX  RX  bX  rX  �X  �X  �X  �X  �X  �X  �X  �X  Y  Y  "Y  2Y  BY  RY  bY  rY  �Y  �Y  �Y  �Y  �Y  �Y  �Y  �Y  Z  Z  "Z  2Z  BZ  RZ  bZ  rZ  �Z  �Z  �Z  �Z  �Z  �Z  �Z  �Z  [  [  "[  2[  B[  R[  b[  r[  �[  �[  �[  �[  �[  �[  �[  �[  \  \  "\  2\  B\  R\  b\  r\  �\  �\  �\  �\  �\  �\  �\  �\  ]  ]  "]  2]  B]  R]  b]  r]  �]  �]  �]  �]  �]  �]  �]  �]  ^  ^  "^  2^  B^  R^  b^  r^  �^  �^  �^  �^  �^  �^  �^  �^  _  _  "_  2_  B_  R_  b_  r_  �_  �_  �_  �_  �_  �_  �_  �_  `  `  "`  2`  B`  R`  b`  r`  �`  �`  �`  �`  �`  �`  �`  �`  a  a  "a  2a  Ba  Ra  ba  ra  �a  �a  �a  �a  �a  �a  �a  �a  b  b  "b  2b  Bb  Rb  bb  rb  �b  �b  �b  �b  �b  �b  �b  �b  c  c  "c  2c  Bc  Rc  bc  rc  �c  �c  �c  �c  �c  �c  �c  �c  d  d  "d  2d  Bd  Rd  bd  rd  �d  �d  �d  �d  �d  �d  �d  �d  e  e  "e  2e  Be  Re                               �                             �7         A   �7        f   Ag        f   �7        d   �7         �   �7         �   �7         �   �7         �   �7         �   8         �   8         �   $8         �   48         �   D8         �   T8         �   `8         �   l8         �   �F         �   G         �   (G         �   LG         �   v8         �   �8         �   �8         �   �8         �   �8        o   �8        o   �8         �   �8        t   �8         �   �8         �   �8        V   �8         v                   �                               J     ��  J     ��  �k     0�  �I     ��  #J     ��  �I    �  �I     p�  �L      �  o     �  �I    б  J    ��  �I     �  �n     �  �I    ��  J    Е  �I     �  �I     �  _I     Д  rI     Д  �H     Д  I     Д  �7    ��  �L     �  �L     �  �L    ��  M    ��  M    ��  'M    `�  4M    ��  r7 {  �  �  �  �
  !  [  G  �  -  s%  L  gZ  ��  ��  ?�  Ʉ                                                     	 	 
 
                 	    ! 1 A a � � � 0@`                                          c c         	 
         # + 3 ; C S c s � � � �        GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3  GCC: (Sourcery G++ 4.3-177) 4.3.3        $             <P  "   �6                �        06 2           $           hP     �6                �   ^    __stat     �                /opt/codesourcery/i686-pc-linux-gnu/src/generated/glibc/msgxx-glibc/csu/crti.S /opt/codesourcery/i686-pc-linux-gnu/src/glibc/csu GNU AS 2.19.51 �Z         �   ~   06 b6 �   �   �   �   �   �   +   int `   �   %  9]   X  �d   s  �3   �  �3   8  �:   u   �3   `  �3   P  ��   e   G  ��   �   ��   �  ��   �   j  z  $   {�   #    |�   # P   X%    &o   #   ',   #�   )�   #{  -�   #E   .�   #@  /z   #n   0�   #    1o   #   2,   #(   4�   #,U   8�   #0  ;�   #4=   F�   #80  G�   #@5   H�   #H�  U:   #P�  V:   #T N   3O   06 b6     L  	�   2L  � 
buf 2W  � R  �      c    �   K      /tmp/ccvxHt03.s /opt/codesourcery/i686-pc-linux-gnu/src/glibc/csu GNU AS 2.19.51 � U%   %  $ >  $ >   :;I  $ >  :;   :;I8
  .?:;'I@  	 :;I
  
 :;I
   I  & I    U%   �    �   �      /opt/codesourcery/i686-pc-linux-gnu/src/generated/glibc/msgxx-glibc/csu ../sysdeps/generic  crti.S   initfini.c     <P  !/!=Z!gg//  �6 � !/!=Z! �    l   �      ../bits ../time ../sysdeps/unix/sysv/linux/bits  stat.c    types.h   time.h   stat.h     06 2u;�g P    &   �      /tmp  ccvxHt03.s     hP  !!!  �6 ,!!!    ���� |�         06 2   A�BD� st_rdev tv_nsec GNU C 4.3.3 st_size tv_sec short int st_ctim st_atim st_nlink __stat st_blksize long long int st_gid __mode_t /opt/codesourcery/i686-pc-linux-gnu/src/glibc/io unsigned char file st_ino long long unsigned int __blksize_t stat.c short unsigned int st_blocks __pad1 __pad2 st_dev __u_quad_t st_mtim __ino_t st_uid __time_t __off_t __dev_t __nlink_t timespec __uid_t st_mode __unused4 __unused5 __blkcnt_t __gid_t         t       t   2    u          ����    <P  ^P  �6 �6         ����    hP  lP  �6 �6          .symtab .strtab .shstrtab .hash .dynsym .dynstr .gnu.version .gnu.version_r .rel.dyn .rel.plt .init .text .fini .rodata .eh_frame .ctors .dtors .jcr .data.rel.ro .dynamic .got .got.plt .data .bss .comment .debug_aranges .debug_pubnames .debug_info .debug_abbrev .debug_line .debug_frame .debug_str .debug_loc .debug_ranges                                                  �   �   �
               !         H  H  �              )         %  %  �                 1   ���o   �=  �=  8               >   ���o   �@  �@  �                M   	      TA  TA  x               V   	      �E  �E  p
     	         _         <P  <P  0                  Z         lP  lP  �                e         `e  `e  H�                k         �6 �6                   q         �6 �6 �Y                  y         �� ��                   �         �� ��                   �         �� ��                   �         �� ��                   �         �� �� �                   �         d� d� �                �         ,� ,� t                 �         �� �� D                �          �  �                    �          �  � �                  �               �                  �              8� p                  �              ��                   �              ť k                 �              0� �                               �� �                              �� 0                        0       ȫ �                +             r� ,                  6             �� @                                � D                               Ĵ �.  #   N        	              T� .                                     �             H            %            �=            �@            TA            �E            <P            lP       	     `e       
     �6           �6           ��           ��           ��           ��           ��           d�           ,�           ��            �            �                                                                                                                                                                ��   ��          ��       (   ��       5   `e       
 K    �      Z   $�      h   �e       
             ��t   ��       �   ��       �   ��       �   p6      
 �            ���    �      �   q        
 �   �p        
 �   �r        
 �   xr        
 �   hr        
 �   Hr        
 �   q        
 �   (r        
 �   r        
 �   �q        
 �   �q        
   �q        
   �q        
   �q        
   �q        
   �q        
   pq        
   `q        
 $  Pq        
 )  @q        
 .  8r        
 3           ��=  6J      O           ��V  @�      c  8�      l           ��w  <�      �  `� \    �   �  �   
 �  ��      
 �  ��      
 �  ��      
 �   �      
    �      
 "  @�     
 B  `�      
 X  ��      
 n  ��  ,   
   Д  P    
 �   �  �    
 �  Е     
 �  ��     
 �   �     
 �  HQ      �   �  �   
 	  @�        �  �    
 $   �  �   
 =  WQ      O  ��  �   
 d  p�      
 t  ��      
 �  ��  y   
 �  0�  �   
 �  ��  K   
 �  pQ      �  �  �   
 �  �  �    
 �  ��  b   
 �  б  �   
 
  ��  \   
   ��        
    }�        
 %  o�        
 *  a�        
 /  S�        
 4  E�        
 9  :�        
 >  /�        
 C  $�        
 I  �        
 O  �        
 U  [�        
 [  x�        
 a  h�        
 g  ��        
 m  ��        
 s  ��        
 y  ȓ        
            ���           ���  .T      �  T      �           ���  ��      
 �   �  Y    
   `�  �   
   �  �   
 +  �`      =  �`      O  �`      a  �`      s  Fa      �   a &     �  za      �  _a      �  �a      �           ���           ���  -f      �  f                 ��  �j      ,  @  G    
 F  �  �   
 [  !k      m  k        �j      �           ��m  k      �           ���  �v      �  �� @     �  �v      �  @�       �  �v        �v        w      &   � @     9  �v      K  &w      ]  5w      o  ]w      �  Mw      �  qw      �  �w      �  �w      �  �w      �  �C       
 �  �;       
 �  pB       
 �  A       
 �  �@       
 �  P@       
 �  �?       
   0?       
   �>       
   H=       
   �<       
   8<       
 #           ��1  �f ~   
 >  �z      P  �z      b  �z      t  �z      �  �z      �  �s 2    
 �   t M    
 �  {      �  H{      �   { (     	  [{       	           ��.	  �{ $     @	           ��M	  `|      _	  �� H     q	  r|      �	           ���	  0�      �	   �      �	  M�      �	  ��    
 �	  �� p    
 �	  P� M    
 
  P� L    
 /
  �� 4    
 G
  `� +     Y
           ��e
  G�      w
  Y�      �
           ���
  ��      �
  ��      �
  ��      �
           ���
  b�      �
  t�      �
  �� 
       �� 
       ��      *           ��9           ��?  @� y   
 Q  ��      ^  �� @     k   �      x           ���           ���           ���  ��      �           ���  P�      �           ���  ��      �           ���           ��           ��  ��      "           ��-           ��=  �      O           ��Y           ���  ��      h           ��s           ��  2�      �  C�      �  R�      �           ���           ���  �� 5    
 �  P�      �  T�      �  �� ,    
 �  �� -	   
 �  d�      �  �� �   
   h�        `�        �� "        l�      #  H�      +  X�      /  L�      8  \�      B  �� �
   
 P   � L     \  �� >     h  � >     t   � <     �  `� <     �           ���           ���  p�      �  t�      �  x�      �  !       
 �  �       
 �  C       
 �  R	       
 �  u	       
 �  e	       
 �  7       
 �  F	       
 �  %	       
 �  �       
 �  U       
 �           ��	           ��           ��'           ��;           ��H           ��]           ��i           ��|           ���           ���           ���           ���           ���           ���           ���           ���           ���  b�        |�        \�      *  h�      8           ��F  |�      O           ��Z           ��h  ��      q           ��x  ��     ���  06 2   
 �  06 2   
 �   �      �  ��      �   �      
 �  f      
 �  d�     ���  � A   
                 3 �    
              .             J   � g    
 X             o  p_ c    
 w  �� H    
 �             �   X Z    
 �  ��     
 �  `X x    
 �             �             �  ��                     p� K   
 $             5  z  �    
 L   t  =    
 X             l  � ;    
 �  @� �    
 �             �  �c �    
 �  ��  5   
 �  Њ H   
 �             �  @� #    
    � �    
 (  V m    
 7  @ E    
 F   � H    
 U   �  �    
 g  `� �    
   �  M    
 �   � �    
 �             �  �) 0    
 �  �x  �    
 �  �# �    
 �  � x    
    � *    
 &  `c t    
 =  �� *    
 S  �d �    
 g  P0 �    
 �  � 6    
 �             �  �� u    
 �             �  �b d    
 �              �   � #    
                             4   �  \   
 E   # �    
 [  �� C    
 �             �  �� �   
 �  �! r    
 �  p�  �   
 �  p) H    
 	   "    
 !             3   � *    
 E  @� �    
 Z  �� j    
 p             �             �             �             �  �6       �  p+ \    
 �             �  �� �    
 �             �               @�  L    
 &  �    
 6  ��  m   
 Q  �r  �    
 [  � #    
 o  �  l    
 �  p �
   
 �   �   
 �             �             �             �             �  `6 �   
   P�  �   
   �� #    
 &   ) B    
 0  �� 1    
 >  �3 L    
 H  @� �   
 U             i  ��  �   
 w  �� �   
 �  �� �    
 �             �  0f �    
 �  � �    
 �             �  � �    
 �  `� 1    
   � e    
   �V z   
 0    E    
 @  �q �    
 ^             z  ��  4    
 �             �  @� �    
 �             �  `� �    
 �  �
 �   
 �             �  4�        ��  ]    
 %  �* �    
 E  �� /    
 ^             q  �� G    
 �             �  �0 9    
 �             �             �  �  �    
 �  `r �    
 �               ��  �    
 6  0� #    
 H  ��  +   
 p             �             �             �  ��  $   
 �   - I    
 �  �; �   
 �   '   
   �� J    
   ,�         @, �    
 ,  `� =    
 >             P  �  e    
 ^  �� #    
 q   x �   
 �  �` �   
 �  ��  )    
 �  `Q �   
 �  �3 s    
 �  @ F    
 �             	  ��  J    
              *             =  P� 2    
 S             f  0�  �   
 w             �  �  �   
 �             �  P� N    
 �  �+ o    
 �  Pn �    
 �  0�          �  �    
              #             5  P� 6    
 B  `p  q   
 M  �� |    
 z  �, #    
 �   * �    
 �  �  j    
 �  p� �   
 �  0� 1    
 �  0� �    
 �  ��  H   
 �  �� �    
 �   � A    
   �� =    
    s �    
 5             G  �� #    
 Z             l             }  �� #    
 �  �� `    
 �  �� M   
 �  0� r    
 �             �               �� #    
              *  ��      6  0� S    
 K  `�  %    
 h             {             �  �� S    
 �  � �   
 �  �� h    
 �  �� *    
 �  (�      �  ��  �   
    �� q    
 ?              R   p L    
 b              s   Ё  3    
 �   � |    
 �              �   @� *    
 �    u �   
 �   @� +    
 �   � �   
 �              	!             !             ,!  � H    
 =!  ��    
 O!  `�      `!  �� �    
 u!  `�  K   
 �!             �!  `y  �    
 �!   ~  �    
 �!             �!  �� +    
 �!  0� #    
 �!  �4 k   
 �!  �$ <   
 "  �b H    
 ,"             B"  �� �    
 Q"             e"  �3 �   
 "             �"  p� 4    
 �"  @p 8   
 �"  �� J    
 �"             �"             �"   + /   
 �"  Po �    
  #  ��  �    
 #  �0     
 &#  09    
 P#             c#             u#             �#             �#  �] �   
 �#             �#  p�     
 �#  0 �    
 �#  p� i    
 �#  p� 4    
  $  �� *    
 $   �      ��'$             9$  p� #    
 N$  �~  �    
 a$  �    
 o$  �� �    
 x$  p� &   
 �$             �$  �� x    
 �$   ! �    
 �$  � �   
 �$             �$  �_ �    
 �$  @� L    
 �$  �� #    
 %  �� �    
 %  � *    
 "%  P: 3   
 8%   P X   
 I%   � h    
 W%  P �	   
 f%  �0 �   
 ~%  � �   
 �%             �%  �� c    
 �%  Pt �    
 �%             �%  �m �    
 �%             �%  p� Z    
 �%  �� #    
 &  �� `    
 %&             :&             N&  ��  -   
 c&  @{  �    
 u&  ��  ^    
 �&  � E    
 �&             �&  p�     
 �&  �� :    
 �&   '    
 �&  � �    
  '  �    
 
'             )'  �* �    
 :'             L'             a'  �� F    
 p'  ��      ��u'  @� 8   
 {'             �'  �� �    
 �'  �� �    
 �'  D�      �'             �'  �{  �    
 �'             �'  `t  �   
 �'  P. D    
  (  P- H    
 (  0�  �    
 .(  � E   
 @(   � ;    
 M(  �� �   
 X(  p4 L    
 j(  �� �   
 }(  �  �    
 �(  �. Z    
 �(  ��      �(  @� �    
 �(   f  �	   
 �(  p� e    
 �(             )  ��  a   
 $)  `�  =   
 =)             O)    Z   
 i)             ~)             �)             �)  P� #    
 �)             �)   p  4    
 �)             �)  �|  �    
 *             *  �� S    
 )*  �� �    
 :*  P� G    
 J*  ��  �   
 _*             q*  �� #    
 �*             �*             �*  P/ Y   
 �*  �- X    
 �*  �� �   
 �*   �  >   
 �*   �      ���*             +  `� #    
 +   / D    
 )+  @l _   
 6+   � J    
 \+  к m    
 i+   � I    
 z+  ��      �+  �    
 �+  � >   
 �+  � -    
 �+  � g    
 �+  �� J    
 �+  0� �    
 �+  0}  �    
 �+   . L    
 �+  ��  $   
 ,  �� *    
 &,             8,  `� *    
 K,  �X �   
 U,             g,  �& �   
 },  `O �    
 �,          "   �,  @� J    
 �,             �,             �,             �,  � *    
 �,  �e �    
 -  p F   
 &-  p� 2    
 6-  p� #    
 F-  �s  ;    
 P-  p� n    
 h-  @� *    
 z-  �� )    
 �-   �  z    
 �-  <P        �-  x  �    
 �-  � +    
 �-  �) *    
 �-  �z  �    
 �-    z    
 �-  � z    
  crtstuff.c __CTOR_LIST__ __DTOR_LIST__ __JCR_LIST__ __do_global_dtors_aux completed.5666 dtor_idx.5668 frame_dummy __CTOR_END__ __FRAME_END__ __JCR_END__ __do_global_ctors_aux args.c long_options.4619 .L14 .L12 .L15 .L16 .L17 .L18 .L31 .L20 .L21 .L22 .L23 .L24 .L25 .L26 .L27 .L28 .L29 .L30 .L32 .L33 .L34 libipkg.c __FUNCTION__.5150 user.c question_len question ipkg_cmd.c p_userdata cmds ipkg_what_depends_conflicts_cmd ipkg_whatconflicts_cmd ipkg_whatsuggests_cmd ipkg_whatrecommends_cmd ipkg_whatdepends_recursively_cmd ipkg_whatdepends_cmd ipkg_what_provides_replaces_cmd ipkg_whatreplaces_cmd ipkg_whatprovides_cmd ipkg_depends_cmd ipkg_print_architecture_cmd ipkg_compare_versions_cmd ipkg_download_cmd ipkg_search_cmd ipkg_files_cmd __FUNCTION__.6818 ipkg_install_cmd global_conf sigint_handler ipkg_install_pending_cmd __FUNCTION__.6418 ipkg_info_status_cmd ipkg_status_cmd ipkg_info_cmd ipkg_list_installed_cmd ipkg_list_cmd ipkg_update_cmd __FUNCTION__.6035 ipkg_flag_cmd ipkg_configure_cmd ipkg_purge_cmd ipkg_remove_cmd ipkg_upgrade_cmd .L71 .L72 .L73 .L74 .L75 .L76 .L98 .L99 .L100 .L101 .L102 .L103 .L173 .L174 .L175 .L176 .L177 .L178 ipkg_configure.c ipkg_download.c __FUNCTION__.4715 __FUNCTION__.4802 ipkg_install.c ipkg_install_pkg_sigint_handler backup_remove resolve_conffiles cleanup_temporary_files __FUNCTION__.5497 __FUNCTION__.6113 __FUNCTION__.5353 __FUNCTION__.5853 __FUNCTION__.5231 __FUNCTION__.5441 __FUNCTION__.5106 __FUNCTION__.5136 __FUNCTION__.5074 ipkg_upgrade.c ipkg_remove.c __FUNCTION__.4787 __FUNCTION__.4834 ipkg_conf.c __FUNCTION__.5169 ipkg_conf_override_string ipkg_conf_parse_file __FUNCTION__.5139 __FUNCTION__.4756 __FUNCTION__.4536 ipkg_utils.c pkg.c __FUNCTION__.6330 pkg_state_status_map __FUNCTION__.6188 pkg_state_want_map __FUNCTION__.6030 __FUNCTION__.6154 __FUNCTION__.5996 pkg_state_flag_map __FUNCTION__.6049 __FUNCTION__.5945 __FUNCTION__.5847 __FUNCTION__.4998 __FUNCTION__.5389 __FUNCTION__.4943 __FUNCTION__.4917 __FUNCTION__.4899 __FUNCTION__.4760 .L344 .L343 .L345 .L346 .L347 .L348 .L349 .L350 .L351 .L352 .L353 .L354 pkg_depends.c parseDepends __FUNCTION__.5468 __FUNCTION__.5344 __FUNCTION__.5291 __FUNCTION__.5314 __FUNCTION__.5258 pkg_constraint_satisfied pkg_installed_and_constraint_satisfied __FUNCTION__.4894 __FUNCTION__.5201 __FUNCTION__.4743 __FUNCTION__.5164 pkg_extract.c __FUNCTION__.5710 hash_table.c __FUNCTION__.4650 primes_table.4600 __FUNCTION__.4605 pkg_hash.c __FUNCTION__.5234 __FUNCTION__.5212 __FUNCTION__.5195 pkg_hash_dump_helper pkg_hash_fetch_all_installed_helper pkg_compare_names pkg_hash_fetch_available_helper pkg_name_constraint_fcn __FUNCTION__.4896 pkg_parse.c __FUNCTION__.4852 __FUNCTION__.4815 pkg_vec.c __FUNCTION__.4840 __FUNCTION__.4667 __FUNCTION__.4683 file_util.c __FUNCTION__.5736 bin2hex.5730 __FUNCTION__.5715 __FUNCTION__.5700 __FUNCTION__.5679 ipkg_message.c md5.c md5_process_bytes S_array.2790 P_array.2789 C_array.2788 sprintf_alloc.c str_util.c xregex.c __FUNCTION__.4676 xsystem.c __FUNCTION__.4658 conffile.c __FUNCTION__.4599 conffile_list.c nv_pair.c nv_pair_list.c __FUNCTION__.4685 pkg_dest.c pkg_dest_list.c __FUNCTION__.4686 pkg_src.c pkg_src_list.c str_list.c void_list.c __FUNCTION__.4714 __FUNCTION__.4691 __FUNCTION__.4680 gz_open.c unzip.c huft_free window crc_table abort_gzip huft_build hufts inflate_codes bb outcnt mask_bits bk in_file crc out_file bytes_out inflate_block border.4509 cplext.4460 cplens.4459 cpdext.4462 cpdist.4461 wfopen.c unarchive.c longname linkname ar_long_names.4393 .L37 .L36 .L48 .L39 .L40 .L41 .L42 .L43 .L44 .L45 .L46 copy_file.c copy_file_chunk.c error_msg.c error_msg_and_die.c perror_msg.c perror_msg_and_die.c xreadlink.c concat_path_file.c ask_confirmation.c verror_msg.c vperror_msg.c xfuncs.c messages.c last_char_is.c make_directory.c safe_strncpy.c parse_mode.c group_chars.3305 group_set.3303 mode_chars.3306 mode_set.3304 time_string.c buf.3439 all_read.c mode_string.c buf.2984 stat.c _GLOBAL_OFFSET_TABLE_ __stat stat __dso_handle __DTOR_END__ __i686.get_pc_thunk.cx __i686.get_pc_thunk.bx _DYNAMIC file_read_line_alloc fputs@@GLIBC_2.0 time_string abort@@GLIBC_2.0 __errno_location@@GLIBC_2.0 pkg_hash_dump sigemptyset@@GLIBC_2.0 pkg_new abstract_pkg_vec_contains sprintf@@GLIBC_2.0 abstract_pkg_init ipkg_cmd_exec abstract_pkg_new open@@GLIBC_2.0 basename@@GLIBC_2.0 error_list getpid@@GLIBC_2.0 sprintf_alloc mkdir@@GLIBC_2.0 ipkg_packages_download ipkg_deinit strerror@@GLIBC_2.0 abstract_pkg_vec_sort file_hash_set_file_owner regfree@@GLIBC_2.0 pkg_conflicts ipkg_conf_write_status_files hash_insert_pkg qsort@@GLIBC_2.0 pkg_src_list_init ensure_abstract_pkg_by_name pkg_print_info free_header_ar pkg_src_deinit get_user_response abstract_pkg_vec_insert default_ipkg_response_callback void_list_remove statfs@@GLIBC_2.0 perror_msg_and_die ipkg_file_search pkg_version_str_alloc read_raw_pkgs_from_file conffile_list_push pkg_conflicts_abstract nv_pair_list_elt_init buildDependedUponBy pkg_free_installed_files abstract_pkg_vec_free signal@@GLIBC_2.0 pkg_extract_control_file_to_stream __xstat@@GLIBC_2.0 pkg_replaces __gmon_start__ nv_pair_list_init _Jv_RegisterClasses __lxstat@@GLIBC_2.0 ipkg_install_pkg pkg_state_want_to_str pkg_hash_fetch_all_installation_candidates realloc@@GLIBC_2.0 pkg_hash_fetch_best_installation_candidate pkg_get_arch_priority ipkg_prepare_url_for_install error_msg_and_die pkg_state_status_to_str rewind@@GLIBC_2.0 nv_pair_list_push void_list_remove_elt pkg_vec_fetch_by_name dirname@@GLIBC_2.0 strchr@@GLIBC_2.0 vsnprintf@@GLIBC_2.0 getenv@@GLIBC_2.0 _fini ask_confirmation calloc@@GLIBC_2.0 xsystem system@@GLIBC_2.0 strncpy@@GLIBC_2.0 root_filename_alloc extract_archive remove_data_files_and_list args_init str_list_elt_deinit default_ipkg_list_callback copy_file get_header_tar fgets@@GLIBC_2.0 rename@@GLIBC_2.0 regexec@@GLIBC_2.3.4 memset@@GLIBC_2.0 pkg_compare_versions ipkg_install_from_file str_list_pop error_msg conffile_init safe_read parseVersion _IO_getc@@GLIBC_2.0 ipkg_download md5_stream pkg_valorize_other_field strrchr@@GLIBC_2.0 freeDepends pkg_hash_fetch_by_name_version chmod@@GLIBC_2.0 pkg_arch_supported pkg_hash_init line_is_blank set_flags_from_control free_error_list version_constraints_satisfied getopt_long_only@@GLIBC_2.0 ipkg_purge_pkg read@@GLIBC_2.0 pkg_src_list_append perror@@GLIBC_2.0 conffile_has_been_modified get_header_ar ungetc@@GLIBC_2.0 ipkg_cb_list default_ipkg_message_callback pkg_remove_installed_files_list file_hash_get_file_owner readdir@@GLIBC_2.0 isGenericFieldType tmpfile@@GLIBC_2.1 safe_strncpy strtol@@GLIBC_2.0 fdopen@@GLIBC_2.1 ipkg_multiple_files_scan pkg_dependence_satisfied __ctype_toupper_loc@@GLIBC_2.3 ipkg_satisfy_all_dependences pkg_dest_list_pop name_mark_dependencies_for_installation free@@GLIBC_2.0 __xmknod@@GLIBC_2.0 optind@@GLIBC_2.0 remove_maintainer_scripts_except_postrm xfopen pkg_formatted_field pkg_write_changed_filelists str_chomp ipkg_cb_response vperror_msg hash_table_deinit access@@GLIBC_2.0 remove_postrm pkg_dest_list_init pkg_hash_fetch_unsatisfied_dependencies pkg_deinit default_ipkg_files_callback pkg_formatted_info full_read pkg_write_filelist_helper fflush@@GLIBC_2.0 ipkg_cmd_find regcomp@@GLIBC_2.0 opendir@@GLIBC_2.0 parseGenericFieldType symlink@@GLIBC_2.0 ipkg_upgrade_pkg __ctype_b_loc@@GLIBC_2.3 ipkg_finalize_intercepts fseek@@GLIBC_2.0 pkg_extract_data_files_to_dir verror_msg buildReplaces ipkg_cb_status ipkg_download_pkg umask@@GLIBC_2.0 fclose@@GLIBC_2.1 pkg_vec_free args_parse pkg_extract_control_files_to_dir_with_prefix xstrlen xreadlink pkg_get_conffile pkg_dest_init conffile_list_append nv_pair_list_append ipkg_remove_dependent_pkgs hash_table_get nv_pair_init str_list_alloc pkg_dependence_satisfiable stderr@@GLIBC_2.0 conffile_list_init memcpy@@GLIBC_2.0 utime@@GLIBC_2.0 nv_pair_list_pop pkg_hash_fetch_all_installed pkg_extract_data_file_names_to_file hash_table_foreach strtoul@@GLIBC_2.0 strlen@@GLIBC_2.0 conffile_list_pop fopen@@GLIBC_2.1 applet_name pkg_dest_list_deinit default_ipkg_status_callback mkdtemp@@GLIBC_2.2 unlink@@GLIBC_2.0 pkg_src_list_deinit pkg_write_filelist abstract_pkg_vec_alloc pkg_dest_list_elt_init ipkg_cb_message pkg_mark_dependencies_for_installation pkg_hash_fetch_installed_by_name_dest waitpid@@GLIBC_2.0 push_error_list fgetc@@GLIBC_2.0 pkg_mark_provides seek_sub_file strcpy@@GLIBC_2.0 str_list_append pkg_hash_fetch_conflicts pkg_vec_clear_marks pkg_vec_insert_merge printf@@GLIBC_2.0 mkfifo@@GLIBC_2.0 ctime@@GLIBC_2.0 pkg_vec_contains hash_table_insert memory_exhausted pkg_dest_list_append ipkg_remove_pkg glob@@GLIBC_2.0 ipkg_package_files ipkg_packages_status atoi@@GLIBC_2.0 void_list_elt_deinit pkg_hash_deinit mode_string pkg_state_flag_from_str pkg_provides_abstract strcasecmp@@GLIBC_2.0 void_list_push regerror@@GLIBC_2.0 pkg_info_preinstall_check closedir@@GLIBC_2.0 str_list_remove_elt printDepends str_toupper close@@GLIBC_2.0 fwrite@@GLIBC_2.0 pkg_run_script buildProvides ipkg_install_multi_by_name parse_mode pkg_name_version_and_architecture_compare fprintf@@GLIBC_2.0 strstr@@GLIBC_2.0 time@@GLIBC_2.0 setvbuf@@GLIBC_2.0 pkg_init strncat@@GLIBC_2.0 void_list_elt_init trim_alloc pkg_src_init pkg_extract_control_files_to_dir abstract_pkg_fetch_by_name __bss_start malloc@@GLIBC_2.0 conffile_list_deinit ipkg_packages_list pkg_parse_raw gz_close gz_open sigprocmask@@GLIBC_2.0 file_copy abstract_pkg_name_compare parseConffiles chown@@GLIBC_2.1 pkg_init_from_file file_is_dir pkg_src_list_pop xregcomp str_list_push pkg_version_satisfied pkg_print_status pkg_vec_alloc ipkg_conf_init pkg_get_installed_files deb_extract fputc@@GLIBC_2.0 str_ends_with is_pkg_a_replaces rmdir@@GLIBC_2.0 buildConflicts stdin@@GLIBC_2.0 nv_pair_list_find str_list_init pkg_hash_fetch_available sigaddset@@GLIBC_2.0 readlink@@GLIBC_2.0 ipkg_prep_intercepts ipkg_lists_update pkg_remove_installed_replacees free_header_tar memmove@@GLIBC_2.0 abstract_pkg_vec_get file_exists copy_file_chunk pkg_state_want_from_str unarchive __ctype_tolower_loc@@GLIBC_2.3 concat_path_file strcat@@GLIBC_2.0 __strndup@@GLIBC_2.2 nv_pair_deinit _end unzip stdout@@GLIBC_2.0 hash_table_init pkg_dest_deinit caught_sigint puts@@GLIBC_2.0 ipkg_packages_remove fork@@GLIBC_2.0 ipkg_op xmalloc xstrdup pkg_remove_installed_replacees_unwind alterProvidesLine pkg_vec_sort md5_buffer archive_xread_all parseDependsString pkg_get_installed_replacees xstrndup ipkg_state_changed parseStatus args_usage pkg_hash_fetch_best_installation_candidate_by_name globfree@@GLIBC_2.0 ipkg_conf_deinit satisfy_dependencies_for sscanf@@GLIBC_2.0 read_raw_pkgs_from_stream fnmatch@@GLIBC_2.2.3 strncmp@@GLIBC_2.0 lchown@@GLIBC_2.0 nv_pair_list_elt_deinit vfprintf@@GLIBC_2.0 args_deinit link@@GLIBC_2.0 ipkg_packages_install _IO_putc@@GLIBC_2.0 nv_pair_list_deinit void_list_append str_starts_with ipkg_install_by_name optarg@@GLIBC_2.0 pkg_dest_list_elt_deinit pipe@@GLIBC_2.0 fread@@GLIBC_2.0 make_directory xcalloc file_md5sum_alloc pkg_has_installed_dependents _edata snprintf@@GLIBC_2.0 conffile_deinit last_char_is buildDepends pkg_extract_data_file_names_to_stream ipkg_message void_list_deinit archive_offset pkg_vec_insert pkg_hash_add_from_file reverse_error_list wfopen void_list_init file_move ipkg_packages_info xrealloc ipkg_configure_packages str_list_remove ferror@@GLIBC_2.0 pkg_dest_list_push pkg_merge strcmp@@GLIBC_2.0 pkg_state_flag_to_str pkg_print_field __cxa_finalize@@GLIBC_2.1.3 str_tolower __strdup@@GLIBC_2.0 setenv@@GLIBC_2.0 exit@@GLIBC_2.0 pkg_src_list_push pkg_depend_str pkg_state_status_from_str file_mkdir_hier str_list_deinit ipkg_init pkg_vec_mark_if_matches str_list_elt_init str_dup_safe ipkg_configure _init ipkg_file_what void_list_pop perror_msg ipkg_packages_upgrade get_available_blocks pkg_hash_fetch_installed_by_name                                                                                                                                                             usr/boot/bin/                                                                                       0000755 0000000 0000000 00000000000 12644755744 012122  5                                                                                                    ustar   root                            root                                                                                                                                                                                                                   usr/boot/bin/ipkg                                                                                   0000755 0000000 0000000 00000016430 12644755744 013006  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   ELF              ��4   �      4    ( % "    4   4�4��   �              ��                    � �t  t           t  t�t�             �  �����   �            (  (�(�              Q�td                          /lib/ld-linux.so.2           GNU           	            	                                           
                      ��                    (               <   L�      i              Z   l�     �   |�     ���   ��     ��B              {   |�     ��J   D�     
  libipkg.so.0 error_list __gmon_start__ _Jv_RegisterClasses _fini ipkg_op _init libc.so.6 _IO_stdin_used __libc_start_main _edata __bss_start _end GLIBC_2.0                      P          ii   �       X�  h�  l�  p�	  U��S���    [��  ��������t�   ��   �  X[���5`��%d�    �%h�h    ������%l�h   ������%p�h   �����            1�^����PTRh��h��QVh���������������������U��S���=|� u@������-|����X�9�s��    �B�����|����9�r��|���[]Ív ��'    U��������t�    ��t	�$�����Ð�������������L$����q�U��Q����A�$�D$������Y]�a�Ð����U��]Ít& ��'    U��WVS�O   �Ñ  ���k�������������)�����t$1��E�D$�E�D$�E�$��������9�rރ�[^_]Ë$Ð�U��S���t����t�t�f����Ћ���u��[]Ð�U��S���    [��  ����Y[��         ����    ����                 P      D�   L�   H�   L�   ��
   �                   \�               ,�   $�            ���o����o   ���o�                                                    ��        ������         GCC: (Sourcery G++ 4.3-177) 4.3.3  $    �        D�"   L�               3       ��j           $    F       p�   d�           !        �   u   _IO_stdin_used     6    3    >   __libc_csu_fini S   __libc_csu_init     �            �   ]   ��    O      B   =   Q      int �   8   �   X   )   �   l�O    �    K   '       /opt/codesourcery/i686-pc-linux-gnu/src/generated/glibc/msgxx-glibc/csu/crti.S /opt/codesourcery/i686-pc-linux-gnu/src/glibc/csu GNU AS 2.19.51 �   ]       �   ]   ����   int �   �7   B   �   [����    �   A���,   �   �   @%   �   @�   ��   @�   ��   Q�   	ل�
i R,   X     �   �   X   ,   �   �    �   %   �   �    �   �   -�   �   /�    c    3  ~      /tmp/ccvxHt03.s /opt/codesourcery/i686-pc-linux-gnu/src/glibc/csu GNU AS 2.19.51 �%  $ >  $ >  $ >  4 :;I?
  & I    U%   %  $ >   :;I  $ >  . ?:;'@  .?:;'@   :;I
  4 :;I  	  
4 :;I   I  & I  I  !   '   I  4 :;I?<    U%   #       �       init.c     �    �   �      /opt/codesourcery/i686-pc-linux-gnu/src/generated/glibc/msgxx-glibc/csu ../sysdeps/generic  crti.S   initfini.c     D�!/!=Z!gg//  L�� !/!=Z! �    n   �      /opt/codesourcery/bin/../lib/gcc/i686-pc-linux-gnu/4.3.3/include  elf-init.c    stddef.h     ��� D^�<[g�v P    &   �      /tmp  ccvxHt03.s     p�!!!  d�,!!!     ���� |�         ��   A�B       ��Z   A�BC��� GNU C 4.3.3 short unsigned int short int _IO_stdin_used long long unsigned int unsigned char /opt/codesourcery/i686-pc-linux-gnu/src/glibc/csu long long int envp argc __libc_csu_init elf-init.c __init_array_start size __init_array_end __libc_csu_fini size_t argv         t       t       u               t       t   j    u        @   g    V              ����    D�f�L�_�        ����    p�t�d�h�         .symtab .strtab .shstrtab .interp .note.ABI-tag .hash .dynsym .dynstr .gnu.version .gnu.version_r .rel.dyn .rel.plt .init .text .fini .rodata .eh_frame .ctors .dtors .jcr .dynamic .got .got.plt .data .bss .comment .debug_aranges .debug_pubnames .debug_info .debug_abbrev .debug_line .debug_frame .debug_str .debug_loc .debug_ranges                                                     �                    #         (�(                     1         H�H  D                7         ���  �               ?         L�L  �                  G   ���o   ��                  T   ���o   �                   c   	      $�$                  l   	      ,�,                 u         D�D  0                  p         t�t  @                 {         ���  �                 �         L�L                    �         h�h                    �         p�p                    �         t�t                    �         |�|                    �         ���                    �         ���  �                �         X�X                   �         \�\                   �         t�t                    �         |�|                    �              |  #                  �              �  p                  �                _                  �              o  �                              
  E                              a  �                              4  L                  )     0       �                  4             �  k                  ?             �  @                                8  M                               P  �  $   6         	                                                      �          (�          H�          ��          L�          �          �          $�          ,�     	     D�     
     t�          ��          L�          h�          p�          t�          |�          ��          ��          X�          \�          t�          |�                                                                                                                                                  !             ��            ��   t�      !   |�      /   ��      <   ��      R   |�     a   ��     o   P�                  ��{   x�      �   p�      �   ��      �    �      �            ���            ���   \�     �   t�      �   t�        ��       t�       !  ��     ,  ��     <  ��      C              R              f  h�     m  L�      s             �  l�     �  t�      �  x�     �  ��     �  ��Z     �  |�     ���  ��     ���             �  |�     ���  �       ��+       D�     
  init.c crtstuff.c __CTOR_LIST__ __DTOR_LIST__ __JCR_LIST__ __do_global_dtors_aux completed.5666 dtor_idx.5668 frame_dummy __CTOR_END__ __FRAME_END__ __JCR_END__ __do_global_ctors_aux ipkg-frontend.c elf-init.c _GLOBAL_OFFSET_TABLE_ __init_array_end __init_array_start _DYNAMIC data_start error_list __libc_csu_fini _start __gmon_start__ _Jv_RegisterClasses _fp_hw _fini __libc_start_main@@GLIBC_2.0 _IO_stdin_used __data_start __dso_handle __DTOR_END__ __libc_csu_init __bss_start _end ipkg_op _edata __i686.get_pc_thunk.bx main _init                                                                                                                                                                                                                                         CHECKSUMS.md5                                                                                       0000644 0000000 0000000 00000001530 12644755744 011531  0                                                                                                    ustar   root                            root                                                                                                                                                                                                                   e7958c00d074fd8486866ddad8db6224  ./usr/boot/ipkg/pncg2-ftp-to-http-set_1.10.10_all.ipk
e22021d21991fd6968646c4b326a035c  ./usr/boot/ipkg/patch-pncg2-ftp-to-http_3.10.10_all.ipk
598519f151bd0457a56ef6e3b8acfc5a  ./usr/boot/setup.sh
8c8e0078ba94e0a14507e34db6a96c17  ./usr/boot/scripts/preinst_frm.sh
1c4f3c89757ca8e030bbd9f24eea1e2b  ./usr/boot/scripts/postlist1_frm.sh
15dcebb2189c98abec467f6555305e42  ./usr/boot/scripts/list1
ed079c789f3f44a2790036246213aad6  ./usr/boot/scripts/uninstall.sh
18f07771eefc9750c1f927b240939eef  ./usr/boot/scripts/install.sh
b859402c1ebdf7b9d8eb0c41ad683ed4  ./usr/boot/scripts/list2
0c3ceaf7de976d51ecb2a423765d017a  ./usr/boot/scripts/utils.lsh
24f03bb95b6cd6b395fa564a9b35796c  ./usr/boot/lib/ipkg.conf
04b2737cb469200b2d31cd1c8806c8fb  ./usr/boot/lib/libipkg.so.0
97571ac5a0e179cebecfa2a3ea1cb6a1  ./usr/boot/bin/ipkg
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        