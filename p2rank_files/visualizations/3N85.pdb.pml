
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
        
        load "data/3N85.pdb", protein
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
 
        load "data/3N85.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3049,3047,3277,3278,3272,3485,2117,2118,2048,2050,2024,2032,3051,2017,3506,3507,3510,3498,3488,3486,3487,3290,3280,3279,3073,26,30,31,35,36,269,25,28,20,5,6,7,3503,270,1966,22,210,205,207,3499,3500,3501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3354,3647,5352,5366,3574,7133,5373,6585,5401,3181,3180,3639,3350,3194] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1710,1714,1750,1699,1700,1705,1706,1707,1751,1752,1694,1715,1786,1770,1771,1772,1680,1973,1974,1749,1980,1981,447,257,258,446,251,436,437,438,247,23,15] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2329,2328,2330,2561,2836,2837,2838,2181,2563,3056,2160,2135,2168,2130,2347,2345,2129,2120,2126,2372,2114] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [5023,5030,5031,4878,3344,3345,3346,3353,3355,4877,4872,7123,7124,7125,7126,7127,3159,3154,3155,3164,3165,3340,2922] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [63,174,3110,3112,147,111,107,112,117,137,3092,3303,3108,3082] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2430,2587,2428,2431,2357,2423,2355,2356,2361,2362,2605,2606,2435,3081,3083,2574,2852,2853,3070,3065,3085,3090,3091,3092,51,3086] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3665,3667,6778,6780,3763,6787,3651,3656,6769,3753,3754,3628,3631,3636,3634] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [7114,7116,2921,2928,7091,6344,5065,5063,5066,5067,5073,5074,7117,7119,7154,7163,7165] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [7358,7730,7332,7366,5565,5561,5563,5584,5586,6270,6272,7348,5568,7338,5574,7343,5571,7340,7329,7335] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5963,5964,5965,7572,7573,7553,7554,5729,7551,7560,7556,7709,5988] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        