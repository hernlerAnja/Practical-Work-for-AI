
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
        
        load "data/8DGT.pdb", protein
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
 
        load "data/8DGT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1269,4870,4871,4872,4873,3749,3750,2170,2183,2184,2185,2182,2193,2181,2171,3929,2467,4854,4857,2468,4853,4859,4862,3921,3744,1816,1817,3928,3930,3926,3927,3907,3910,3912,3922,3925,3915,1835,1274,1253,1301,1302,1258,1256,1257,1805,1806,1807,2208,1790,1791,2210,2211,2212,2192,2297,2298,1284,1401,1303,1262,1266,1646,1385,1783,1785,1784,1762,1767,1787,4835] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [9694,9675,9676,9679,10550,9688,9692,9693,9661,9664,9665,9667,10052,10061,9686,9687,10787,9698,10791,10798,10800,9800,9793,9795,10558,10559,10572,10573,10555,10556,10557,10581,10792,9828,9836,9840,9818,9829,9831,9833,9850,9830,9832,9805,9861,9856,9810] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [4762,4770,4759,4760,4761,4763,4757,4817,4841,4842,4821,4822,4604,4769,4778,4779,2844,2847,4626,4627,4628,4629,2837,4614,4615,4787,4774,4775,4776,4777,4062,4063,4133,4812,4813,4815,4928,3746,3748,4645,4644,4764,3887,4765,3744,4843,4844,3738,3741,3751,3753,3750,3885,4243,4255,4257,4147,3903,4244,3747] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [9721,9886,9904,140,9885,9887,9861,9852,9868,9836,9840,9841,9843,9845,9818,259,9805,9823,288,287,257,260,232,261,262,265,9847,154,145,162,254,255,9692,9693,10048] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [3724,4299,4300,4302,4331,3726,4281,3770,3729,3730,3732,3768,4307,4656,4766,3886,3887,4681,4680,4682,4306,4282,3867,3769,4278,4258,3722,3723,3728,3727] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [8092,8088,3415,8067,8089,8670,3394,8699,8728,8668,8030,9066,9068,8725,8738,8705,8706,8707,8086,8087,8058,8057,3399,3390,3392,3393,3395,9057,9062,3404,3414,3416,9439,9058,9059,9468,9466,8119,8123,8121,8122,8739,8774,3384,8773] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [7632,1105,1123,7634,6832,6860,6861,6253,6243,6244,6245,6246,6247,6867,6900,6901,7602,6831,7220,7219,7223,7224,7228,6275,6276,6277,6279,6935,1100,6248,1110,7251,1101,6888,6890,6887,1095] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [695,6026,7871,8154,8151,7890,7892,8127,8153,8182,7869,7870,702,7866,7873,7883,7901,7877,697,724,726,6043,6046,6057,6058,6022,6039,6310,6318,6283,727,6319,6023,6282,6289] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [26,45,30,27,28,145,161,162,160,157,9870,5573,5586,2937,2938,4976,4977,4978,5370,4939,5574,5577,10072,10094,10107,10108,9851,9852,9859,9868,5378,9853,9854,9855,5368,5578,9845] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [4266,3550,3551,3553,4263,4697,4727,4710,3549,4712,4162,3546,3575,3576,3848,3851,3846,3844,3847,4268,4271,4726,4744,3516,3529,3552,3515] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [1874,3947,1875,3967,4828,4807,4836,2778,2781,2805,2806,2802,4826,4827,4833,4835,4829,4830,4849,2774,2770,1873,3925,3937,4854,4857] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [1082,1085,1067,1068,1078,6367,813,1087,1092,1090,1096,827,830,831,832,833,834,731,1115,6279,736,815,816,817,1103,1106,837] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [3311,3312,3334,3335,3336,3342,3344,698,867,868,869,3282,6026,3050,883,3278,6027,3280,3281] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [3042,3044,3373,3376,3372,9550,3358,881,888,890,893,3041,9518,9520,9517,9493,9527,9492,3377,3382,3400,3342,3344,3340,3037,3031,3027] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [9101,9104,9269,9295,9298,9325,9081,9087,9033,9034,9072,9074,9076,9077,9125,9128,8962,8964,8966,9294,9322] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [924,868,869,903,3282,900,901,3312,3287,3290,3076,3050,3256,3257,3255,3283,3280] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [2991,228,2946,2814,2811,188,202,225,2965,2966,2968,2967,2988,2790,2951] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [2123,2311,2125,2116,2326,2107,1541,1542,1540,2333] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [7239,7151,7236,7237,7238,7124,7261,7153,7156,7193,7195,7196,7484,7249,7460,7234,7262,7266,7259,7453,7455,7126,7128,7157,7158,7457,7452,7487] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [7521,7522,7500,7639,7640,7642,7615,7648,7613,7616,7617,2093,7544] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [1695,1205,1717,1718,1696,1208,1186,1204,1391,1408,1409,1222,1741] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [109,132,10165,10163,10039,10040,10192,10190,10151,10021,9618] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [3002,3065,3044,3045,3011,3012,3013,1040,9543,9542,9541,9518,9485,9519,2972,3067,2998,3027] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [809,7716,807,808,788,971,961,962,963] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [7292,7103,7104,7125,7455,7127,7128,7431,7454,7327,7328,7400,7403,7404,7399,7429] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [1006,1005,1033,1034,899,3108,910,3073,3074] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [735,1113,1131,720,6287,1116,6252,5999,6004,729,732,734,3304,1128,1129] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        