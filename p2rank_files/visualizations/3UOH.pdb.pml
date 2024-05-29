
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
        
        load "data/3UOH.pdb", protein
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
 
        load "data/3UOH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1470,3245,3601,3570,1431,1480,1073,1075,1076,1456,1478,3418,1399,3597,3620,1426,1427,3569,1428,1385,1400,1451,1452,1454,3516,3517,1450,3531,1469,3426,3427,3430,3431,3411,3246,3263,3264,3265,3555,3282,3281,3305,3306,1248,3621,3622,3624,3639,3640,1092,1093,1094,1095,1111,1112,1346,1347,1359,1361,1261,1241,3648,3650,3626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3321,3387,3388,3322,2742,2347,2883,2888,2906,3293,3300,2474,2475,3438,2348,2346,2289,2291,2292,3453,2902,2935,2936,2293,2294,2287,2288,3435,3440,3441,3449,2909,2927,2963,2964] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [178,124,1268,1151,756,757,766,1152,1218,1123,1130,1265,1283,793,572,305,713,119,122,794,117,118,123,177,718,736,121,732,739,176] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1332,1676,1329,813,1650,1649,1634,1636,1639,1390,1391,1127,1355,1604,821,782,1328] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3774,3819,3846,2952,2954,2991,3297,3498,3525,3499,3500,3502,2978,2981,2983,2984,3804,3560,3548,3550,3547] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2768,2432,2434,2436,2437,2767,2769,2770,2771,2772,2766,2199,2453,2200,2202,2389,2390] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [29,30,32,283,705,74,264,266,599,600,602,596,597,598,219,220] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2632,2626,2630,2631,2633,3227,3255,2657,3232,3240,420,421,414,2655,3228] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [419,461,462,455,2590,456,485,486,2584,487,1057,1058,463,1062,1085,420,2591] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [678,340,440,441,638,639,640,400,401,402,362,338] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2481,2216,2482,2858,2839,2217,2358,2260,2262] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        