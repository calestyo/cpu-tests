if [ -z "$KERNEL_VERSION" -o -z "$DESKTOP_ENV" -o -z "$INTEL_PSTATE" ]; then
	echo some env vars are not set
	exit 2
fi




./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" 3__deep-idle							sleep 300
export LIBVA_DRIVER_NAME=i965 ; export M_VO=gpu ; export M_HWDEC=vaapi ; export M_VID=low-res+30fps ;
./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" "3__mpv_${LIBVA_DRIVER_NAME}_${M_VO}_${M_HWDEC}_${M_VID}"	mpv --fullscreen=yes --ao=null --length=300 --vo=${M_VO} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_VID}.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_VO=gpu ; export M_HWDEC=vaapi ; export M_VID=low-res ;
./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" "3__mpv_${LIBVA_DRIVER_NAME}_${M_VO}_${M_HWDEC}_${M_VID}"	mpv --fullscreen=yes --ao=null --length=300 --vo=${M_VO} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_VID}.mkv
./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" 3__idle								sleep 300
./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" 3__moving-window						gnome-terminal --wait	#window is then constantly moved around in circles
./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" 3__unhide-brute							"sh -c 'while true; do unhide brute ; done > /dev/null 2> /dev/null'"
echo 3 > /proc/sys/vm/drop_caches
./3__measure_single.sh "raw/$KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV" 3__sha512sum-verify						"sh -c 'sha512sum -c verify-file-list | grep -v OK$'"
