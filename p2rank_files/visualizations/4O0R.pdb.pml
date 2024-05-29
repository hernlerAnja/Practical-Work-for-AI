
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
        
        load "data/4O0R.pdb", protein
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
 
        load "data/4O0R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [245,246,1120,1211,1213,1214,1206,498,462,1227,1229,460,461,466,247,375,391,473,467,470,373,423,427,431,435,464,3512,3523,3528,1239,1240,465,3500,3504,3491,3513,1099,1110,3525,3527] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [263,264,265,1136,742,358,754,756,603,736,1205,735,371,373,374,375,497,778,760,763,226,225,222,245,1207,1208,1211,1213,1206,247,1137] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2732,2735,2757,2760,2763,2764,2765,2838,2762,2790,2791,2848,3278,3279,3239,3230,3455,3456,3457,3458,3459,2833,3453,3454] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3448,3440,2641,3447,2969,2532,2531,2625,2990,3369,3371,2992,2988,2840,2530,2551,3370,2482,2483,2485] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1239,465,1354,1355,1356,3863,1072,3517,3523,1233,438,3525,3527,3870,464,435] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1697,1698,1699,3520,3901,3612,3468,3469,3476,3502,3519,3472,3610,3521] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1491,1492,1487,1494,1493,1010,1012,1268,1484,2037,2035,2036,1498,1499,1501,1009] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1707,1728,1703,1738,3908,3909,3911,1440,1442,1726,1727,1732,1733,1736,1731,1348,1349,3885] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3244,3672,4206,4207,4217,3670,3662,3663,3664,3246,4208,4212] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        