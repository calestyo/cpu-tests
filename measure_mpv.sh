TESTENV=$1
OPTS=$2

echo $TESTENV
echo $OPTS
shift
shift

perf stat -a -x, -r 1 -e "power/energy-pkg/" -e "power/energy-cores/" \-e "power/energy-gpu/" -e "i915/actual-frequency/" -e "i915/rc6-residency/" -e "i915/rcs0-busy/" -e "i915/bcs0-busy/" -e "i915/vcs0-busy/" mpv --fullscreen=yes --ao=null --length=80 $* > ${TESTENV}/mpv__${OPTS}.perf 2>&1 &
timeout 180 intel_gpu_top -o ${TESTENV}/mpv__${OPTS}.intel_gpu_top &
powertop -i 8 --csv=${TESTENV}/mpv__${OPTS}.powertop.csv &
timeout 180 sh -c "while true; do sleep 1; sensors; done | grep °C > ${TESTENV}/mpv__${OPTS}.temp"
beep

echo
echo
echo
echo
echo
echo press key when temperature back at short idle level
echo
echo
echo
echo
echo
read
