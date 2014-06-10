
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
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 1c05a74c5
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:27 ; elapsed = 00:00:16 . Memory (MB): peak = 1893.195 ; gain = 40.8792default:default
9
-Phase 1 Build RT Design | Checksum: 91ceb8ed
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:17 . Memory (MB): peak = 1897.711 ; gain = 45.3952default:default
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
,Phase 2.1 Create Timer | Checksum: 91ceb8ed
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:17 . Memory (MB): peak = 1897.715 ; gain = 45.3982default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: 91ceb8ed
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:18 . Memory (MB): peak = 1903.711 ; gain = 51.3952default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: d664b5cf
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:18 . Memory (MB): peak = 1937.086 ; gain = 84.7702default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: d664b5cf
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:18 . Memory (MB): peak = 1937.086 ; gain = 84.7702default:default
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: d664b5cf
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:55 ; elapsed = 00:00:30 . Memory (MB): peak = 1955.836 ; gain = 103.5202default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: d664b5cf
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:30 . Memory (MB): peak = 1955.836 ; gain = 103.5202default:default
9
-Phase 2.5 Update Timing | Checksum: d664b5cf
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:30 . Memory (MB): peak = 1955.836 ; gain = 103.5202default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.434 | TNS=-48.3  | WHS=-0.24  | THS=-970   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: d664b5cf
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:36 . Memory (MB): peak = 1965.625 ; gain = 113.3092default:default
?
3Phase 2 Router Initialization | Checksum: d664b5cf
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:36 . Memory (MB): peak = 1965.625 ; gain = 113.3092default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 1247fc1f3
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:41 ; elapsed = 00:00:47 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
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
1Phase 4.1.1 Remove Overlaps | Checksum: 75d960fd
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:41 ; elapsed = 00:01:38 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: 75d960fd
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:47 ; elapsed = 00:01:40 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.844 | TNS=-285   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.1.3 collectNewHoldAndFix | Checksum: 185ee5858
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:48 ; elapsed = 00:01:41 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
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
2Phase 4.1.4.1 Update Timing | Checksum: 11f1f7907
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:49 ; elapsed = 00:01:42 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.1.4.2 Fast Budgeting | Checksum: 11f1f7907
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:51 ; elapsed = 00:01:43 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
@
4Phase 4.1.4 GlobIterForTiming | Checksum: 18e65b702
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:51 ; elapsed = 00:01:44 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 18e65b702
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:03:51 ; elapsed = 00:01:44 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
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
1Phase 4.2.1 Remove Overlaps | Checksum: 715b514c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:04 ; elapsed = 00:01:53 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: 715b514c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:07 ; elapsed = 00:01:54 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-1.32  | TNS=-216   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
?
3Phase 4.2 Global Iteration 1 | Checksum: 10b04d4f0
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:07 ; elapsed = 00:01:54 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 10b04d4f0
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:07 ; elapsed = 00:01:54 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
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
.Phase 5.1 Update Timing | Checksum: 10b04d4f0
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:13 ; elapsed = 00:01:56 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.835 | TNS=-261   | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: d6f7255f
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:14 ; elapsed = 00:01:57 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
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
/Phase 6.1.1 Update Timing | Checksum: d6f7255f
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:22 ; elapsed = 00:02:00 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-0.818 | TNS=-241   | WHS=0.011  | THS=0      |
2default:defaultZ35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: d6f7255f
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:22 ; elapsed = 00:02:00 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
7
+Phase 6 Post Hold Fix | Checksum: d6f7255f
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:22 ; elapsed = 00:02:00 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: d6f7255f
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:22 ; elapsed = 00:02:01 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 83875bc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:28 ; elapsed = 00:02:06 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101
‚
Post Routing Timing Summary %s
20*route2K
7| WNS=-0.811 | TNS=-237.472| WHS=0.012  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
ô
ÜTNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
<
0Phase 9 Post Router Timing | Checksum: 83875bc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:52 ; elapsed = 00:02:15 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 83875bc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:52 ; elapsed = 00:02:15 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:04:52 ; elapsed = 00:02:15 . Memory (MB): peak = 2051.125 ; gain = 198.8092default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
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
00:04:542default:default2
00:02:172default:default2
2051.1252default:default2
198.8092default:defaultZ17-268
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
00:01:312default:default2
00:00:522default:default2
2051.1252default:default2
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
2084.1252default:default2
33.0002default:defaultZ17-268
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
2095.1252default:default2
10.9962default:defaultZ17-268
€
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:082default:default2
2095.1292default:default2
11.0042default:defaultZ17-268


End Record