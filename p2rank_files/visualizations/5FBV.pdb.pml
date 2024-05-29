
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
        
        load "data/5FBV.pdb", protein
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
 
        load "data/5FBV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1412,1414,1415,1938,1939,1399,1486,1487,1411,1423,1438,1466,1724,2356,2357,1701,1698,1505,1506,1752,1753,1754,2379,2383,2868,2869,2870,2411,2370,2373,2377,2948,2853,2956,2846,2348,2359,2353,1467,1973,1400,1504,1690,2237,2238,2240,2242,2016,2017,2018,2944,2954,2955,2345,2339,2947,2349,2351,2945,2327,2342,1954,1955,2328,1989,1970,1971,1972] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [4621,4357,3856,3857,3858,3866,3867,3844,3855,3870,3875,3874,3850,3853,3854,4019,4212,4214,4215,4206,4211,4643,4642,4619,4612,4614,4620,4835,4634,4635,225,226,227,228,3837,3840,3984,3988,230,231,233,3970,3972,3976,3887,3885,4002,4007,3879,3880,4020,4009,4010,4013,4015,229,4003,4840,4844,4839,261,259] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [380,386,387,388,389,385,2056,421,422,2058,356,381,412,415,701,729,730,382,391,2256,703,2262,702,2025,2026,2269,2250,2252,1265,704,2049,2050,2083,2249,2251] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [382,383,384,620,619,678,415,701,1301,1302,381,360,380,667,671,672,653,654,1570,1589,1303,1265,668,704,670,1286,1288,1279,1283,1284,1285,703,702] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2751,2805,2731,3021,3017,3020,2761,2749,2750,2753,2788,2729,2754,2757,2759,2789,3702,3698,3699,3700,3696,3720,3721,3722,3723,3726] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2891,2377,2378,2418,2874,2413,2444,2507,2508,2509,2546,2545,2547,2878,2888] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        