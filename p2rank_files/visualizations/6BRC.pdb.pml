
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
        
        load "data/6BRC.pdb", protein
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
 
        load "data/6BRC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [106,108,1107,109,112,116,117,1105,1104,1120,1122,375,1100,1101,1106,1108,374,337,118,121,122,272,130,260,261,270,271,345,595,100,93,94,95,96,98,99,138,139,140,244,473,611,609,610,612,613,614,608,635,630,632,618,257,258,1014,1005,657,666,1099,1030,1031,472,656,638,3566,338] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3072,3073,3074,3067,3068,3071,3075,2237,2239,2240,2241,2334,2575,2577,2595,2581,2224,2571,2572,2573,2574,2576,2981,3066,2997,2431,2363,2362,3081,2071,2972,2620,2628,2629,2998,2598,2593,2065,2066,2116,2058,2061,2063,2064,2114,2115,2078,2081] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3195,3193,1597,3279,3194,3273,3283,3243,1618,1316,3584,3550,3551,3583,3581,3559,3560,1587,1620,1621,1226,1227,1228] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3528,3533,3531,3516,3515,3520,3526,3527,1552,1553,3532,1570,1246,1253,2650,2653,2654,2656,2657,2663,2655,2640,1557,1565,3220,1563,3213,3225,1568,1569,2974,2973,3490,3234,3236,3219,3574,3218,1252] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1258,1552,1553,3532,1246,1253,1254,3528,3533,3520,693,1001,1007,1267,1269,1002,990,992,690,691,692,687,1251,1252,1589,1611,3219,3574,3218,1557,1565,3220] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1603,3087,3088,2085,2086,2087,2094,2096,3072,3073,3074,2240,2241,2091,3089,2301,2333,2308,2078,2081] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3153,3339,3341,3342,3343,3868,3869,2864,2866,2832,2834,3883,3884,3344,3345,3371,3877,3875,3876,3871] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        