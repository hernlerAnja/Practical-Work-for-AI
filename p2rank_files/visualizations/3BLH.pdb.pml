
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
        
        load "data/3BLH.pdb", protein
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
 
        load "data/3BLH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [544,1170,1171,1178,545,1169,1177,1070,1093,1094,699,700,685,711,712,713,691,307,199,141,142,143,145,679,677,656,666,682,437,660,662,323,324] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1130,2351,2352,2353,2354,2356,2357,2358,2359,801,2360,1102,1101,738,739,803,782,799,787,703,705,1106] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [167,160,163,168,170,436,437,643,319,320,644,322,324,328,340,1190,1176,1189,1192,179,1191,177] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4114,4043,4112,4020,4032,4035,4036,4040,3978,3957,3959,4202,4203,3980,3985,3987,4132,4102] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [380,372,373,376,378,3458,3459,389,339,612,622,611,336,3427,3452] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3781,3783,2807,4395,4397,2730,3759,3791,3790,4367,2704,4369,3814,3813,3815,2728,2727,2729] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2406,2409,2375,3543,2393,2394,2454,3531,3558,2455,3852,3853,3896,3897,3888,3890,2865,2905,3548,3553,3555,3562] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1426,1825,1849,1852,1834,1840,1846,1847,1437,1439,1436,1424,1455,1841,1842,1863,1864,1865,1826,1400,2158,2159,2165,2152,1828] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3016,3044,3218,3219,3220,3248,3259,3257,3258,3255,3193,3388,3226,3228,3223,3384,3385,3026] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        