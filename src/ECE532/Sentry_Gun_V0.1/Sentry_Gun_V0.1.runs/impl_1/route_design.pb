
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�	
Rule violation (%s) %s - %s
20*drc2
PLCK-122default:default2'
Clock Placer Checks2default:default2�
�Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	OV7670_PCLK_IBUF_inst (IBUF.O) is locked to F16
	OV7670_PCLK_IBUF_BUFG_inst (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y2
2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus SW[15:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS18 (SW[9], SW[8]); LVCMOS33 (SW[15], SW[14], SW[13], SW[12], SW[11], SW[10], SW[7], SW[6], SW[5], SW[4], SW[3], SW[2], SW[1], SW[0]); 2default:defaultZ23-20h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 1171f5cfb
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:51 ; elapsed = 00:00:40 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 1171f5cfb
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:41 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1171f5cfb
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:42 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1171f5cfb
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:42 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 14a846638
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=0.583  | TNS=0.000  | WHS=-1.588 | THS=-434.012|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 1fedfd9d8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:10 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 17eefc57f
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:07:21 ; elapsed = 00:04:04 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.1.1 Update Timing | Checksum: 1794d507f
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:14:52 ; elapsed = 00:08:08 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.343  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 15b9f2950
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:14:53 ; elapsed = 00:08:09 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 4.2.1 Update Timing | Checksum: e8b8417b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:52 ; elapsed = 00:08:50 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.343  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1c092c289
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:53 ; elapsed = 00:08:51 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 1c092c289
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:53 ; elapsed = 00:08:51 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 22e7f180e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:57 ; elapsed = 00:08:53 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.343  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 22e7f180e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:57 ; elapsed = 00:08:53 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 22e7f180e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:57 ; elapsed = 00:08:54 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 22e7f180e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:15:58 ; elapsed = 00:08:54 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 26efa6a5d
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:04 ; elapsed = 00:08:57 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.343  | TNS=0.000  | WHS=0.015  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 288fd4332
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:04 ; elapsed = 00:08:58 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 288fd4332
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:04 ; elapsed = 00:08:58 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 2866c6f0a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:05 ; elapsed = 00:08:58 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 2866c6f0a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:05 ; elapsed = 00:08:58 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 24215eeb5
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:09 ; elapsed = 00:09:03 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.343  | TNS=0.000  | WHS=0.015  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 24215eeb5
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:09 ; elapsed = 00:09:03 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
=
Router Completed Successfully
16*routeZ35-16h px� 
�

%s
*constraints2o
[Time (s): cpu = 00:16:09 ; elapsed = 00:09:03 . Memory (MB): peak = 1668.922 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612default:default2
402default:default2
62default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:16:132default:default2
00:09:062default:default2
1668.9222default:default2
0.0002default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:182default:default2
00:00:072default:default2
1668.9222default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:222default:default2
00:00:102default:default2
1668.9222default:default2
0.0002default:defaultZ17-268h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
\D:/Yufanfan/ECE532/Sentry_Gun_V0.1/Sentry_Gun_V0.1.runs/impl_1/testie_wrapper_drc_routed.rpt\D:/Yufanfan/ECE532/Sentry_Gun_V0.1/Sentry_Gun_V0.1.runs/impl_1/testie_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:142default:default2
00:00:082default:default2
1668.9222default:default2
0.0002default:defaultZ17-268h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:322default:default2
00:00:192default:default2
1668.9222default:default2
0.0002default:defaultZ17-268h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:162default:default2
00:00:092default:default2
1668.9222default:default2
0.0002default:defaultZ17-268h px� 


End Record