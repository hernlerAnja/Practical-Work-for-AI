
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/7S26.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/7S26.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [825,827,699,1740,1744,1746,1745,697,1244,1245,698,646,649,652,640,642,993,810,1249,1097,1662,1738,1261,1267,1271,1663,1739,1743,1635,644,1263,2901,1270,2904,2903,1297,1028] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [4265,4412,4413,4911,4912,3995,4161,4913,4914,4830,4906,4803,4804,4907,3866,3867,3993,3817,3819,3820,3828,3994,3978,3808,3810,3812,3814,5983,5985,4439,4831,4462,4463,4465,4464,4417,4435,4440] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [7438,7439,7938,7939,7291,7856,7932,7937,7857,6893,7443,7465,7466,7004,6892,7461,6838,7455,7464,9017,9019,7019,7020,7021,7187,7940,6843,6845,6846,6840,6834,7488,7491,7829,7436] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [10002,10004,9874,9875,9876,10838,10839,10840,10464,10447,9818,9821,9820,10453,10812,10472,10474,10467,11178,11179,9817,9823,10168,10169,10170,10917,10916,10920,10915,9987,10421,10422,10274,10426,10444,10440,10204] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [6391,9159,9163,9165,9237,9176,9177,9236,9234,9227,9228,9197,6316,6375,6376,9166,6745,6779,6742,11,28,31,9235,9230,6314,6390,6378,6382,6383,6384,9260,9261,6731,6741,9218,9220,6725,9223,6308,9268,9269,9270,9295] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [3162,3164,3165,3226,3228,3225,3163,3188,3254,537,547,585,3158,3159,196,197,114,122,189,3286,183,124,126,127,3294,3295,3221,3224,3251,3252,3186,3214,531,3215,3255,3256,3259,3261] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [1053,1519,1548,7884,1062,1063,1521,1524,1077,1079,1082,1494,1498,1069,1070,8927,8928,8926,2612,1497,2720,2719,8929,8948,8949,8932,8933,8937,8938,8945,2586,7877] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [3117,3603,966,967,968,969,972,974,3122,3124,965,1011,1012,964,976,1571,984,1002,1001,166,168,167,157,203,161,148,141,146,3618] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [1120,1121,1122,1124,3172,1125,1126,803,804,784,786,765,785,554,1135,742,1137,740,741,744,766,3187,3189] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [10143,10144,10145,10188,10189,10179,10146,10149,10151,6628,6629,11249,9325,9333,9334,6644,9338,9340,9342,9380,11254,11256,11271,9318,10220] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [6978,6980,9196,9197,9198,9199,9194,9195,9180,6960,6996,6998,7330,7331,6959,6997,6937,6934,6935] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [1253,1676,1677,1679,1693,1694,2763,1685,1688,8885,8891,8897,8896,2761,8901,8903,8902,1725,1125,1126,1106,1252,1254,1255,1247,1250,1258,7595,7596,8810,2760,2767,2772,2758,8900] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [11278,6241,11274,9718,9720,9724,9372,9374,9373,6287,6249,6250,6251,6252,6253,6254,6277,6278,6280,6312,6309,6310,9365] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [54,55,57,6194,6197,6199,6213,6215,83,84,51,53,3293,117,3356,3364,3365,3282,3348,3349,3350,91,93,3295,87,6193,6212,3288,3290] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [825,826,827,661,699,1744,1746,1745,843,948,950,664,668,683,669,675,1768,928,677,651,652,660,993,1759,1760,1761,945,946,947,949] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [1199,1200,1201,671,848,667,1183,849,875,876,878,680,681,682,683,832,835,2971,2978,2985,2972,690,692,691,2952,2953,2955,2954,2956,689,654,655,688] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [4134,4135,4137,4140,3325,3309,3315,3316,3329,3332,3335,4169,4170,4179,4180,6157,3371,6159,4142,435,449,450,434] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [10504,10847,10498,10499,10502,10503,10536,10592,10591,10496,10527,10538,10873,10875,10460,10462,11106,11094,11097,11100,11107,11105,10631] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [568,1220,1221,1171,1198,1199,1200,1201,707,708,835,2960,2961,690,692,691,2953,2985,613,589,567,566,577] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [19,21,22,3908,3909,4305,3910,3972,4304,3954,3933,3934] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [274,270,271,312,313,314,286,3034,3075,3033,3064,3078,3067,1176,3087,3006,3005,3016,1179,3012,3011,3010,3007,3008,3009] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [6335,7196,7205,7166,7168,6340,6341,6342,6351,6360,6361,6362,7206,7237,7163,7165,7160,7161,7162,9612] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [3480,3439,3481,3482,6069,6122,6042,6044,6110,6113,6041,6040,6051,3440,3454,6068,4347,6036] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [9856,10121,10122,10123,10125,10936,10937,9855,10169,10922,10923,9838,9853,10003,10004,10944] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [1670,1350,1359,2815,2818,1322,1325,2893,1285,1320,1321,2803,1361,2805] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [4451,4453,5974,5975,5976,4488,4518,4495,5886,5888,4527,4529,5898,5903,4838] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [8935,8936,7864,8919,8921,7521,8934,9008,8931,2735,2736,2737,2739,7477,7479,9009,7516,7553,7544,7514] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [6870,6872,7122,6858,6863,6867,6855,7037,7142,7143,7144,7020,7021,7939,7138,7139,7140,7141,7944] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [10430,10451,10853,10435,5909,5910,5911,10856,10857,10866,10861,10862,10863,10427,10902,10901,5921,5912,5914,5915,5924,10303] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [12,13,1,6,45,46,47,16,3911,3912,3751,3752,3922,3926,3927] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [6205,4288,4289,4290,4292,4294,4293,6207,4305,3971,3972,4304,3952,3953,3954] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [1638,1639,1860,1862,1311,1312,1630,1631,1886,2115,2114,2116,2157,2158] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [10294,10297,10298,10299,10301,10303,10300,10302,5923,5915,5916,5919,10312,10314,10296,10313,9941,9942,9961,9979,9981,9963,5918,9943] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [3875,3876,4003,4387,3758,3736,3745,3734,3735,4389,4339,4368,4366,3781,3757] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [7011,6901,7029,6807,6902,7414,6762,6761,6783,6760] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [10761,10931,10688,10909,10762,10764,10933] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        