
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
K
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 12128c17c
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:26 ; elapsed = 00:00:15 . Memory (MB): peak = 1883.000 ; gain = 41.8632default:default
9
-Phase 1 Build RT Design | Checksum: 7f0ebb0e
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:27 ; elapsed = 00:00:16 . Memory (MB): peak = 1887.516 ; gain = 46.3792default:default
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
,Phase 2.1 Create Timer | Checksum: 7f0ebb0e
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:27 ; elapsed = 00:00:16 . Memory (MB): peak = 1887.520 ; gain = 46.3832default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: 7f0ebb0e
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:17 . Memory (MB): peak = 1891.516 ; gain = 50.3792default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: e8186d30
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:17 . Memory (MB): peak = 1928.078 ; gain = 86.9412default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: e8186d30
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:17 . Memory (MB): peak = 1928.078 ; gain = 86.9412default:default
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
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: e8186d30
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:54 ; elapsed = 00:00:28 . Memory (MB): peak = 1946.828 ; gain = 105.6912default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: e8186d30
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:54 ; elapsed = 00:00:28 . Memory (MB): peak = 1946.828 ; gain = 105.6912default:default
9
-Phase 2.5 Update Timing | Checksum: e8186d30
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:54 ; elapsed = 00:00:28 . Memory (MB): peak = 1946.828 ; gain = 105.6912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.261 | TNS=-3     | WHS=-0.242 | THS=-977   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: e8186d30
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:34 . Memory (MB): peak = 1950.828 ; gain = 109.6912default:default
?
3Phase 2 Router Initialization | Checksum: e8186d30
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:34 . Memory (MB): peak = 1950.828 ; gain = 109.6912default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
9
-Phase 3 Initial Routing | Checksum: cd7689c3
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
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
=
1Phase 4.1.1 Remove Overlaps | Checksum: 7bae6db1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:47 ; elapsed = 00:01:41 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: 7bae6db1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:53 ; elapsed = 00:01:44 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.16  | TNS=-135   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: 7504315a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:53 ; elapsed = 00:01:44 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
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
>
2Phase 4.1.4.1 Update Timing | Checksum: 122b98565
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:54 ; elapsed = 00:01:45 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.1.4.2 Fast Budgeting | Checksum: 122b98565
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:56 ; elapsed = 00:01:46 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
@
4Phase 4.1.4 GlobIterForTiming | Checksum: 122f918e1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:57 ; elapsed = 00:01:47 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 122f918e1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:57 ; elapsed = 00:01:47 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
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
=
1Phase 4.2.1 Remove Overlaps | Checksum: 8a1a2f41
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:21 ; elapsed = 00:02:01 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: 8a1a2f41
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:24 ; elapsed = 00:02:03 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.12  | TNS=-109   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.2.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: 8a1a2f41
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:24 ; elapsed = 00:02:03 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
m

Phase %s%s
101*constraints2
4.2.4 2default:default2%
GlobIterForTiming2default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.2.4.1 2default:default2!
Update Timing2default:defaultZ18-101
>
2Phase 4.2.4.1 Update Timing | Checksum: 12eeed030
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:25 ; elapsed = 00:02:04 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
l

Phase %s%s
101*constraints2
4.2.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.2.4.2 Fast Budgeting | Checksum: 12eeed030
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:27 ; elapsed = 00:02:06 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
@
4Phase 4.2.4 GlobIterForTiming | Checksum: 1141bfafe
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:28 ; elapsed = 00:02:06 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
?
3Phase 4.2 Global Iteration 1 | Checksum: 1141bfafe
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:28 ; elapsed = 00:02:07 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
l

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.3.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
>
2Phase 4.3.1 Remove Overlaps | Checksum: 17b11e1d8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:41 ; elapsed = 00:02:15 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
i

Phase %s%s
101*constraints2
4.3.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.3.2 Update Timing | Checksum: 17b11e1d8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:44 ; elapsed = 00:02:16 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.784 | TNS=-90.8  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.3.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.3.3 collectNewHoldAndFix | Checksum: 17b11e1d8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:44 ; elapsed = 00:02:16 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
m

Phase %s%s
101*constraints2
4.3.4 2default:default2%
GlobIterForTiming2default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.3.4.1 2default:default2!
Update Timing2default:defaultZ18-101
>
2Phase 4.3.4.1 Update Timing | Checksum: 162af1ae2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:45 ; elapsed = 00:02:17 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
l

