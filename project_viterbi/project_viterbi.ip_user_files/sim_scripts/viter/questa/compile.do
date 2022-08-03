vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/viter/ip/viter_compare_1_0_0/sim/viter_compare_1_0_0.v" \
"../../../bd/viter/ip/viter_compare_2_0_0/sim/viter_compare_2_0_0.v" \
"../../../bd/viter/ip/viter_compare_3_0_0/sim/viter_compare_3_0_0.v" \
"../../../bd/viter/ip/viter_comparer_4_0_0/sim/viter_comparer_4_0_0.v" \
"../../../bd/viter/ip/viter_control_0_0/sim/viter_control_0_0.v" \
"../../../bd/viter/ip/viter_detect1_0_0/sim/viter_detect1_0_0.v" \
"../../../bd/viter/ip/viter_detect2_0_0/sim/viter_detect2_0_0.v" \
"../../../bd/viter/ip/viter_detect3_0_0/sim/viter_detect3_0_0.v" \
"../../../bd/viter/ip/viter_detect4_0_0/sim/viter_detect4_0_0.v" \
"../../../bd/viter/ip/viter_splitstring_0_0/sim/viter_splitstring_0_0.v" \
"../../../bd/viter/ip/viter_state00_0_0/sim/viter_state00_0_0.v" \
"../../../bd/viter/ip/viter_state01_0_0/sim/viter_state01_0_0.v" \
"../../../bd/viter/ip/viter_state10_0_0/sim/viter_state10_0_0.v" \
"../../../bd/viter/ip/viter_state11_0_0/sim/viter_state11_0_0.v" \
"../../../bd/viter/ip/viter_traceback_0_0/sim/viter_traceback_0_0.v" \
"../../../bd/viter/sim/viter.v" \


vlog -work xil_defaultlib \
"glbl.v"

