
#ifndef IMGARRAY_AXI_H
#define IMGARRAY_AXI_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define IMGARRAY_AXI_S00_AXI_SLV_REG0_OFFSET 0
#define IMGARRAY_AXI_S00_AXI_SLV_REG1_OFFSET 4
#define IMGARRAY_AXI_S00_AXI_SLV_REG2_OFFSET 8
#define IMGARRAY_AXI_S00_AXI_SLV_REG3_OFFSET 12
#define IMGARRAY_AXI_S00_AXI_SLV_REG4_OFFSET 16
#define IMGARRAY_AXI_S00_AXI_SLV_REG5_OFFSET 20
#define IMGARRAY_AXI_S00_AXI_SLV_REG6_OFFSET 24
#define IMGARRAY_AXI_S00_AXI_SLV_REG7_OFFSET 28
#define IMGARRAY_AXI_S00_AXI_SLV_REG8_OFFSET 32
#define IMGARRAY_AXI_S00_AXI_SLV_REG9_OFFSET 36
#define IMGARRAY_AXI_S00_AXI_SLV_REG10_OFFSET 40
#define IMGARRAY_AXI_S00_AXI_SLV_REG11_OFFSET 44
#define IMGARRAY_AXI_S00_AXI_SLV_REG12_OFFSET 48
#define IMGARRAY_AXI_S00_AXI_SLV_REG13_OFFSET 52
#define IMGARRAY_AXI_S00_AXI_SLV_REG14_OFFSET 56
#define IMGARRAY_AXI_S00_AXI_SLV_REG15_OFFSET 60
#define IMGARRAY_AXI_S00_AXI_SLV_REG16_OFFSET 64
#define IMGARRAY_AXI_S00_AXI_SLV_REG17_OFFSET 68
#define IMGARRAY_AXI_S00_AXI_SLV_REG18_OFFSET 72
#define IMGARRAY_AXI_S00_AXI_SLV_REG19_OFFSET 76
#define IMGARRAY_AXI_S00_AXI_SLV_REG20_OFFSET 80
#define IMGARRAY_AXI_S00_AXI_SLV_REG21_OFFSET 84
#define IMGARRAY_AXI_S00_AXI_SLV_REG22_OFFSET 88
#define IMGARRAY_AXI_S00_AXI_SLV_REG23_OFFSET 92
#define IMGARRAY_AXI_S00_AXI_SLV_REG24_OFFSET 96
#define IMGARRAY_AXI_S00_AXI_SLV_REG25_OFFSET 100
#define IMGARRAY_AXI_S00_AXI_SLV_REG26_OFFSET 104
#define IMGARRAY_AXI_S00_AXI_SLV_REG27_OFFSET 108
#define IMGARRAY_AXI_S00_AXI_SLV_REG28_OFFSET 112
#define IMGARRAY_AXI_S00_AXI_SLV_REG29_OFFSET 116
#define IMGARRAY_AXI_S00_AXI_SLV_REG30_OFFSET 120
#define IMGARRAY_AXI_S00_AXI_SLV_REG31_OFFSET 124
#define IMGARRAY_AXI_S00_AXI_SLV_REG32_OFFSET 128
#define IMGARRAY_AXI_S00_AXI_SLV_REG33_OFFSET 132
#define IMGARRAY_AXI_S00_AXI_SLV_REG34_OFFSET 136
#define IMGARRAY_AXI_S00_AXI_SLV_REG35_OFFSET 140
#define IMGARRAY_AXI_S00_AXI_SLV_REG36_OFFSET 144
#define IMGARRAY_AXI_S00_AXI_SLV_REG37_OFFSET 148
#define IMGARRAY_AXI_S00_AXI_SLV_REG38_OFFSET 152
#define IMGARRAY_AXI_S00_AXI_SLV_REG39_OFFSET 156
#define IMGARRAY_AXI_S00_AXI_SLV_REG40_OFFSET 160
#define IMGARRAY_AXI_S00_AXI_SLV_REG41_OFFSET 164
#define IMGARRAY_AXI_S00_AXI_SLV_REG42_OFFSET 168
#define IMGARRAY_AXI_S00_AXI_SLV_REG43_OFFSET 172
#define IMGARRAY_AXI_S00_AXI_SLV_REG44_OFFSET 176
#define IMGARRAY_AXI_S00_AXI_SLV_REG45_OFFSET 180
#define IMGARRAY_AXI_S00_AXI_SLV_REG46_OFFSET 184
#define IMGARRAY_AXI_S00_AXI_SLV_REG47_OFFSET 188
#define IMGARRAY_AXI_S00_AXI_SLV_REG48_OFFSET 192
#define IMGARRAY_AXI_S00_AXI_SLV_REG49_OFFSET 196
#define IMGARRAY_AXI_S00_AXI_SLV_REG50_OFFSET 200
#define IMGARRAY_AXI_S00_AXI_SLV_REG51_OFFSET 204
#define IMGARRAY_AXI_S00_AXI_SLV_REG52_OFFSET 208
#define IMGARRAY_AXI_S00_AXI_SLV_REG53_OFFSET 212
#define IMGARRAY_AXI_S00_AXI_SLV_REG54_OFFSET 216
#define IMGARRAY_AXI_S00_AXI_SLV_REG55_OFFSET 220
#define IMGARRAY_AXI_S00_AXI_SLV_REG56_OFFSET 224
#define IMGARRAY_AXI_S00_AXI_SLV_REG57_OFFSET 228
#define IMGARRAY_AXI_S00_AXI_SLV_REG58_OFFSET 232
#define IMGARRAY_AXI_S00_AXI_SLV_REG59_OFFSET 236
#define IMGARRAY_AXI_S00_AXI_SLV_REG60_OFFSET 240
#define IMGARRAY_AXI_S00_AXI_SLV_REG61_OFFSET 244
#define IMGARRAY_AXI_S00_AXI_SLV_REG62_OFFSET 248
#define IMGARRAY_AXI_S00_AXI_SLV_REG63_OFFSET 252
#define IMGARRAY_AXI_S00_AXI_SLV_REG64_OFFSET 256
#define IMGARRAY_AXI_S00_AXI_SLV_REG65_OFFSET 260
#define IMGARRAY_AXI_S00_AXI_SLV_REG66_OFFSET 264
#define IMGARRAY_AXI_S00_AXI_SLV_REG67_OFFSET 268
#define IMGARRAY_AXI_S00_AXI_SLV_REG68_OFFSET 272
#define IMGARRAY_AXI_S00_AXI_SLV_REG69_OFFSET 276
#define IMGARRAY_AXI_S00_AXI_SLV_REG70_OFFSET 280
#define IMGARRAY_AXI_S00_AXI_SLV_REG71_OFFSET 284
#define IMGARRAY_AXI_S00_AXI_SLV_REG72_OFFSET 288
#define IMGARRAY_AXI_S00_AXI_SLV_REG73_OFFSET 292
#define IMGARRAY_AXI_S00_AXI_SLV_REG74_OFFSET 296
#define IMGARRAY_AXI_S00_AXI_SLV_REG75_OFFSET 300
#define IMGARRAY_AXI_S00_AXI_SLV_REG76_OFFSET 304
#define IMGARRAY_AXI_S00_AXI_SLV_REG77_OFFSET 308
#define IMGARRAY_AXI_S00_AXI_SLV_REG78_OFFSET 312
#define IMGARRAY_AXI_S00_AXI_SLV_REG79_OFFSET 316
#define IMGARRAY_AXI_S00_AXI_SLV_REG80_OFFSET 320
#define IMGARRAY_AXI_S00_AXI_SLV_REG81_OFFSET 324
#define IMGARRAY_AXI_S00_AXI_SLV_REG82_OFFSET 328
#define IMGARRAY_AXI_S00_AXI_SLV_REG83_OFFSET 332
#define IMGARRAY_AXI_S00_AXI_SLV_REG84_OFFSET 336
#define IMGARRAY_AXI_S00_AXI_SLV_REG85_OFFSET 340
#define IMGARRAY_AXI_S00_AXI_SLV_REG86_OFFSET 344
#define IMGARRAY_AXI_S00_AXI_SLV_REG87_OFFSET 348
#define IMGARRAY_AXI_S00_AXI_SLV_REG88_OFFSET 352
#define IMGARRAY_AXI_S00_AXI_SLV_REG89_OFFSET 356
#define IMGARRAY_AXI_S00_AXI_SLV_REG90_OFFSET 360
#define IMGARRAY_AXI_S00_AXI_SLV_REG91_OFFSET 364
#define IMGARRAY_AXI_S00_AXI_SLV_REG92_OFFSET 368
#define IMGARRAY_AXI_S00_AXI_SLV_REG93_OFFSET 372
#define IMGARRAY_AXI_S00_AXI_SLV_REG94_OFFSET 376
#define IMGARRAY_AXI_S00_AXI_SLV_REG95_OFFSET 380
#define IMGARRAY_AXI_S00_AXI_SLV_REG96_OFFSET 384
#define IMGARRAY_AXI_S00_AXI_SLV_REG97_OFFSET 388
#define IMGARRAY_AXI_S00_AXI_SLV_REG98_OFFSET 392
#define IMGARRAY_AXI_S00_AXI_SLV_REG99_OFFSET 396
#define IMGARRAY_AXI_S00_AXI_SLV_REG100_OFFSET 400
#define IMGARRAY_AXI_S00_AXI_SLV_REG101_OFFSET 404
#define IMGARRAY_AXI_S00_AXI_SLV_REG102_OFFSET 408
#define IMGARRAY_AXI_S00_AXI_SLV_REG103_OFFSET 412
#define IMGARRAY_AXI_S00_AXI_SLV_REG104_OFFSET 416
#define IMGARRAY_AXI_S00_AXI_SLV_REG105_OFFSET 420
#define IMGARRAY_AXI_S00_AXI_SLV_REG106_OFFSET 424
#define IMGARRAY_AXI_S00_AXI_SLV_REG107_OFFSET 428
#define IMGARRAY_AXI_S00_AXI_SLV_REG108_OFFSET 432
#define IMGARRAY_AXI_S00_AXI_SLV_REG109_OFFSET 436
#define IMGARRAY_AXI_S00_AXI_SLV_REG110_OFFSET 440
#define IMGARRAY_AXI_S00_AXI_SLV_REG111_OFFSET 444
#define IMGARRAY_AXI_S00_AXI_SLV_REG112_OFFSET 448
#define IMGARRAY_AXI_S00_AXI_SLV_REG113_OFFSET 452
#define IMGARRAY_AXI_S00_AXI_SLV_REG114_OFFSET 456
#define IMGARRAY_AXI_S00_AXI_SLV_REG115_OFFSET 460
#define IMGARRAY_AXI_S00_AXI_SLV_REG116_OFFSET 464
#define IMGARRAY_AXI_S00_AXI_SLV_REG117_OFFSET 468
#define IMGARRAY_AXI_S00_AXI_SLV_REG118_OFFSET 472
#define IMGARRAY_AXI_S00_AXI_SLV_REG119_OFFSET 476
#define IMGARRAY_AXI_S00_AXI_SLV_REG120_OFFSET 480
#define IMGARRAY_AXI_S00_AXI_SLV_REG121_OFFSET 484
#define IMGARRAY_AXI_S00_AXI_SLV_REG122_OFFSET 488
#define IMGARRAY_AXI_S00_AXI_SLV_REG123_OFFSET 492
#define IMGARRAY_AXI_S00_AXI_SLV_REG124_OFFSET 496
#define IMGARRAY_AXI_S00_AXI_SLV_REG125_OFFSET 500
#define IMGARRAY_AXI_S00_AXI_SLV_REG126_OFFSET 504
#define IMGARRAY_AXI_S00_AXI_SLV_REG127_OFFSET 508
#define IMGARRAY_AXI_S00_AXI_SLV_REG128_OFFSET 512
#define IMGARRAY_AXI_S00_AXI_SLV_REG129_OFFSET 516
#define IMGARRAY_AXI_S00_AXI_SLV_REG130_OFFSET 520
#define IMGARRAY_AXI_S00_AXI_SLV_REG131_OFFSET 524
#define IMGARRAY_AXI_S00_AXI_SLV_REG132_OFFSET 528
#define IMGARRAY_AXI_S00_AXI_SLV_REG133_OFFSET 532
#define IMGARRAY_AXI_S00_AXI_SLV_REG134_OFFSET 536
#define IMGARRAY_AXI_S00_AXI_SLV_REG135_OFFSET 540
#define IMGARRAY_AXI_S00_AXI_SLV_REG136_OFFSET 544
#define IMGARRAY_AXI_S00_AXI_SLV_REG137_OFFSET 548
#define IMGARRAY_AXI_S00_AXI_SLV_REG138_OFFSET 552
#define IMGARRAY_AXI_S00_AXI_SLV_REG139_OFFSET 556
#define IMGARRAY_AXI_S00_AXI_SLV_REG140_OFFSET 560
#define IMGARRAY_AXI_S00_AXI_SLV_REG141_OFFSET 564
#define IMGARRAY_AXI_S00_AXI_SLV_REG142_OFFSET 568
#define IMGARRAY_AXI_S00_AXI_SLV_REG143_OFFSET 572
#define IMGARRAY_AXI_S00_AXI_SLV_REG144_OFFSET 576
#define IMGARRAY_AXI_S00_AXI_SLV_REG145_OFFSET 580
#define IMGARRAY_AXI_S00_AXI_SLV_REG146_OFFSET 584
#define IMGARRAY_AXI_S00_AXI_SLV_REG147_OFFSET 588
#define IMGARRAY_AXI_S00_AXI_SLV_REG148_OFFSET 592
#define IMGARRAY_AXI_S00_AXI_SLV_REG149_OFFSET 596
#define IMGARRAY_AXI_S00_AXI_SLV_REG150_OFFSET 600
#define IMGARRAY_AXI_S00_AXI_SLV_REG151_OFFSET 604
#define IMGARRAY_AXI_S00_AXI_SLV_REG152_OFFSET 608
#define IMGARRAY_AXI_S00_AXI_SLV_REG153_OFFSET 612
#define IMGARRAY_AXI_S00_AXI_SLV_REG154_OFFSET 616
#define IMGARRAY_AXI_S00_AXI_SLV_REG155_OFFSET 620
#define IMGARRAY_AXI_S00_AXI_SLV_REG156_OFFSET 624
#define IMGARRAY_AXI_S00_AXI_SLV_REG157_OFFSET 628
#define IMGARRAY_AXI_S00_AXI_SLV_REG158_OFFSET 632
#define IMGARRAY_AXI_S00_AXI_SLV_REG159_OFFSET 636
#define IMGARRAY_AXI_S00_AXI_SLV_REG160_OFFSET 640
#define IMGARRAY_AXI_S00_AXI_SLV_REG161_OFFSET 644
#define IMGARRAY_AXI_S00_AXI_SLV_REG162_OFFSET 648
#define IMGARRAY_AXI_S00_AXI_SLV_REG163_OFFSET 652
#define IMGARRAY_AXI_S00_AXI_SLV_REG164_OFFSET 656
#define IMGARRAY_AXI_S00_AXI_SLV_REG165_OFFSET 660
#define IMGARRAY_AXI_S00_AXI_SLV_REG166_OFFSET 664
#define IMGARRAY_AXI_S00_AXI_SLV_REG167_OFFSET 668
#define IMGARRAY_AXI_S00_AXI_SLV_REG168_OFFSET 672
#define IMGARRAY_AXI_S00_AXI_SLV_REG169_OFFSET 676
#define IMGARRAY_AXI_S00_AXI_SLV_REG170_OFFSET 680
#define IMGARRAY_AXI_S00_AXI_SLV_REG171_OFFSET 684
#define IMGARRAY_AXI_S00_AXI_SLV_REG172_OFFSET 688
#define IMGARRAY_AXI_S00_AXI_SLV_REG173_OFFSET 692
#define IMGARRAY_AXI_S00_AXI_SLV_REG174_OFFSET 696
#define IMGARRAY_AXI_S00_AXI_SLV_REG175_OFFSET 700
#define IMGARRAY_AXI_S00_AXI_SLV_REG176_OFFSET 704
#define IMGARRAY_AXI_S00_AXI_SLV_REG177_OFFSET 708
#define IMGARRAY_AXI_S00_AXI_SLV_REG178_OFFSET 712
#define IMGARRAY_AXI_S00_AXI_SLV_REG179_OFFSET 716
#define IMGARRAY_AXI_S00_AXI_SLV_REG180_OFFSET 720
#define IMGARRAY_AXI_S00_AXI_SLV_REG181_OFFSET 724
#define IMGARRAY_AXI_S00_AXI_SLV_REG182_OFFSET 728
#define IMGARRAY_AXI_S00_AXI_SLV_REG183_OFFSET 732
#define IMGARRAY_AXI_S00_AXI_SLV_REG184_OFFSET 736
#define IMGARRAY_AXI_S00_AXI_SLV_REG185_OFFSET 740
#define IMGARRAY_AXI_S00_AXI_SLV_REG186_OFFSET 744
#define IMGARRAY_AXI_S00_AXI_SLV_REG187_OFFSET 748
#define IMGARRAY_AXI_S00_AXI_SLV_REG188_OFFSET 752
#define IMGARRAY_AXI_S00_AXI_SLV_REG189_OFFSET 756
#define IMGARRAY_AXI_S00_AXI_SLV_REG190_OFFSET 760
#define IMGARRAY_AXI_S00_AXI_SLV_REG191_OFFSET 764
#define IMGARRAY_AXI_S00_AXI_SLV_REG192_OFFSET 768
#define IMGARRAY_AXI_S00_AXI_SLV_REG193_OFFSET 772
#define IMGARRAY_AXI_S00_AXI_SLV_REG194_OFFSET 776
#define IMGARRAY_AXI_S00_AXI_SLV_REG195_OFFSET 780
#define IMGARRAY_AXI_S00_AXI_SLV_REG196_OFFSET 784
#define IMGARRAY_AXI_S00_AXI_SLV_REG197_OFFSET 788
#define IMGARRAY_AXI_S00_AXI_SLV_REG198_OFFSET 792
#define IMGARRAY_AXI_S00_AXI_SLV_REG199_OFFSET 796
#define IMGARRAY_AXI_S00_AXI_SLV_REG200_OFFSET 800
#define IMGARRAY_AXI_S00_AXI_SLV_REG201_OFFSET 804
#define IMGARRAY_AXI_S00_AXI_SLV_REG202_OFFSET 808
#define IMGARRAY_AXI_S00_AXI_SLV_REG203_OFFSET 812
#define IMGARRAY_AXI_S00_AXI_SLV_REG204_OFFSET 816
#define IMGARRAY_AXI_S00_AXI_SLV_REG205_OFFSET 820
#define IMGARRAY_AXI_S00_AXI_SLV_REG206_OFFSET 824
#define IMGARRAY_AXI_S00_AXI_SLV_REG207_OFFSET 828
#define IMGARRAY_AXI_S00_AXI_SLV_REG208_OFFSET 832
#define IMGARRAY_AXI_S00_AXI_SLV_REG209_OFFSET 836
#define IMGARRAY_AXI_S00_AXI_SLV_REG210_OFFSET 840
#define IMGARRAY_AXI_S00_AXI_SLV_REG211_OFFSET 844
#define IMGARRAY_AXI_S00_AXI_SLV_REG212_OFFSET 848
#define IMGARRAY_AXI_S00_AXI_SLV_REG213_OFFSET 852
#define IMGARRAY_AXI_S00_AXI_SLV_REG214_OFFSET 856
#define IMGARRAY_AXI_S00_AXI_SLV_REG215_OFFSET 860
#define IMGARRAY_AXI_S00_AXI_SLV_REG216_OFFSET 864
#define IMGARRAY_AXI_S00_AXI_SLV_REG217_OFFSET 868
#define IMGARRAY_AXI_S00_AXI_SLV_REG218_OFFSET 872
#define IMGARRAY_AXI_S00_AXI_SLV_REG219_OFFSET 876
#define IMGARRAY_AXI_S00_AXI_SLV_REG220_OFFSET 880
#define IMGARRAY_AXI_S00_AXI_SLV_REG221_OFFSET 884
#define IMGARRAY_AXI_S00_AXI_SLV_REG222_OFFSET 888
#define IMGARRAY_AXI_S00_AXI_SLV_REG223_OFFSET 892
#define IMGARRAY_AXI_S00_AXI_SLV_REG224_OFFSET 896
#define IMGARRAY_AXI_S00_AXI_SLV_REG225_OFFSET 900
#define IMGARRAY_AXI_S00_AXI_SLV_REG226_OFFSET 904
#define IMGARRAY_AXI_S00_AXI_SLV_REG227_OFFSET 908
#define IMGARRAY_AXI_S00_AXI_SLV_REG228_OFFSET 912
#define IMGARRAY_AXI_S00_AXI_SLV_REG229_OFFSET 916
#define IMGARRAY_AXI_S00_AXI_SLV_REG230_OFFSET 920
#define IMGARRAY_AXI_S00_AXI_SLV_REG231_OFFSET 924
#define IMGARRAY_AXI_S00_AXI_SLV_REG232_OFFSET 928
#define IMGARRAY_AXI_S00_AXI_SLV_REG233_OFFSET 932
#define IMGARRAY_AXI_S00_AXI_SLV_REG234_OFFSET 936
#define IMGARRAY_AXI_S00_AXI_SLV_REG235_OFFSET 940
#define IMGARRAY_AXI_S00_AXI_SLV_REG236_OFFSET 944
#define IMGARRAY_AXI_S00_AXI_SLV_REG237_OFFSET 948
#define IMGARRAY_AXI_S00_AXI_SLV_REG238_OFFSET 952
#define IMGARRAY_AXI_S00_AXI_SLV_REG239_OFFSET 956
#define IMGARRAY_AXI_S00_AXI_SLV_REG240_OFFSET 960
#define IMGARRAY_AXI_S00_AXI_SLV_REG241_OFFSET 964
#define IMGARRAY_AXI_S00_AXI_SLV_REG242_OFFSET 968
#define IMGARRAY_AXI_S00_AXI_SLV_REG243_OFFSET 972
#define IMGARRAY_AXI_S00_AXI_SLV_REG244_OFFSET 976
#define IMGARRAY_AXI_S00_AXI_SLV_REG245_OFFSET 980
#define IMGARRAY_AXI_S00_AXI_SLV_REG246_OFFSET 984
#define IMGARRAY_AXI_S00_AXI_SLV_REG247_OFFSET 988
#define IMGARRAY_AXI_S00_AXI_SLV_REG248_OFFSET 992
#define IMGARRAY_AXI_S00_AXI_SLV_REG249_OFFSET 996
#define IMGARRAY_AXI_S00_AXI_SLV_REG250_OFFSET 1000
#define IMGARRAY_AXI_S00_AXI_SLV_REG251_OFFSET 1004
#define IMGARRAY_AXI_S00_AXI_SLV_REG252_OFFSET 1008
#define IMGARRAY_AXI_S00_AXI_SLV_REG253_OFFSET 1012
#define IMGARRAY_AXI_S00_AXI_SLV_REG254_OFFSET 1016
#define IMGARRAY_AXI_S00_AXI_SLV_REG255_OFFSET 1020
#define IMGARRAY_AXI_S00_AXI_SLV_REG256_OFFSET 1024
#define IMGARRAY_AXI_S00_AXI_SLV_REG257_OFFSET 1028
#define IMGARRAY_AXI_S00_AXI_SLV_REG258_OFFSET 1032
#define IMGARRAY_AXI_S00_AXI_SLV_REG259_OFFSET 1036
#define IMGARRAY_AXI_S00_AXI_SLV_REG260_OFFSET 1040
#define IMGARRAY_AXI_S00_AXI_SLV_REG261_OFFSET 1044
#define IMGARRAY_AXI_S00_AXI_SLV_REG262_OFFSET 1048
#define IMGARRAY_AXI_S00_AXI_SLV_REG263_OFFSET 1052
#define IMGARRAY_AXI_S00_AXI_SLV_REG264_OFFSET 1056
#define IMGARRAY_AXI_S00_AXI_SLV_REG265_OFFSET 1060
#define IMGARRAY_AXI_S00_AXI_SLV_REG266_OFFSET 1064
#define IMGARRAY_AXI_S00_AXI_SLV_REG267_OFFSET 1068
#define IMGARRAY_AXI_S00_AXI_SLV_REG268_OFFSET 1072
#define IMGARRAY_AXI_S00_AXI_SLV_REG269_OFFSET 1076
#define IMGARRAY_AXI_S00_AXI_SLV_REG270_OFFSET 1080
#define IMGARRAY_AXI_S00_AXI_SLV_REG271_OFFSET 1084
#define IMGARRAY_AXI_S00_AXI_SLV_REG272_OFFSET 1088
#define IMGARRAY_AXI_S00_AXI_SLV_REG273_OFFSET 1092
#define IMGARRAY_AXI_S00_AXI_SLV_REG274_OFFSET 1096
#define IMGARRAY_AXI_S00_AXI_SLV_REG275_OFFSET 1100
#define IMGARRAY_AXI_S00_AXI_SLV_REG276_OFFSET 1104
#define IMGARRAY_AXI_S00_AXI_SLV_REG277_OFFSET 1108
#define IMGARRAY_AXI_S00_AXI_SLV_REG278_OFFSET 1112
#define IMGARRAY_AXI_S00_AXI_SLV_REG279_OFFSET 1116
#define IMGARRAY_AXI_S00_AXI_SLV_REG280_OFFSET 1120
#define IMGARRAY_AXI_S00_AXI_SLV_REG281_OFFSET 1124
#define IMGARRAY_AXI_S00_AXI_SLV_REG282_OFFSET 1128
#define IMGARRAY_AXI_S00_AXI_SLV_REG283_OFFSET 1132
#define IMGARRAY_AXI_S00_AXI_SLV_REG284_OFFSET 1136
#define IMGARRAY_AXI_S00_AXI_SLV_REG285_OFFSET 1140
#define IMGARRAY_AXI_S00_AXI_SLV_REG286_OFFSET 1144
#define IMGARRAY_AXI_S00_AXI_SLV_REG287_OFFSET 1148
#define IMGARRAY_AXI_S00_AXI_SLV_REG288_OFFSET 1152
#define IMGARRAY_AXI_S00_AXI_SLV_REG289_OFFSET 1156
#define IMGARRAY_AXI_S00_AXI_SLV_REG290_OFFSET 1160
#define IMGARRAY_AXI_S00_AXI_SLV_REG291_OFFSET 1164
#define IMGARRAY_AXI_S00_AXI_SLV_REG292_OFFSET 1168
#define IMGARRAY_AXI_S00_AXI_SLV_REG293_OFFSET 1172
#define IMGARRAY_AXI_S00_AXI_SLV_REG294_OFFSET 1176
#define IMGARRAY_AXI_S00_AXI_SLV_REG295_OFFSET 1180
#define IMGARRAY_AXI_S00_AXI_SLV_REG296_OFFSET 1184
#define IMGARRAY_AXI_S00_AXI_SLV_REG297_OFFSET 1188
#define IMGARRAY_AXI_S00_AXI_SLV_REG298_OFFSET 1192
#define IMGARRAY_AXI_S00_AXI_SLV_REG299_OFFSET 1196


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a IMGARRAY_AXI register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the IMGARRAY_AXIdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void IMGARRAY_AXI_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define IMGARRAY_AXI_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a IMGARRAY_AXI register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the IMGARRAY_AXI device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 IMGARRAY_AXI_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define IMGARRAY_AXI_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the IMGARRAY_AXI instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus IMGARRAY_AXI_Reg_SelfTest(void * baseaddr_p);

#endif // IMGARRAY_AXI_H
