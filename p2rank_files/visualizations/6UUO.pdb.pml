
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
        
        load "data/6UUO.pdb", protein
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
 
        load "data/6UUO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2372,2819,2367,2371,2756,2757,2739,2006,2007,2008,2370,2762,2363,2364,2365,2385,2759,2761,2395,1930,1900,2009,2011,2012,1933,1943,2737,2742,2731,1901,2236,2342,2343,2163,2325,2329,2162,2134,2144,2833,2834,2835,2837,2838,2841,2845,2853,2855,2856,2857,2022,2023,2024,2842,2020,2019,2040,2137,2113,2232,2245,2233,2246,2249,2185] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2808,2785,2807,2800,2801,2538,972,2778,2780,943,944,945,950,973,530,534,399,402,989,508,2212,2201,2824,2244,2220,2219,2572,2593,357,370,513,167,170,171,516,509,988,172,174,2352,2823,2241,2224] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [91,117,118,119,924,926,522,92,504,529,527,499,186,520,1008,1009,999,1002,1007,907,921,896,904,393,394,998,984,185,196,538,927,549] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [407,487,321,1019,485,1012,488,277,486,298,297,1017,1013,195,196,500,999,1002,1003,1004,1010,1015,392,394,385,390,391,993,1016,1018,1020,341] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [965,972,2780,732,699,698,2785,377,751,973,369,370,2377,2381,2779,2379,2380,1996,753,2782,1992,1989,2356] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [56,460,461,442,443,466,480,201,124,60,61,65,66,69,191,57,143,181,28,31,493] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3180,3181,3178,3083,3321,3322,3168,3169,3170,3118,3163,3053,3055,3057,3275,3276,3060,3063,2708] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1815,1817,1807,1808,1822,1800,1972,1984,1833,2259,1859,1860,1829,1842,818,816,784,808,809,810] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2031,2300,2307,2301,1868,1865,2285,2014,1881,1864,1882,2013,2032,1867] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        