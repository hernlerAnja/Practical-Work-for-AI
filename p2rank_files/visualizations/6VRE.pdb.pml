
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
        
        load "data/6VRE.pdb", protein
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
 
        load "data/6VRE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [132,133,135,136,658,661,662,643,650,677,304,639,137,185,187,186,289,1173,1169,507,638,1084,1167,1168,1085,664,306,1058,1069,138,144,684,680,147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2166,2159,2160,3094,2696,2689,2692,2215,2161,2165,2214,2317,2164,2666,2673,2163,3067,3078,2333,2171,2172,3185,2650,2651,3176,3177,3093,2655,2670,3178,3182,3183,2334] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2464,1355,1356,1897,1898,2430,2433,2435,2438,2462,1889,2985,2986,2989,3006,3223,2459,2460,2461,1385,1395,1382,1381,1371,1380,1354,1888,1386,1396] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [971,1925,1928,1929,1941,1407,1911,961,1431,1930,1934,1935,1401,1403,1405,1408,959,1409,1412] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [803,827,828,757,753,755,750,751,752,754,850,861,862,1097,1128,1106,1103,1104,1105,778,749] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2859,2860,3136,3137,3112,3114,2837,2857,2870,2871,2812,2836,2787,2760,2761,2762,2763,2764,2766] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3390,3392,3877,3880,3881,3882,3416,3387,3393,3394,3874,3388,2970,3386,2940,3886,2968,2980,3894] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3057,3059,3284,3286,3486,3487,3522,3523,3524,2710,3069,3070,3071,3488] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        