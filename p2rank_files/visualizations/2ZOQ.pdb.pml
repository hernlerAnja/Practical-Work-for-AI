
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
        
        load "data/2ZOQ.pdb", protein
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
 
        load "data/2ZOQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [357,373,374,251,252,253,1315,1316,835,842,843,844,852,883,1234,1208,823,827,199,201,202,203,884,205,1209,1210,1217,1317,1196,1197,232,230,209,210,211,212,213,218,222,214,215,1309,1310,811,824,828,1233,805,556,636,806,803] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4185,4186,3076,3083,3107,4087,4066,3074,3077,3120,3121,3226,3122,4077,4078,4079,3724,3068,3753,3065,3696,3071,4179,4101,4102,4178,3713,3672,3674,3675,4103,3507,3680,3693,3697,3711,3752,3704,3712,3239,3242,3392,3676] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4279,4440,2827,2828,5245,4508,4509,4524,572,573,4471,4881,5237,5216,5238,5222,2806,5246,4883,4285,561,2821,2820,2805,2807,2824,4282,4470,4472,4468,4478,4436,4891,4433,4463,4437] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [1609,1602,1571,2347,2367,2368,2369,1567,1568,1408,1412,1416,1410,1599,1601,1603,2012,1996,2022,2353,2354,1419,1640,1656,1641,1564,2362,2376,2377,2013,2365,2366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2854,2859,2861,4519,3979,3980,3987,3988,2821,2818,2845,2864,2860,5282,5276,5279,5280,5293,5287,5294,5259,5281,2822,2823,4520,4511,4516,4517,3983,4513,4515,4549,4547,3981,5235,4508,4521,4524,5270] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [509,1351,473,510,512,2682,2683,2684,1354,1633,1352,1482,1483,477,474,475,2673,2672,2677,2678,2681,503,2675,1399,1401,2650,2641,2639,2640,1377,1350,1360,1368,1632,1347,1357,1361,2643,1398] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3759,3760,3761,3791,3793,3783,3838,3878,4139,3810,4123,3839,3841,3842,3792,3716,4115,3879,4110,3714,3715] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1254,1270,969,971,972,923,1246,1252,891,1010,1009,890,941,847,924,970] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1536,1538,1747,1524,1526,1794,1795,1502,1209,1210,1195,1196,1197,871,873,1203,1746] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4257,592,594,1295,4258,4271,4272,588,579,628,552,660,815,657,647,644,646,652,640,641,642,593] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4064,4079,4405,4371,4393,4066,4615,4395,3740,3742,3743,3778] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5484,5485,2837,2823,2834,4518,4519,2845,4005,4232,4239,4003,5490,4240,4252,4253,4260,4261,4262,4004] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3492,3493,3905,3906,3907,3484,4146,3865,3867,3897,5386,5388,5383,3931,5433] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4500,4221,4223,5553,3346,3381,3352,3354,3319,4208,4203,3355,4220,4038,4039,4205,4204] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5639,5637,5638,5520,5542,5568,3409,3408,3372,5511,5544] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1648,1646,2410,2412,2407,2413,2390,2418,2424,1651] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5213,5217,5212,5228,4861,5201,5174,5207,5211,5027,5028,5029,5177,5253,4812,4808,4810] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5074,5077,5075,4654,4655,4650,4637,4638,5086,5088,5073,4802,4804,4670,4665,4666,4669,4661] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3828,3861,3862,3864,3866,3840,4138,4139,3842,4130] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        