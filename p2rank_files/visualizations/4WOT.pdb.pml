
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
        
        load "data/4WOT.pdb", protein
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
 
        load "data/4WOT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7129,7946,6955,6956,6995,6958,6949,7250,7251,8063,8064,8065,8066,8071,7131,7132,7148,7253,7297,8048,8049,8062,8050,6996,7136,7936,7923,7939,7908,7905,8046,8047,7549,7550,7961,8042,7008,7130,7935,7963,8041,7006,7007,7962,9259,7602,9256,9258,6953,7888,8194,8199,7924,6977,6978,6973,6989,6969,6970,6991,6992,6993,6960,6961,9283,7233,6985,6987,7402,7115,7576,7577,7572,7575,7566] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [4865,4866,4867,4868,4742,4764,3966,3948,3949,3950,3796,3800,3803,3791,3795,3805,4220,4221,4367,4859,4860,4754,3778,3779,3787,3788,3773,3774,3776,4394,4418,4419,4420,4753,4779,4780,4781,3933,3824,3825,3826,4368,4393,3767,6071,6074,6076,6068,6078,3769,3771,4372,4390,4395,4881,4882,4883,4889,4726,4067,4068,4070,4069,4071,4073,5006,5008,5009,5010,5011,4072,4051] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [10253,10254,10255,10256,10249,10242,10257,11141,11161,11149,11150,11152,11153,7088,7089,7090,7091,10576,10596,10723,10535,10538,12267,10722,11193,11194,11144,12266,12269,11175,12264,12358,12359,7996,7998,12360,12362,7373,7071,7095,7096,9209,9210,9212,11163,7987,7988,7408,7412,7429,7431,7555,7558,7976,7979,8027,7985,7366,7369,7370,7559,8028,8029,9119,7087,7076,7077,7084,7092,7563,7564,7578,10720,10725,10743,10728,10260,10261,10729] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [3141,6328,3146,3909,3142,1095,1097,1099,1108,1109,1110,3907,3908,757,758,759,777,775,4230,4245,4247,6323,6324,6325,6326,6327,4260,4249,3925,3927,4259,3905,3913,6342,6346,6335,6338,6339,6340,6341,6336,6369,525,526,563,532,529,530,518,6361,511,6360,6372,3130,3131,3132,740,4179,4180,735,741,561,717,718,719,720,721,560,4155] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [7442,7073,7107,7109,7441,7440,9493,7427,7429,7431,7558,7095,8,9,3,6,7,10,7053,7049,7052,7067,7072,37,38,39,40,9482,6843,6857,6858,6861,6864,27,29,7051,6893,6894,6895,6892,28,9498,12647,12648,10607,12645,12646,7089,7091,10577,10592,10594,10596,10254,10256,10274,14,5,10525,10526,10527,10502,10272,10720] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [11126,11127,11128,10767,11100,10766,10715,10171,10172,10173,10118,12405,12407,12409,10114,12410,11205,11206,11207,10295,10297,11212,11101,11104,12414,12417,10120,10125,10126,12433,10296,11111,11215,10737,10719,10567,10741,10742,10568,10280] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [783,1629,2907,617,619,621,675,1218,2903,2905,1603,1631,1267,1268,1270,1630,623,676,626,629,1222,1245,1240,800,1709,1715,1614,1070,1710,798,1217,1604,1607] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [1653,1654,1655,1647,1664,1223,1226,1644,3907,3908,1037,1038,1041,1697,2767,1080,1227,1225,1696,3889,1034,1061,1099,1676,1678,3906,3902,3905,3910,3894,3895,3913,3914,2762,6028,6030,4805,4806,4382,6026,1666,6027,4373,4381] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [10296,10313,10462,11073,11214,11088,11089,11111,11213,11215,10145,10147,10138,10154,10125,10126,10135,10136,11101,11229,11230,11231,11228,11236,10415,10416,10418,10295,10297,10173,10142,10143,10150,10152,11333,11335,11336,11337,11338,10398] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [745,755,756,757,758,759,752,763,760,764,765,2860,2853,2857,2858,2859,5932,1653,1654,1655,1656,1231,1232,1235,1226,4814,4816,4373,4381,4828,4794,4797,4803,4805,4802,4188,4191,4229,4377,4846,4847,4375,4376,4249,5937] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [800,799,1717,1614,1716,1718,645,646,653,655,918,1731,1732,1733,921,1739,920,901,798,816,923,650,797,676,629,637,638,641,663,664,1576,1591,1592,1839] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [3870,3871,3926,3927,4259,3682,3890,3891,9507,9503,9504,9505,9506,9525,9526,3885,3676,3712,3710,3711,3709,9534,9537,6312,6314,3679,6323,4258,4260,3145,3146,3909,3143,1029,1030] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [9498,10607,12643,12644,7361,7362,10237,10238,10254,10255,10256,10274,9495,9496,3153,3155,3156,3159,3161,3164,3158,3160,3157,10232,10029,10605,12632,10216,10217,10218,12633,12634,10027,10606,3187,3189,3190,10026,10060,10059,3178,3179,10008,10022] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [7317,7307,7316,7315,6495,6496,6518,6471,9447,9462,6453,7348,6474,6475,6478,6460,416,417,419,7271,7272,7273,7277,7278,7279,432,9439,9445] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [128,139,3095,945,947,975,984,985,142,143,146,148,3087,939,940,942,944,946,6749,1016,1017,121,186,3093,164,6764] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [9625,9636,9639,9640,9643,9645,10442,10444,10472,10480,10481,10482,12595,12597,3582,3567,3569,10436,10441,10443,12589,10439,10437,9624,9618,10513] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [6292,6275,6277,4125,4134,3278,3288,3289,3292,3293,3296,3297,4135,9916,4092,4095,4097,4089,4090,3271] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [3442,3444,6157,6168,6186,6158,6159,6161,3409,4299,6239,4302,3405,3413,3443,3416,6236,6227,6218,6185,6230] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [6586,6587,6588,6625,6591,7484,7481,9409,9331,9356,9400,9327,9328,9338,6624,6626,6598,9388,9355] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [254,256,259,1148,3057,2979,255,1149,1152,2969,293,294,292,2986,2976,3048,2970,2972,2975,3045,266] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [9752,9789,9791,9763,10649,12559,10645,12481,12556,12547,12550,12477,12478,10646,9756] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [10797,10829,11135,12310,10795,10796,10827,10753,10755,12396,12397,12398,10789,10820,10792,12323,12320,12319,12325] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [169,170,171,180,6406,6404,6429,6430,6431,6432,6425,6426,95,97,102,6503,105,104,6407,6409,6436,6437] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [2808,1334,1292,1332,1638,1298,1299,1300,1295,2806,2896,2818,2821,1258] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [9160,7590,9247,7664,7666,9170,9158,7630,7598,7626,7627,7625,7655] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [1052,2763,1055,1468,2724,2759,1050,1053,1469,1043,1042,2770,2738,2744,2745,3897,3899] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [4344,4294,4321,4323,3958,4324,3835,3819,3834,3740,3695,4343,3941,3696] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [546,545,1194,684,685,1193,808,1173,590,791] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        