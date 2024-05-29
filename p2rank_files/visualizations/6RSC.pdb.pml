
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
        
        load "data/6RSC.pdb", protein
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
 
        load "data/6RSC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1391,171,177,181,188,190,1419,192,193,195,1233,1235,1234,1248,211,357,358,194,196,199,205,484,1250,355,356,372,457,1390,450,424,426,1392,185,183,447,448,446,445,423,1388,1256,1257,1258,1087,1374,1252,1249,1273,1274,1359,1385,1389,1416,168,179,180,1122,160,161,167,156,157,1415,1430,1432,1096,1124,1097,1133,1134] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3061,3092,3093,3094,3042,3060,2488,2494,3036,3050,3438,3459,3536,3018,3537,3458,2683,2551,2491,2493,3034,3039,3543,3544,2496,2552,2550,3443,3542,3429,2490] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1119,783,785,758,784,1149,148,149,150,152,147,153,729,732,1148,724,726,751,750,740,155,1128,1133,1226,782,1232,209,210,1227,342,708,1233,1234,211] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2698,2699,3543,3544,2552,2534,2535,2536,2537,2538,2539,2546,2502,2508,2499,2500,2501,2497,3566,3406,3407,3443,3545,3558,3559,3562,3560,2697,2765,2767,2794,2696,2713,2755,2756,2733,2761,2762,3726,3727,3729,2509,3568,3725,3567,2529,2531,2737,2526,2533,2757,2731,3700,3702,2758,2760,3698,3701,3583,3584,3397,3434] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4203,3827,4228,4200,4231,4230,4259,4261,3828,1911,3825,3826,1968,1969,1944,1516,1517,1936,1515,1518,1519,1527,4236,1526] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3432,3433,3986,3772,3083,3084,3085,4075,3773,4025,4060,4037,4040,4073,4061] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1571,1573,1021,1574,995,1022,1024,2224,2229,2241,998,1575,1576,1579,2213,2232,2192] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3889,3877,3881,3885,3886,3883,3884,4516,3308,3331,3333,4521,4524] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2449,2450,2453,2455,2575,2408,2409,2439,2992,2993,2435,2994,2559,2560,2561] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [684,94,98,66,67,108,112,219,234] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        