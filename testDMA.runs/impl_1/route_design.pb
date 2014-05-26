
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
š
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
Š
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
Y
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
x

Phase %s%s
101*constraints2
1.1 2default:default22
Build Netlist & NodeGraph (MT)2default:defaultZ18-101
J
>Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 5641fcad
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 1697.512 ; gain = 85.5042default:default
9
-Phase 1 Build RT Design | Checksum: 52a08b28
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1697.512 ; gain = 85.5042default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
8
,Phase 2.1 Create Timer | Checksum: 52a08b28
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1697.516 ; gain = 85.5082default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: 52a08b28
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1707.512 ; gain = 95.5042default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
@
4Phase 2.3 Special Net Routing | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
D
8Phase 2.4 Local Clock Net Routing | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
g

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101
w

Phase %s%s
101*constraints2
2.5.1 2default:default2/
Update timing with NCN CRPR2default:defaultZ18-101
l

Phase %s%s
101*constraints2
2.5.1.1 2default:default2"
Hold Budgeting2default:defaultZ18-101
?
3Phase 2.5.1.1 Hold Budgeting | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:20 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
J
>Phase 2.5.1 Update timing with NCN CRPR | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:20 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
:
.Phase 2.5 Update Timing | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:20 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.38  | TNS=-396   | WHS=-0.197 | THS=-411   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
6
*Phase 2.6 Budgeting | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:37 ; elapsed = 00:00:22 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
@
4Phase 2 Router Initialization | Checksum: 10273ef9c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:37 ; elapsed = 00:00:22 . Memory (MB): peak = 1734.699 ; gain = 122.6912default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 1d0b81b43
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:26 . Memory (MB): peak = 1759.887 ; gain = 147.8792default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
>
2Phase 4.1.1 Remove Overlaps | Checksum: 19413d224
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:57 ; elapsed = 00:00:31 . Memory (MB): peak = 1759.887 ; gain = 147.8792default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.1.2 Update Timing | Checksum: 19413d224
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:32 . Memory (MB): peak = 1759.887 ; gain = 147.8792default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.83  | TNS=-677   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.1.3 collectNewHoldAndFix | Checksum: 133249d51
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:32 . Memory (MB): peak = 1759.887 ; gain = 147.8792default:default
m

Phase %s%s
101*constraints2
4.1.4 2default:default2%
GlobIterForTiming2default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.4.1 2default:default2!
Update Timing2default:defaultZ18-101
=
1Phase 4.1.4.1 Update Timing | Checksum: 58d2e32d
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:32 . Memory (MB): peak = 1759.887 ; gain = 147.8792default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
>
2Phase 4.1.4.2 Fast Budgeting | Checksum: 58d2e32d
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:33 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
@
4Phase 4.1.4 GlobIterForTiming | Checksum: 158a181ed
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:33 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 158a181ed
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:33 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
l

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.2.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
‚
ûThe following overlapped %s exist in the design and there is low overall congestion. 
Resolution: Check for routing resource conflicts on the identified nets or significant localized congestion using the Route Congestion Metrics in the Device View. %s125*route2
node2default:default2Ñ
¼
1. INT_L_X42Y82/IMUX_L27
Overlapping nets: 2
	testDMA_i/processing_system7_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/sel1_out[2]
	testDMA_i/processing_system7_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/sel1_out[1]
2default:defaultZ35-325
>
2Phase 4.2.1 Remove Overlaps | Checksum: 120c1e85c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:36 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.2 Update Timing | Checksum: 120c1e85c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:36 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-2.05  | TNS=-671   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
?
3Phase 4.2 Global Iteration 1 | Checksum: 179d29b86
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:36 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 179d29b86
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:36 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Delay CleanUp2default:defaultZ18-101
g

Phase %s%s
101*constraints2
5.1 2default:default2!
Update Timing2default:defaultZ18-101
:
.Phase 5.1 Update Timing | Checksum: 179d29b86
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:08 ; elapsed = 00:00:37 . Memory (MB): peak = 1761.395 ; gain = 149.3872default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.72  | TNS=-607   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: 650dc5d2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:10 ; elapsed = 00:00:38 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
e

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101
l

Phase %s%s
101*constraints2
6.1 2default:default2&
Full Hold Analysis2default:defaultZ18-101
i

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 6.1.1 Update Timing | Checksum: 650dc5d2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:15 ; elapsed = 00:00:41 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.61  | TNS=-567   | WHS=0.008  | THS=0      |
2default:defaultZ35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 650dc5d2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:15 ; elapsed = 00:00:41 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
7
+Phase 6 Post Hold Fix | Checksum: 650dc5d2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:15 ; elapsed = 00:00:41 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: 650dc5d2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:15 ; elapsed = 00:00:41 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 2f9efe49
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:17 ; elapsed = 00:00:43 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101
‚
Post Routing Timing Summary %s
20*route2K
7| WNS=-1.601 | TNS=-562.655| WHS=0.010  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
ô
ÜTNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
<
0Phase 9 Post Router Timing | Checksum: 2f9efe49
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:00:46 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 2f9efe49
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:00:46 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:00:46 . Memory (MB): peak = 1781.395 ; gain = 169.3872default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
352default:default2
352default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:272default:default2
00:00:472default:default2
1781.3952default:default2
169.3872default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
…
#The results of DRC are in file %s.
168*coretcl2Ä
V/home/vladimir/Z/zedboard/final_dma/testDMA.runs/impl_1/testDMA_wrapper_drc_routed.rptV/home/vladimir/Z/zedboard/final_dma/testDMA.runs/impl_1/testDMA_wrapper_drc_routed.rpt2default:default8Z2-168
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
û
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:332default:default2
00:00:182default:default2
1781.3952default:default2
0.0002default:defaultZ17-268
€
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
‚
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:022default:default2
1781.3982default:default2
0.0002default:defaultZ17-268


End Record