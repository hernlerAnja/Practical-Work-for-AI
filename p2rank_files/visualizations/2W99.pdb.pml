
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
        
        load "data/2W99.pdb", protein
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
 
        load "data/2W99.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3166,3065,2702,2046,2097,2096,2703,2704,2043,2045,3164,3165,3158,2218,2219,3093,2670,2047,2674,2202,2485,2651,2658,3094] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2067,2074,2076,2063,2061,2062,2068,2072,2060,3035,3036,3037,3068,3069,3054,3312,3070,3023,3191,3194,2077,2078,3024,3025,3305,3297,3298,3300,3301,3307,3356,3282,3299,3250,3251,3252,3260,3026,3077,3078,3166,3066,2096] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4061,3743,3954,4073,3734,3735,3732,3611,3612,3622,4097,4095,3740,3539,4065,3953,4060,4063,3982,3983] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2399,2400,2401,2402,2435,2437,1105,1106,1074,82,47,75,76,80,72,73,74,48,49,104,2987,2985,2397] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2913,4209,4057,4206,4245,2877,4255,2876,4253,3532,2846,4248,2872,2875,3534] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3686,3867,3661,3662,3717,3914,3899,3900,3883,3719,3687,3688,3689,3715,3402,3806,3866,3877] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1328,1330,1864,1863,1840,1843,1317,1318,1319,1522,1523,1524,1532,1557,1525,1530,1498,1503,1296,1298] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2952,2954,40,2428,2431,2434,99,2430,2454,2463,2448,2451,38,39,2436] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2867,3085,3134,3135,2900,2901] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1438,1439,464,1403,1071,493,1402,1396,496,147] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        