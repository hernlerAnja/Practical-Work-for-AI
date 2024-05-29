
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
        
        load "data/5WNH.pdb", protein
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
 
        load "data/5WNH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1732,1733,1734,1613,1635,640,641,1727,1624,1651,1652,634,635,638,2969,631,633,629,2942,2944,2946,2950,816,814,686,688,687,1234,1233,1086,1087,799,1256,1284,1286,1285,1309,649,650] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [6720,6726,6730,9417,9418,9415,6736,6737,9319,9321,9322,9323,9416,6743,6385,6377,6378,9449,9450,9318,9320,6386,9317,6311,6309,9375,9377,9384,9385,9388,9389,9390,9391,9392,9387,9421,9422,9356,9336,9349,9352,9354,9333,9334,9427,9458,6933,9381,9380,6774] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [10032,10033,10159,10579,9974,9978,12287,10578,12289,10144,10583,10996,10997,12291,10631,10628,10629,10630,12282,12292,10161,11078,11079,11071,11073,11077,10160,11072,10973,10970,10969,9983,9980,9986,9994,9995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [6835,6838,6888,7014,6887,7434,6886,9080,7852,7485,7835,7824,7851,7015,7935,7016,7181,7925,7926,7927,7932,7933,7934,6999,6833,7438,7433,7286,6840,6841,6849,6850,6829] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [3898,3899,3900,4026,3843,3845,5951,4863,4940,4938,4446,4864,4939,4497,4495,4011,4445,4450,4298,4229,4836,4496,3850,4944,4945,4946,4947,3841,3846,3847,4027,4028,3852,3853,3861,3862] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1842,2009,2010,2012,9157,2008,6499,6501,6502,6503,6488,7374,6465,7365,7366,7368,1992,1994,2000,1998,6460,6463,6475,9167,9233,9245,9178,9179,9183,2548,2014,2015,9154,9163,9160,9164,9173,9174,9191,9192,9236] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3282,3284,3285,3283,3257,3258,3259,3260,3261,207,520,3242,3243,3244,3247,3248,3251,3252,3216,526,103,171,177,178,185,3317,109,111,3294,3319,186,3184,3192,3197,3189,3188,3221,3219] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [1732,1733,1734,1613,1635,1757,1749,1597,1735,1756,815,674,813,814,688,982,1750,1612,1881,653,657,658,649,650,651,672,939,662,663,665,669,832,673,671,935,937,916,933,934,936,938] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [11095,10010,10281,10282,10283,10284,10012,10013,10014,10177,9994,9995,9998,10002,10007,10008,10003,10262,10161,11079,11080,10160,10033,10158,11102,11093] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [3852,3861,3862,3865,3869,4969,3870,3877,3879,4147,4149,4128,4194,4145,4146,4148,4150,4960,4962,4961,4151,4044,3887,4027,4028,3885,3886,3883,4945,4946,4947,3880,4127,4129,3900] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [6270,6271,6272,6276,6242,9530,6307,6273,6274,9865,9875,9531,12546,12551,9871,6245,6247,9516,9522,9523,9454,9456,6282] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [42,43,82,44,6171,3397,45,6154,6157,47,48,49,3398,6153,3321,3323,3315,3389,3383,16,17,104,80,75,73,107,106,3390,4336,6165] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [6849,6850,6853,6857,6858,7950,7957,7015,7935,7016,7934,6871,6888,7013,7032,6865,6867,7135,7136,7137,7138,7139,7134,7133,6862,6863,6869,7020,7116,7115,7117] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [4170,4173,4175,4167,4168,4203,4212,4211,4213,4992,439,3364,424,3361,3362,3365,3366,3367,3368,3404,6119,3349,3357,3358,3342,4244] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [6356,6354,6350,6353,7201,7200,7163,7191,9282,9275,7161,6352,7162,7158,7160,9769,9771,7155,7156,6330,6336,6337,6346] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [543,1125,775,1126,3221,3222,3223,755,792,754,730] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [961,963,1001,154,146,150,152,153,130,137,991,3149,192,155,954,998,157] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [9646,9648,12392,12393,12403,12453,12465,12420,12421,12474,12396,9620,9605,9608,10510,10509,10513,12462] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [12344,12345,12346,10041,10042,10152,9901,9902,9923,9945,9946,10169,10554,10531,10533] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [3103,3031,3034,275,260,3030,3041,3091,3058,3059,301,303,1164,1165,1166,1168,3112,263,261] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4004,4337,4338,4005,3941,3943,3965,3966,3967,3987,16,17] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [3785,3959,3724,3732,38,3784,3786,13,15,8,11,4,48,3749] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [9871,9886,6245,6247,6249,6209,6248,6207,6272,6273,9865,6232] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [6815,3544,3543,3542,3503,3661,9097,6818,6806,6811,6817,9108,9102,9116,9120,3625,3628,3619,3660] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        