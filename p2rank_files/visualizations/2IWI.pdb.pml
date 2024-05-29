
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
        
        load "data/2IWI.pdb", protein
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
 
        load "data/2IWI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1126,1131,1132,3081,3083,3095,3096,3098,3100,1133,3084,1118,1107,1116,1119,876,859,875,874,1158,1160,889,890,892,582,584,586,883,884,579,620,613,1151,3085,3086,3088,1415,1416,1417,1424,1425,1384,1409,68,69,70,71,72,73,76,77,79,65,81,61,2953,2954,1004,1005,1006,900,893,1019,1020,1022,1026,3094,3099,3060,3061,3063,2994,2997,2998,2999,3001,3105,2951,2963,2966,2952] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [565,566,567,592,594,891,893,593,916,549,552,999,1000,1003,1004,1006,900,998,995,997,98,99,193,48,49,50,52,53,525,550,917,526,100,206,304,507,509,510,514,413,80,81,82,61,55,77,78,79,75,54,892] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1932,1978,1928,1929,1930,1934,1935,2749,2416,2417,2418,2444,2445,1956,1957,1958,1959,1960,1961,2093,2859,1979,2750,2759,2752,2848,2849,2850,2851,2357,2252,2253,2255,2852,2853,2856,2857,2183,2868,2079,2356,2092,2399,2775,2400,2373,2375,2401,2776,2361,2402,1954,2155,2858,2154] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1240,3326,3323,3324,1239,1241,3072,3069,3327,3331,1142,3099,2999,3000,3001,1140,1201,1210,1135,1104,1107,1111,1204,1126,1129,1130,1134] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2751,2433,2435,2437,2744,2471,2745,2464,3243,3268,3275,3242,2467,2736,2735,3021,2737,3019,3282] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1867,1902,1906,2086,2100,2333,2334,1988,1986,1863,1866,1889,1891,1864,1865,2085,1887,1888] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        