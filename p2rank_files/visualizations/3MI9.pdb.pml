
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
        
        load "data/3MI9.pdb", protein
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
 
        load "data/3MI9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [517,487,520,4752,4753,489,493,1053,1267,4766,456,3401,3403,3093,3096,4715,4783,4785,4701,4703,4790,3873,3878,3867,4032,4700,4713,4717,4034,486,3394,3395,3829,3833,484,452,483,485,3383,3844,3089,3090,3095,3119,3853,3084,3850,482,454,481,488,1045,4746,1044,4733,1032,1041] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [324,578,322,705,707,199,144,192,200,141,728,731,737,723,725,727,147,1140,1139,1116,758,745,753,759,1217,1215,1216,1220,1124,145,307,320] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4923,4925,4926,4017,4053,4282,4284,4043,4045,4016,4973,4975,4283,4606,5012,4605,4655,4654,4924,5004,5003,4054] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4964,4989,3017,3018,4957,4845,3047,3048,4988,4990,4850,4998,5040,5041,4846,3039] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3710,379,406,402,403,404,405,378,3741,3742,655,654,656,382,670,3775,668,355,356] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2791,2920,4114,4119,2788,2790,4153,4154,2787,2884,4129,2893,2919,4623,4624,4102,4596,4598,2762,4562] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4261,4262,4303,4319,4321,4322,4326,4260,4387,4415,4344,4385,4395,4397,4240,4242,4485,4486,4259,4263,4264,4268,4270] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2345,1563,1571,1572,982,2348,2354,2355,1555,1010,1011,1012,1018,1277,1278,1564,1565,1556,979,1014,1292,1545,1546] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1103,1450,1112,1451,1437,1711,773,1659,1712,1701,1439,772,799,1692,1117,1105] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2686,2734,2735,4135,3145,3814,3185,4136,3146,3842,4179,4180,3841,3826,3836,3838] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3509,3511,3540,3566,3587,3531,3542,3501,3499,3502,3503,3506,3671,3672,3670] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1538,1539,1541,1522,1523,1960,1961,1962,2312,1908,1911,1917,1925,2299,2305,2306] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        