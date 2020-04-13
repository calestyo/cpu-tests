if [ -z "$KERNEL_VERSION" -o -z "$DESKTOP_ENV" -o -z "$INTEL_PSTATE" ]; then
	echo some env vars are not set
	exit 2
fi




export LIBVA_DRIVER_NAME=i965 ; export M_GPU=gpu ; export M_HWDEC=no ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=gpu ; export M_HWDEC=no ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=i965 ; export M_GPU=gpu ; export M_HWDEC=vaapi ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=gpu ; export M_HWDEC=vaapi ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=i965 ; export M_GPU=gpu ; export M_HWDEC=vaapi-copy ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=gpu ; export M_HWDEC=vaapi-copy ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv


export LIBVA_DRIVER_NAME=i965 ; export M_GPU=vaapi ; export M_HWDEC=no ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=vaapi ; export M_HWDEC=no ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=i965 ; export M_GPU=vaapi ; export M_HWDEC=vaapi ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=vaapi ; export M_HWDEC=vaapi ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=i965 ; export M_GPU=vaapi ; export M_HWDEC=vaapi-copy ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=vaapi ; export M_HWDEC=vaapi-copy ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv


export LIBVA_DRIVER_NAME=i965 ; export M_GPU=xv ; export M_HWDEC=no ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=xv ; export M_HWDEC=no ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=i965 ; export M_GPU=xv ; export M_HWDEC=vaapi ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=xv ; export M_HWDEC=vaapi ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=i965 ; export M_GPU=xv ; export M_HWDEC=vaapi-copy ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=i965 ; export M_GPU=xv ; export M_HWDEC=vaapi-copy ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv




export LIBVA_DRIVER_NAME=iHD ; export M_GPU=gpu ; export M_HWDEC=no ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=iHD ; export M_GPU=gpu ; export M_HWDEC=no ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=iHD ; export M_GPU=gpu ; export M_HWDEC=vaapi ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=iHD ; export M_GPU=gpu ; export M_HWDEC=vaapi ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=iHD ; export M_GPU=gpu ; export M_HWDEC=vaapi-copy ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=iHD ; export M_GPU=gpu ; export M_HWDEC=vaapi-copy ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv


#anything with LIBVA_DRIVER_NAME=i965 and -vo=vaapi fails


export LIBVA_DRIVER_NAME=iHD ; export M_GPU=xv ; export M_HWDEC=no ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=iHD ; export M_GPU=xv ; export M_HWDEC=no ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=iHD ; export M_GPU=xv ; export M_HWDEC=vaapi ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=iHD ; export M_GPU=xv ; export M_HWDEC=vaapi ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv

export LIBVA_DRIVER_NAME=iHD ; export M_GPU=xv ; export M_HWDEC=vaapi-copy ; export M_RES=low ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
export LIBVA_DRIVER_NAME=iHD ; export M_GPU=xv ; export M_HWDEC=vaapi-copy ; export M_RES=high ; ./measure_mpv.sh $KERNEL_VERSION/$INTEL_PSTATE/$DESKTOP_ENV vadriver-${LIBVA_DRIVER_NAME}_vo-${M_GPU}_hwdec-${M_HWDEC}_res-${M_RES} --vo=${M_GPU} --hwdec=${M_HWDEC} ~calestyo/cpu-tests/test-vid-${M_RES}-res.mkv
