
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
        
        load "data/3V8T.pdb", protein
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
 
        load "data/3V8T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2282,2397,2847,2865,2866,2416,2417,2814,2817,2821,2820,1032,1035,2822,2399,2402,2426,2052,2053,2423,2391,2394,444,445,455,1050,1051,456,2040,1031,2299,2301,2042,2045,2049,2047,2836,2837,1019,1022,2833,1024,618,1016,228,229,604,625,480,2244,2247,2246,1067,1068,596,599,497,499,619,1046,1049,2848,2829,2830,2849,216,2622,218,221,223,225,211,2257] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2441,2448,2438,2470,2886,2776,1942,1936,1937,1939,1930,2069,2405,2407,2409,1931,1932,1934,1967,2084,2085,2385,2387,2389,2086,2887,1966,1929,1952,2386,2383,2384,2879,2393,2804,2805,2413,2421,2437] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [987,1007,260,262,1089,1088,978,648,261,116,1081,1006,1080,639,640,643,650,672,612,615,616,114,609,611,109,110,111,112,586,585,595,587,589,142,245,143] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2639,2661,2698,3615,3618,3655,23,14,3646,189,2240,2242,492,6,7,8,9,10] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2294,2013,2014,1753,1828,1826,1827,1829,1830,901,440,841,863,864,839,862,865,1762,1725,1843,1834] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2336,2340,2341,2343,2346,2349,1858,1897,1899,1901,1882,2319,2363] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2141,2172,2146,2148,2085,2086,2887,2370,2111,1949,2909,2908] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [269,565,79,80,81,538,548,550,551,517,37,35,38,39] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1625,1626,1627,1628,1629,1420,1282,1123,1469,1472,1475,1128] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        