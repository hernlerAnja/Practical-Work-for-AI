
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
        
        load "data/5HNB.pdb", protein
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
 
        load "data/5HNB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [908,253,2799,2798,289,292,293,258,564,1421,458,1392,1393,1396,1397,1399,1391,669,1271,1263,456,457,823,825,820,822,824,454,313,314,315,441,256,842,593,288,261,846,1287,1288,849,668,829,840,876] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [934,1524,1525,1526,1537,1538,1501,932,924,926,927,1796,962,963,1751,1752,892,894,897,1250,887,889,930] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4497,2856,2874,2875,2889,2890,4503,4224,4501,4502,4504,4506,4505,4507,2877,2892,4175,4176,4188,4186,4187,4177,4145,4494,4137,4134,4142,4496] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1193,1199,1204,1224,1225,1202,1181,2831,1188,2840,2844,1415,1462,3686,3687,3688,3689,3696,3698,3700,3679,3681,3668,3673,553,1465,1205] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2840,2844,2843,2831,2832,4121,4110,4123,4126,4149,4122,3679,3678,3680,3358,3374,3375,3404,3372,3373,3380,3648,3403,3405,3670] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3577,24,25,3562,3563,3879,3876,3877,4973,4992,4993,4994,3893,3923,3924,3869,3875,5026,3576,3892] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4432,4809,4810,4835,4833,4834,4437,3009,3042,3070,4438,4440,4469,4430,4433,3180,3185,3186,3187,3188,3189,3190,3191,3192,3144,3184,3218,3145,4427] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [284,279,283,474,286,525,526,527,281,1423,1403,1412,563,458,1398,1416,1409,1395,1235] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [359,357,358,398,399,693,689,434,435,814,199,200,688,700,188] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1547,1548,1634,1636,1476,1475,1545,1579,1220,1578,1665,1219,1234] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2061,2079,2509,1567,2080,2083,2116,2117,2104,2502,2517,1644,1568,1619,1601,1604] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2623,2625,2409,1010,1768,1013,1014,2653,2654,2658,1044,2669,1011,2396,2394,2364,2366,2395] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2476,2482,2487,2488,2492,2493,2496,2000,2485,2452,2454,2486,2281,2048,2017,2049,2050,2052,2004,1996,2277] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1760,1756,955,950,951,953,1781,1036,1004,923,1028] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [68,58,62,63,66,3519,3523,3540,3541,3513,3515,3546,41] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4423,4931,4877,4880,4882,4908,4912] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        