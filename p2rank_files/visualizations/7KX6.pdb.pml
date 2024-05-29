
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
        
        load "data/7KX6.pdb", protein
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
 
        load "data/7KX6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2145,2144,2605,2991,3053,3055,2992,3052,2090,2096,2681,2652,2654,2990,2983,2097,2098,2099,2101,2102,2261,2262,3060,3062,3059,2984,2472,2473,2623,3011,2626,2644,2647,3012,2094,2245,2609,2130,2107,2125,2126,2131,2401,2604,3069,3071,2471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [153,155,272,1099,1103,980,1097,1096,459,996,121,634,968,975,630,997,977,995,637,270,271,587,585,588,382,115,116,119,609,592,606,604,154,255,627,1104,1106] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [972,1240,1490,963,1251,1249,1446,1447,1491,1473,649,678,679,683,676,653,655,656,1238,1239] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2131,2276,2277,2120,2121,2123,2955,3078,3085,3083,2122,2124,2126,2972,3061,3062,2995,2971,309,313,3075,3076,3077,2278,2356,2372] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3205,3207,3446,3447,2987,2988,2670,2672,2673,2666,2701,2691,2693,2694,2978,3403,3402,3195] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3787,3307,3292,3294,3111,3299,3300,3302,3309,3279,3280,3281,3290,3291] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1325,1324,1334,1335,1336,1338,1351,1842,1343,1170,1155] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        