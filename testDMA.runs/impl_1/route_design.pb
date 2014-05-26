
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
ö
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
ä
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
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 12fc33770
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 1697.883 ; gain = 86.5042default:default
:
.Phase 1 Build RT Design | Checksum: 1355fa0d9
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1697.883 ; gain = 86.5042default:default
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
9
-Phase 2.1 Create Timer | Checksum: 1355fa0d9
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1697.887 ; gain = 86.5082default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
<
0Phase 2.2 Restore Routing | Checksum: 1355fa0d9
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1705.883 ; gain = 94.5042default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:22 ; elapsed = 00:00:16 . Memory (MB): peak = 1732.070 ; gain = 120.6912default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:22 ; elapsed = 00:00:16 . Memory (MB): peak = 1732.070 ; gain = 120.6912default:default
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1738.320 ; gain = 126.9412default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1738.320 ; gain = 126.9412default:default
9
-Phase 2.5 Update Timing | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1738.320 ; gain = 126.9412default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.16  | TNS=-1.13  | WHS=-0.222 | THS=-398   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:36 ; elapsed = 00:00:22 . Memory (MB): peak = 1738.320 ; gain = 126.9412default:default
?
3Phase 2 Router Initialization | Checksum: b8f222e8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:36 ; elapsed = 00:00:22 . Memory (MB): peak = 1738.320 ; gain = 126.9412default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 107ee2a32
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 1760.320 ; gain = 148.9412default:default
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
2Phase 4.1.1 Remove Overlaps | Checksum: 1525fb357
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:32 . Memory (MB): peak = 1760.320 ; gain = 148.9412default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.1.2 Update Timing | Checksum: 1525fb357
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:33 . Memory (MB): peak = 1760.320 ; gain = 148.9412default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.506 | TNS=-76.6  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.1.3 collectNewHoldAndFix | Checksum: 14c9b8518
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:37 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
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
2Phase 4.1.4.1 Update Timing | Checksum: 163b1b9d3
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:37 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.1.4.2 Fast Budgeting | Checksum: 163b1b9d3
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:38 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
@
4Phase 4.1.4 GlobIterForTiming | Checksum: 1bdeb439d
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:38 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 1bdeb439d
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:38 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
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
>
2Phase 4.2.1 Remove Overlaps | Checksum: 1bf536add
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:11 ; elapsed = 00:00:40 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.2 Update Timing | Checksum: 1bf536add
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:11 ; elapsed = 00:00:40 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.639 | TNS=-122   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
?
3Phase 4.2 Global Iteration 1 | Checksum: 1525fb357
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:11 ; elapsed = 00:00:40 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 1525fb357
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:11 ; elapsed = 00:00:40 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
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
.Phase 5.1 Update Timing | Checksum: 1525fb357
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:14 ; elapsed = 00:00:42 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.454 | TNS=-58.8  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: d353ba31
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:15 ; elapsed = 00:00:42 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
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
/Phase 6.1.1 Update Timing | Checksum: d353ba31
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:00:44 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.444 | TNS=-51.6  | WHS=-0.005 | THS=-0.005 |
2default:defaultZ35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: d353ba31
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:00:44 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
7
+Phase 6 Post Hold Fix | Checksum: ca9b6770
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:00:44 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: ca9b6770
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:00:44 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 761dc7c0
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:21 ; elapsed = 00:00:46 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101
Å
Post Routing Timing Summary %s
20*route2J
6| WNS=-0.436 | TNS=-49.780| WHS=0.051  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
Ù
‹TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
<
0Phase 9 Post Router Timing | Checksum: 761dc7c0
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:00:50 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 761dc7c0
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:00:50 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
à

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:00:50 . Memory (MB): peak = 1782.320 ; gain = 170.9412default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
ø
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
352default:default2
352default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:312default:default2
00:00:512default:default2
1782.3202default:default2
170.9412default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
Ö
#The results of DRC are in file %s.
168*coretcl2ƒ
V/home/vladimir/Z/zedboard/final_dma/testDMA.runs/impl_1/testDMA_wrapper_drc_routed.rptV/home/vladimir/Z/zedboard/final_dma/testDMA.runs/impl_1/testDMA_wrapper_drc_routed.rpt2default:default8Z2-168
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
˚
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:332default:default2
00:00:182default:default2
1782.3202default:default2
0.0002default:defaultZ17-268
Ä
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
Ç
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:022default:default2
1782.3242default:default2
0.0002default:defaultZ17-268


End Record