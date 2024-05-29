
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
        
        load "data/5FBR.pdb", protein
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
 
        load "data/5FBR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1486,1939,2342,1414,1938,2954,2956,1466,1955,1423,1438,1971,1972,1973,2411,1412,1415,1399,1400,1411,2947,2379,2383,2868,2869,2870,2945,2948,2853,2953,2846,1487,1504,1505,1506,2348,2353,2359,2370,2357,1724,2377,1690,1754,1383,1701,1698,1752,1753,2237,2238,2240,2345,2327,2339,2018,2328,2017,2955,1989,1953,1954,1977,1970,2242,2944,2950] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3970,3972,3875,3888,3867,3868,3870,4612,4835,4840,4634,4635,4206,4002,4007,4009,3880,4010,4013,4015,4019,4020,3879,4003,3844,3850,4211,4212,4215,3874,3840,3853,3855,3856,3858,3866,4618,4614,4620,4621,3976,3982,3984,3988,4004] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [381,702,701,669,670,384,668,654,667,671,672,412,415,700,730,1301,1302,1303,1569,1589,379,380,421,422,1265,1279,1284,1296,2256,703,704,2025,360,382,619,620,653,678,383] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [391,2083,379,380,385,386,387,388,421,422,2058,412,731,730,2050,2049,2256,703,2262,2267,2026,2025,2269,2249,2250,2251] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3698,3699,3020,3722,3726,3696,2731,2761,3702,2757,2759,3700,2750,2753,2805,3017,2729,3021,2789,2754,3723] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3211,3212,3236,3650,3651,3652,3653,3685,4031,4264,4223,3167,3200,3203,4232,4238,4239,4220,4254,4262,3199,3675] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2183,4047,4049,4053,3940,3941,3942,2655,2184,2185,3909,2164,4048,2168,2169,3960,2165,2166,3959,2163,4046,4050,4045,3905,3904,3901,3902,3879,3878] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2878,2507,2508,2509,2377,2545,2546,2874,2888,2891,2378,2418,2413,2547,2445] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2621,2622,2627,2628,2623,2626,4158,2645,4059,4070,4072,3152,4172,4060,4071,3151] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4463,3837,4462,4213,4217,4242,4208,4277,3830,3833,4227,4490] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        