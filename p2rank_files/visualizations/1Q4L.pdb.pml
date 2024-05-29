
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
        
        load "data/1Q4L.pdb", protein
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
 
        load "data/1Q4L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3940,2945,2951,2942,2944,2988,3935,4053,3947,4050,4051,2933,2935,2939,2986,2937,2987,3099,4052,3535,3963,3964,3509,3516,3317,4044,4045,4046,3489,3318,3084,4047,3484] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1234,588,760,806,1235,1211,215,216,222,259,753,755,756,370,211,257,204,205,206,212,258,207,208,766,355,777,780,787,1208,1218,1206,1316,1317,1318,1315,1322,1324,481,1321] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2995,3091,2998,2999,3110,3462,3089,3400,3399,3382,3380,2757,2758,2888,2890,2771,2913,2993,2996,2994,3092,3404] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1792,1510,1544,1548,1793,4166,1511,1432,1433,4275,1435,1538,1546,1549,4169,1472,4510,4548,4201,4516,1437,1440,4521,4522,1468,1469,1509,1459,1819,1781,1787,1788,4197,4198,4238,4239,4240,4547,4273,4277,4278,4162,4267] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3923,3937,2954,4053,3947,2945,2952,1784,1791,3905,3906,3907,3924,2955,2957,2959,2968,4074,2970,1775,1778,1808,1810,1809,1782,1783] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4511,1195,1208,4512,4513,1178,229,1324,225,226,1211,216,217,1176,1177,1345,1456,4537,4538,4520,4531,4539,4507] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4288,4290,4588,4629,4630,4951,4673,4623,4674,4553,4556,4555,4586,1444,1446,4746,4530,4563,4745,4750] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [381,28,29,363,159,161,183,184,269,379,651,670,671,733,362,265,266,270] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [843,1253,1256,1255,1005,968,969,2458,1242,842,935,878,880,795,1240] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3607,3608,3609,3664,3971,3969,3571,3734,3525,3572,3982,3985,3986,3984,3696,3671,3695,3697,3698,3976] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1602,1603,1604,2281,2290,2292,1615,1611,1605,1609,1111,2287,2299,2600,1109,1108,1107,1115,1116,2599,1610,1083] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4070,4073,3197,3199,4072,2969,2970,4068,2968,4158,3897,4157,4183,1982,1990,1983,1801,4173] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1859,1986,1988,1982,1857,2238,1900,1894,1901,4175,1559,1561,1944,1945,4157] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4216,4475,4432,3551,3549,3553,1784,3922,3931,4229,4230,3932,3936,4214,3930,4205] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3838,5012,5003,5005,3837,3836,5000,3840,4334,4338,4339,4331,4332,4340,4341,4344] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1565,1577,4721,1443,1430,1435,1424,4743,1445,4283,4292,4293,4294,4710,4722] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        