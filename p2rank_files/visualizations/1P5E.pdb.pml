
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
        
        load "data/1P5E.pdb", protein
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
 
        load "data/1P5E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5539,5632,5172,5560,5175,5561,5160,4722,4620,4564,4565,4567,5633,5114,5115,5117,5119,5120,5124,5141,5144,4983,4619,4621,4575,4563,4569,4572,5532,5533,5544,5637,5640,4739,4602,4737] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [701,727,95,88,89,146,98,107,145,147,1086,650,670,667,640,643,645,248,686,93,90,91,92,508,405,263,264,265,644,646,1087,1158,509,698,1058,101,108,1159,1163,1166,1065,1070] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1236,1251,1252,1253,2840,3511,3544,3546,3510,3575,3577,3661,3663,3664,3665,3691,3666,2842,2846,4362,3692,3671,1238,1209,1255,1273,3151,3150,2854,2855,2856,3517,1210,2858,3518,3519,3520,2850,1275,1213,1214,1222,1223,3640,4376,3638] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3746,2905,2908,2911,3740,3503,3859,2939,3736,3801,3787,2556,2569,2570,3798,3815,3785,3786,2881,2877,2904,3491,3497,3486,3837,3838,2552,3738] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1441,1440,1439,1876,1427,1874,2183,2189,2190,2191,2197,2198,1832,1875,2199,1830,1841,1846,1847,1450,1451,1461,1465] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [566,3423,3360,3361,300,590,315,311,298,3349,3355,3359,3357,3386,3387,3388,305,343,344,346] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [8311,8333,7977,7971,7043,7413,8275,7379,7382,7385,8259,8260,8210,8261,7960,7965,7968,7970,8289,8312,7044,7030,7355,8220,7376,7351,8214] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [7985,7324,7328,8019,8020,5725,5727,7314,8164,8165,8133,8135,8140,8141,8145,8138,7983,7323,7984,8836,8838,8824] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [108,111,118,125,404,264,265,282,269,120,130,1179,1165,1166,1188,370,372,368,369,371,373,374,116] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [7330,7329,7331,7985,7328,8018,8019,8020,5696,5727,5729,5747,5749,5726,5721,5725,5710,5683,7625,7314,7987,7991,7992,5697,5687,5688] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3596,4040,4041,4042,4044,4037,3594,3595,4006,2428,2429,2431,2433,3550,3582,3583,3585,2434,2438,2439,2441] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [6373,6375,6404,6416,6405,6407,6378,6381,6382,5890,6222,6181,6367,6328,6324,6326,6327] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5924,6673,5915,5914,6315,6663,6664,6309,6306,5902,5911,6350,6322,5900,5901] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [2156,1979,1980,2172,2165,1978,1823,2160,2161,2162,2163,2164,2127,2150] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [8518,6902,6908,6912,6874,8069,8070,8514,8515,8060,6905,6907,6872,6875,8024,8068,8057,8058] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2396,1441,2395,1440,1439,2189,2190,2198,1451,1461,1465,1450,1478] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        