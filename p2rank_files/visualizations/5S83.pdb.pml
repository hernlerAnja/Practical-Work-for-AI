
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
        
        load "data/5S83.pdb", protein
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
 
        load "data/5S83.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3502,3505,3506,3507,3508,2552,2554,2680,2681,2397,2400,2402,2449,2450,2451,3429,3500,2716,2800,3428,3501,3008,2974,2976,2978,2398,2399,2546,2550,2938,2942,2956,2957,2961,2538,2715,3401,3400,3403,3011,3015,3016,3044,3373,3389,3390,3677,3412,2983,2993,2980,2421,2424,2425,2426,2427,2428,2429,2430,3655,2611,3656,3657,3658,2594,2607,2609,3664,3672,3673] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [255,1262,1263,1264,125,126,297,298,299,128,130,131,741,1093,705,1094,1096,706,1066,1202,1205,1283,1082,1083,1105,251,253,247,150,151,152,99,100,102,104,101,632,664,666,646,647,628,239,1197,500,1198,1199,1126,499,698,701,651,670,673,1278,1279,1270,1276] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3771,913,931,2238,2266,4223,4224,4225,4226,881,882,883,3770,457,459,475,468,1170,1171,1172,855,911,884,851,853,930,938,940,966,982,984,929,442,4248,4249,4221,4247,4254,4288,4289,4258,4214,4216,4250,4251,3750,3756,3757,2292,3758] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3741,3743,3745,3746,3768,3669,3666,3662,3668,3672,3716,4213,4215,3362,3363,3528,3638,3653,3786,3797,3849,3851,3785,3622,3623,3625,3702,3712,3878,3359,3358,3372,3769,3770] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1358,1493,1324,1328,1259,1268,1271,1272,1274,1275,1330,1278,1398,1455,1457,1355,1357,1814,1409,1397,1060,1051,1065,1055,1056] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3401,3402,3397,3403,3405,3388,3390,3677,4116,3031,3033,3035,4117,3678,3694,3695,3707,3396,3990,3696,3688,4200,4199,3679,2427,2429] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1081,1095,1096,721,725,723,1083,1321,1089,1589,1097,1098,1284,1307,1308,1784,1319,1306,1724,1715,1716,1717,1778,1799,1785,1786] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [954,956,1467,1471,2225,2237,1463,1473,1475,2236,2223,1465,2231,2220,2224,2226,1508,1438,967,930,964,1436,1482,1484,1477,2203,2214,1440] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4597,4603,4608,4609,4614,4606,4607,4618,4586,3267,3276,3278,4621,3263,3264,3867,3869,3870,3831,3834,3832,3833,3857,3860,3859,3861,3893] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [196,197,199,193,194,195,198,200,523,639,640,57,233,522,528,34,32] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [483,1184,678,1141,655,679,661,501,502,654,656,657,653,461,463,1143,453] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2788,2988,2989,2801,2802,2962,2965,3445,2986,2971,2764,2772,2963,2964,2966,2967,3487,3443,3444,2774] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2839,2840,2842,2950,2841,2351,2931,2368,2369,2355,2352,2353,2926,2928,2929,2930,2857,2932,2933] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1194,1198,496,506,1212,364,398,399,511,509,489,1188,647] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1163,1147,1160,1161,868,801,866,832,834,1133,752,753,786,696] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4647,4649,3224,2776,4620,3247,2768,2770,3244,3249,3242,3278,3251] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        