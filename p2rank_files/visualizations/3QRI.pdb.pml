
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
        
        load "data/3QRI.pdb", protein
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
 
        load "data/3QRI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1206,1299,793,796,776,783,792,1284,1290,1292,1296,1298,232,233,235,201,207,208,231,1281,1205,1280,237,803,824,827,380,258,259,376,203,205,206,382,384,529,604,738,739,368,760,764,755,757,759,504,603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2878,2447,2448,2557,3428,3430,3431,2565,2860,2571,2573,2659,3416,3422,3424,2569,2900,2903,2904,2928,2394,2392,2395,2911,2883,2684,2863,2759,2879,3337,3338,3412,2931,2918,2421,2422,2423,2424,2425,2396,2397,2390,2391,2938,2962] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3711,3722,2113,1562,1507,1558,3241,3714,3720,3723,4228,4229,4231,4232,4234,4236,3690,3691,3692,3693,3702,3705,3706,3707,3715,3213,3214,3215,3216,4263,4267,4268,4284,4292,4293,1556,1557,3211,1591,1592,2125,2144,2145,2168,2169,2170,2111,1076,1106,1583,3687,3683,3685,1078,1079,1081,1080,1576,1580,1582,1571,1574,1575,1589,2106,3684,3638] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1115,1117,1118,1288,1071,1072,1285,1281,597,1277,1278,1284,1130,1134,1136,520,521,553,527,552,554,603,501,504,528] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3262,3268,3417,3420,3264,3266,3260,2675,3249,2708,2709,2710,3206,3207,3254,3413,3404,3409,3410,2752,2758,2656,2659,3416,2682] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3797,3833,3834,3836,3837,4091,3086,4076,4084,4085,4086,4087,4118,4119,3092,3094,4097,4098,3082,3083,3084,3088,3831,3064,3089,3062,3065,3125,3798,3801] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [819,856,1359,1369,1692,1755,1734,1480,1481,1748,1744,1747,1463,1180,1343,1344,826,827] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [954,990,948,953,947,929,930,1666,949,1700,1702,1703,951,1995,1996,1970,1971,1706,1959,1964,1957,1958,1949,1705,959] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2924,2925,3044,3375,3052,2969,2971,2973,2922,2966,2996,2997,3003,3004,3007] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3310,3312,2954,3480,3611,3612,3881,3506,3870,3873,3874] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        