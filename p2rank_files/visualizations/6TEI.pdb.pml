
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
        
        load "data/6TEI.pdb", protein
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
 
        load "data/6TEI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3192,3193,3198,3199,3257,3258,4137,4138,4139,4140,4141,4135,3759,4164,3770,3774,3776,3777,4162,4163,4153,3200,3202,3204,3205,3213,3214,3217,4124,4123,3221,4128,3791,3799,3194,3196,3197,3754,3758,3768,3259,3734,3735,3377,3378,3379,3490,4261,4264,4263,3599,3243,3395,4265,4266,4271,4288,4269,4270,4272,4108,4296,4297,4107,3230,3224,3233,3235,3454,3375,3732,3362,3363,3739,3755,3761] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [379,443,444,972,1358,969,965,385,386,388,389,390,380,382,949,953,1335,1336,391,399,400,403,445,920,548,918,915,916,549,783,1359,1458,785,429,563,565,1464,1465,1467,1461,1460,1456,1459,412,416,418] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1935,1922,3314,3315,1921,3313,3618,3624,3619,1982,1967,1968,1969,3627,3144,1964,1965,2051,2052,2053,1983,1984,3133,1942,3323,3344,3355,3340,3737,3745,3142,3300] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1644,1646,1657,1624,1625,1319,1317,1931,1326,1324,1325,3080,3081,3082,3070,3065,1332,1334,996,997,998,1331,3086,3100,1930,3083,3087,3089,1007,1006] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [400,403,1332,1333,1334,1335,1336,1331,1466,1467,418,420,1486,1492,1618,1491,1617,1620,1302,1303,1621,1319,1318] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1634,1986,1992,1989,1990,1993,2008,2010,2254,3508,2983,2990,2998,3540,2993,2996,2984,2985,2989,3058,3060,3051,3056,3063,3532,3529,3528,3535] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [415,416,417,418,419,421,422,1466,1467,581,603,635,636,676,1483,1484,1485,604,580,1486,1491,1493] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4572,4578,4576,4577,4586,4587,4590,5472,5471,5466,2862,4581,2880,5469,4040,4042,2888,2890,4016,5481,5477,2867,2870,4613] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3435,3703,3433,3094,3651,3071,3073,3499,3461,3432,3468,3470] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2406,2404,2397,2402,2388,2392,1922,3314,1920,1921,3313,1942,2084,3312] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3004,3013,3021,3040,3043,4364,3011,4345,4343,3032,3033,4312,4365,3031] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1883,1882,1174,1138,1035,1130,1367] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4753,4754,4889,4725,5207,5209,4727,4853,4854,4726,4747,4761,4878] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1559,1560,212,223,221,222,193,1538,1540,184,191,213,1506,1507,201] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1767,2655,2656,71,2657,1785,1808,1781,1237,1773,2658,2662,81] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4155,3979,4687,3943,4661,4172,3840,4688] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        