
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
        
        load "data/5KPK.pdb", protein
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
 
        load "data/5KPK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [240,235,236,237,238,239,241,785,213,204,210,215,216,1216,1314,1315,1316,1319,1313,804,1233,1321,257,258,259,355,753,206,778,758,205,208,368,370,481,588,1232,4557,4563,4566,4567,4568,819,4558,829,830,831,832,1192,1193,1205,1206,1209,1204,803] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3978,3979,4088,3577,3578,4007,3365,3527,3532,3131,3976,4006,4087,3364,2979,2980,2986,3033,3034,2981,2982,2984,3525,3528,3549,3552,3543,3545,3604,3558,3559,3148,3012,3010,3013,3015,3035,3146,4095,4096,4090,4093,4089,3967,3006,3014,3990,3016,3017,3257,3593,3603,1792,1793,3980,1783,1789,1794,1448] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1561,1563,2008,2009,1802,1803,1804,2973,2974,2975,2976,2064,2041,2051,2052,2053,1551,1548,1554,1555,1559,2996,1801,1836,1828,1861,1903,1800,2081] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4578,4831,4827,4829,217,220,4322,4329,4330,4338,4339,4602,4333,4335,4807,4809,197,198,199,200,194,4782,4783,4812,252,4575,4600,4325] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [651,653,730,380,381,670,671,363,159,161,184,183,657,42,29,28,268,379,266,264,265,270,267,269] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3614,3650,3707,3740,3741,3652,3736,3738,5297,3615,4025,4027,4028,3737,3739,4050,4015,3777] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [962,963,964,965,966,967,2519,840,841,1003,1241,876,878,865,1253,1251,1254] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3138,3136,3139,3429,2804,2805,2935,2937,3040,3041,3042,3043,3044,3045,3046,2960,3155,3156,3157,3447,3504,3427,3446] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2342,2348,2351,2353,2360,2331,1641,1604,1605,1606,1613,1614,1617,1607,2312,1107,1109,1079,2660,2661,2361,1612] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1502,820,1208,1209,1468,1474,1470,1478,1486,1487,1488,1489,1490,1491] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3155,3157,3027,3044,3045,3046,2960] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        