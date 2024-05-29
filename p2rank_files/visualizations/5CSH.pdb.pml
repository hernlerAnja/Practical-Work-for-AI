
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
        
        load "data/5CSH.pdb", protein
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
 
        load "data/5CSH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4030,4576,4596,4607,4667,4608,4031,4027,3850,3849,3736,3739,3765,4609,3734,3735,3743,4029,4054,4055,4056,4073,3880,3839,3741,3720,3836] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4162,4166,4009,3318,4165,4170,4171,4172,4173,4049,3316,3317,3139,3182,3196,3197,3198,3141,3143,3144,3152,3153,3156,3133,3135,3713,3715,3697,3136,3131,3132,3138,4164,3698,3700,4036,4063,4064,4336,4025,3169,3172,3174,3160,4197,4198,3163,3164,3537,3536,3669,3671,3672,3673,3674,3314,3538,3678,3301,3302,3694] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1291,1295,1835,1831,1860,1861,1114,1319,1320,1335,1144,1337,1098,1108,1071,1029,1067,1072,1100,1103,1113,958,959,962,964,966,1294,993,1318,1293,946,991,995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [422,424,358,359,364,365,367,369,378,899,897,423,527,528,361,923,542,543,399,401,408,379,382,900,895,898,1430,762,1426,1428,1434,1313,1429,1327,1328,1329,904,764,920,924,544,1435,1437] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [259,814,816,868,626,600,601,598,260,867,574,624,627,235,3491,3492,3493,3494,3495,3496,3497,3501,237,238,633,635,236,664,850,851,852,853,3467] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [302,325,326,327,552,810,817,821,822,823,824,278,279,277,859,804,874,807,809,303,534,550,551] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1287,1289,1623,1625,1626,1303,1305,1306,1907,1910,967,968,1603,1605,1609,1613,1616,1637,1638,1295,1296] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4009,4171,4172,4173,3317,3182,3153,3393,3429,3169,3334,3357,4189,3172,4197,4198] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4505,2835,2818,2825,4493,4501,4502,5363,5373,2845,3917,5417,5411,5414,5416,3943,5394] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [61,1207,2645,2648,2650,51,1761,2639,1752,43,1746,1760,1764,44,48] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2950,2952,4218,4244,4246,2943,2969,2971,2981,2955,2960,4265,4213,4212] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [197,198,1510,1477,1536,1538,207,1476,200,169,181,186,188,176,178,1508] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        