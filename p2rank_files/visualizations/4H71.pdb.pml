
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
        
        load "data/4H71.pdb", protein
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
 
        load "data/4H71.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2046,2050,2058,2061,2690,2694,2701,2708,2687,3185,3205,3206,3208,3172,2713,2712,2702,2709,3015,2064,2066,2067,2069,3034,3059,2070,3076,3019,3052,3054,3055,3056,3057,3012,3075] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2003,3129,2008,2010,2760,2794,2000,1997,2017,2019,2798,3118,3121,3120,3127,3106,2983,2969,2970,2971,2973] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [308,993,1006,1009,1010,1011,307,456,457,458,459,460,1816,980,1815,971,1814,278,283,1856,280,294,295,463,1857,1012,273,1808,1834,1810,1838,1839,1842,1832,1841,1812,1813,1833,3404,3405] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [976,973,1239,1301,1302,341,343,344,953,954,1261,1281,1282,1283,1285,1246,324,332,335,338,340,320,1242,958,959,972] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [271,277,1331,1332,259,1020,1353,1355,1346,1197,1200,1210,1026,284] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2077,2648,2606,2646,2605,2644,2095,2578,2600,2601,2603,2093,2096,2097,2119,2130,2132] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [912,367,369,371,842,868,404,406,366,370,351,356,865,866,867,869,870,908,910] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2197,2198,2199,2170,2196,2212,2624,2625,2622,2705,2057,2659,2661,2662,2663] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1576,1577,1578,1564,1407,1452,1383,1387,1432,1389,1453,1454,1474,1476,1455,201,202,203] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1177,1178,1190,11,13,1075,1077,17,22,23,1,6,7] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2317,2318,2450,2451,2452,2453,2454,2313,2314,2316,2352,2353,2315,2449,2793,2806,2809,2796,2799,2369,2455] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [586,626,587,589,591,592,716,718,719,609,627,1875,1878] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1425,1426,1427,1428,959,966,985,977,973,1302,1398,1280] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        