Phase %s%s
101*constraints2
4.3.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.3.4.2 Fast Budgeting | Checksum: 162af1ae2
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:47 ; elapsed = 00:02:19 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
?
3Phase 4.3.4 GlobIterForTiming | Checksum: 857d99ac
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:48 ; elapsed = 00:02:20 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
>
2Phase 4.3 Global Iteration 2 | Checksum: 857d99ac
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:48 ; elapsed = 00:02:20 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
l

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.4.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
Ì
ûThe following overlapped %s exist in the design and there is low overall congestion. 
Resolution: Check for routing resource conflicts on the identified nets or significant localized congestion using the Route Congestion Metrics in the Device View. %s125*route2
node2default:default2›
†
1. INT_R_X31Y108/IMUX17
Overlapping nets: 2
	testDMA_i/processing_system7_0_axi_periph/s00_couplers/auto_us/inst/m_axi_wvalid
	testDMA_i/processing_system7_0_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/sel1_out[1]
2default:defaultZ35-325
>
2Phase 4.4.1 Remove Overlaps | Checksum: 12d956181
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:59 ; elapsed = 00:02:28 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
i

Phase %s%s
101*constraints2
4.4.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.4.2 Update Timing | Checksum: 12d956181
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:01 ; elapsed = 00:02:29 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.834 | TNS=-113   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
?
3Phase 4.4 Global Iteration 3 | Checksum: 1b3dd4304
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:01 ; elapsed = 00:02:29 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 1b3dd4304
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:01 ; elapsed = 00:02:29 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
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
.Phase 5.1 Update Timing | Checksum: 1b3dd4304
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:06 ; elapsed = 00:02:31 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.753 | TNS=-79.3  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
8
,Phase 5 Delay CleanUp | Checksum: 14221f4f1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:07 ; elapsed = 00:02:32 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
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
<
0Phase 6.1.1 Update Timing | Checksum: 14221f4f1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:14 ; elapsed = 00:02:35 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.728 | TNS=-72.5  | WHS=0.008  | THS=0      |
2default:defaultZ35-57
?
3Phase 6.1 Full Hold Analysis | Checksum: 14221f4f1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:15 ; elapsed = 00:02:35 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
8
,Phase 6 Post Hold Fix | Checksum: 14221f4f1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:15 ; elapsed = 00:02:35 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
@
4Phase 7 Verifying routed nets | Checksum: 14221f4f1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:15 ; elapsed = 00:02:36 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
<
0Phase 8 Depositing Routes | Checksum: 1779f5aea
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:21 ; elapsed = 00:02:42 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101

Post Routing Timing Summary %s
20*route2J
6| WNS=-0.750 | TNS=-73.524| WHS=0.009  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
ô
ÜTNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
=
1Phase 9 Post Router Timing | Checksum: 1779f5aea
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:45 ; elapsed = 00:02:51 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
4
Router Completed Successfully
16*routeZ35-16
4
(Ending Route Task | Checksum: 1779f5aea
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:45 ; elapsed = 00:02:51 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:05:45 ; elapsed = 00:02:51 . Memory (MB): peak = 2031.328 ; gain = 190.1912default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
602default:default2
372default:default2
362default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:05:482default:default2
00:02:532default:default2
2031.3282default:default2
190.1912default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
…
#The results of DRC are in file %s.
168*coretcl2Ä
V/home/vladimir/Z/zedboard/final_dma/testDMA.runs/impl_1/testDMA_wrapper_drc_routed.rptV/home/vladimir/Z/zedboard/final_dma/testDMA.runs/impl_1/testDMA_wrapper_drc_routed.rpt2default:default8Z2-168
ù
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:122default:default2
00:00:052default:default2
2031.3282default:default2
0.0002default:defaultZ17-268
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
00:01:332default:default2
00:00:532default:default2
2031.3282default:default2
0.0002default:defaultZ17-268
€
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191
…
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:082default:default2
00:00:062default:default2
2075.3282default:default2
44.0002default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
ƒ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:052default:default2
00:00:052default:default2
2087.3282default:default2
11.9962default:defaultZ17-268
€
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:082default:default2
2087.3322default:default2
12.0042default:defaultZ17-268


End Record