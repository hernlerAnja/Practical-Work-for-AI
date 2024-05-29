
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
        
        load "data/5XQX.pdb", protein
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
 
        load "data/5XQX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1247,1254,293,295,296,1246,290,291,292,905,264,1379,1374,1375,1376,267,316,317,318,444,259,260,261,2757,256,459,461,561,666,819,821,822,457,873,2758,2759,1271,1270,843,846,837,839,872] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4123,4122,4090,4120,4131,4132,4133,4438,2838,2840,2850,2852,2853,2855,4441,4443,4444,4431,4434,4087,4124,4121,4157,2819,2822,2824,4081,4083,4080,2837,2831,2833,1448,4076,4079] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1496,1498,1241,1242,1712,1756,961,1462,1485,1486,1784,1786,1461,889,891,894,1233,884,886] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4367,4770,4771,3140,3142,3143,3145,4369,3098,3138,3139,3141,3144,3146,3100,3103,3099,4746,4747,2963,2964,3135,3134,4376,4374,4375,4377,2997,3022,3129,4406] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3515,3517,4971,8,3889,3530,3531,3877,3878,4979,4980,3516,4969,4970,12,4931,3823,3842,3829,3831,3833,3826,4957,4972] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2043,1527,1528,1564,2077,2469,1561,2064,2065,2477,2468,2462,1579,1604,1583,1585] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1977,1957,1964,1956,2237,2235,2415,2008,2009,2010,2012,2452,2453,2448,1960,2447,2412,2241] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3042,3044,3043,3473,3477,3453,3467,3495,65,66,61,71,73,43] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2354,2355,2369,2324,2326,2313,2613,2614,2325,994,995,996,2583,2585,993,1027,2618,2629,1018,1728] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [686,690,437,359,360,401,438,361,362,697,191,685,811,203,189,188] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        