
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
        
        load "data/5F94.pdb", protein
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
 
        load "data/5F94.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3736,3737,3760,3879,2826,2954,3036,3865,3866,2829,2831,2832,3863,3864,2952,3016,3017,3029,3033,3753,3749,2801,2802,2795,2797,2850,2848,2849,3720,3887,3880,3881,3883,3885,3991,3022,3024,3026,3891,3897,3859,3860,3748,3858,3857,3309,3338,3337,3331,3345,3357,3776,3777,2799,3322,3324,2937,3314,3317,3328,1714,1722,1724,1749,1746,1747,1748,1773,2821,1772,1960,1963,1964,1740,1741,3981,3983,1766,1943,1946,1947,1954,1956,1959,1965,1717,2807,2813,2816,2822,2819,2823,2825,2974,3710,3960,3966,3901,3965,1938] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4346,1285,1286,212,214,217,220,344,346,1270,1284,428,429,414,4345,4347,198,204,1141,1142,1165,1269,1271,222,223,1262,1263,1268,1181,1264,1265,207,4371,4312,4344,342,706,192,188,190,239,240,241,329,533,1125,1292,1288,1290,1393,1115,418,1304,1368,1306,4315,4335,4336,4338,1383,4555,4364,4536,4537,1367,1385,4361,1154,1155,1158,1153,4319,4322,783,785,186,757,1182,731,728,187,724,726] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1449,1450,1374,1376,1379,4083,4086,4318,4324,4329,4330,1448,1447,1372,1477,1485,3972,3974,3977,4047,4048,4046,4075,4081,4355,4356,1720,1731,1757,1758,1732,4009,1412,1407,4005] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2856,2860,2861,2777,2963,2640,2641,3199,3217,3218,2778,2961,3287,2857,2859,2757,2758,3200] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [354,355,612,593,684,611,169,247,249,250,248,251,252,146,337,594,31,18,17,144,168] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3393,3429,3798,3795,3431,3547,3477,3509,3510,3511,3797,3394] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [794,1200,1203,1202,914,916,831,889,915,829,793,952] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2225,2228,2237,1055,1056,2537,1028,1578,1548,1550,1551,1058,1549,2230,1554,1542] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4144,4146,4147,3651,3653,4807,4148,4149,4152,4796,3650,4813,4816,4818,4825,5115,5116,4139,4140] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4091,4497,4496,1916,1504,1900,1901,4102,1516,1515,1899,4112,4113,4114] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        