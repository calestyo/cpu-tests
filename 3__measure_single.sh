#!/bin/bash




#parse parameters
if [ $# -lt 3 ]; then
	echo "Invalid arguments." >&2
	exit 2
fi

TESTENV="$1"
TESTNAME="$2"
shift
shift


#create directory for test results
mkdir -p "${TESTENV}"


#wait for test to begin
printf "%s\n" "$TESTENV"
printf "%s\n" "$TESTNAME"
echo
echo
echo "press key to start test (when temperature back at normal level)"
echo
echo
echo
echo
read FOO


#start measuring programs
turbostat --num_iterations 36 --out "${TESTENV}/${TESTNAME}.turbostat" 2>&1 &
timeout 180 intel_gpu_top -o "${TESTENV}/${TESTNAME}.intel_gpu_top" &
powertop -t 5 -i 36 --csv="${TESTENV}/${TESTNAME}.powertop.csv" > /dev/null 2> /dev/null &
timeout 180 stdbuf -oL sh -c "while true; do sleep 1; sensors; done | grep '^Core\|^Package' > '${TESTENV}/${TESTNAME}.temp'" &


#start test program
echo
echo
echo warmup+main: 2min
echo
echo
eval timeout 120 $*
beep


#wait cooldown phase
echo
echo
echo cooldown: 1min
sleep 60
beep ; beep ; beep

#waiting for all jobs to finish
while  jobs -r  | grep -q . ; do #only works with bash
	echo waiting for jobs to finish
	sleep 2
done
echo
echo
echo
echo

