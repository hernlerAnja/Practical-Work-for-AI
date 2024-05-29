
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
        
        load "data/5EAK.pdb", protein
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
 
        load "data/5EAK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [690,692,697,710,106,109,694,266,164,166,165,671,281,282,278,280,676,670,1106,1107,535,534,536,1182,1184,1187,1188,1183,105,111,713,720,1078,1081,1083,1219,1190,1222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3551,3165,3522,3550,3120,3138,3626,2979,2980,2710,2608,2609,2610,3115,3116,2724,3114,2556,2558,3157,3624,3628,3625,3631,3632,3633,3634,2726,3141,3154,3134,3136,2550,2553,2549,2551,2555,3132] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1485,1486,1514,1098,1274,1524,1525,1526,1272,1273,1243,1262,1552,727,766,1511,1512,1513,1487,1519,1074,1237,1241,774,735,737,726,729,730,1071,1073] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3173,3179,3518,3181,3208,3210,3939,3699,3700,3701,3952,3670,3689,3542,3515,3514,3912,3914,3951,3953,3885,3913] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3587,3150,3151,3152,3146,3188,254,3189,3191,183,92,81,82,90,84,85,3586,3588,702,703,3199,3201,691,692,93,94,3292,3192,3558,3160] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4551,4562,4582,4584,4797,4852,4568,2937,2938,2939,2940,2988,2989,2920,2912,4878,4880,4913,4915,2987,4884,4631,4902,4571,4572,4874,4872,2921] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [495,543,544,545,2370,2369,493,494,496,2138,2141,2144,2155,2135,2157,2159,2118,2453,2454,2457,2425,2204,2447] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2519,2521,2520,2495,2497,2479,2494,3089,3091,3092,3087,3088,3090,2716,3031,3032] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [892,893,929,2073,2068,2078,2092,894,897,898,2061,901,902,906,520,505,511,512,930,2097] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1059,1028,1031,1176,1200,942,1177,1406,1024,968,969,1201] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3386,3385,3413,3472,3503,3620,3645] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        