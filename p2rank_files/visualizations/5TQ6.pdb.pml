
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
        
        load "data/5TQ6.pdb", protein
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
 
        load "data/5TQ6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2619,2620,2432,2433,2434,2435,2423,2425,2458,2456,2457,3525,3526,3430,3535,3527,3532,3533,3534,2415,2469,2470,2471,2421,2870,3446,2988,2983,2984,2604,3000,2417,2725,2726,2729,2763,2637,2691,3434,3435,3445,3447,3037,3041,3042,3425,3416,3069,2420,2414,2418,3006,3009,3017,3024,3034,3066,3551,3390,3392,3556,3550,3548,3549,3557,3558,2448,2451,3431,3391,3419,3420,2721,2724,2695,2697,2692,2693] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1128,1129,1130,1133,1228,1229,1230,1235,1236,1237,1238,129,128,135,136,137,138,143,161,159,160,323,466,1251,322,151,152,340,396,397,399,395,744,745,1138,1119,1137,1122,172,173,174,691,307,687,117,118,120,121,123,124,1148,1149,1150,709,712,740,737,772,738,1095,1253,1261,154,156,424,425,426,427,398,400,1252,1123,1277] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [870,2285,2282,2283,2284,4263,873,3169,2286,1986,1987,3180,1975,3168,3167,4538,4573,4574,4572,862,865,866,881,883,4275,4274,4291,4293,4292,3159,3162,1983,2003,2004] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1692,1651,1702,1124,1693,1444,1445,1744,1750,1751,1733,1736,760,761,762,1120,1121,1122,1694,1697] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3939,3732,4032,3733,4038,3059,3057,4039,4021,4024,4025,3980,3419,3421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2158,2153,2156,1546,1547,1548,1291,1331,1334,2148,1549,1553,2162,1017,1018,1019,990] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3837,3841,3834,3835,4441,4444,3836,3314,3287,3289,3315,3316,4446,4450,4453,3627,3628,3631] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [63,65,33,67,77,81,197,332,662,182] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3125,3126,3134,3093,1764,1765,1792,1949,1943,1944,3094,3098,1970,1730,1729,1731,3993,3994,3995,1720] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [828,829,4258,4019,4018,4052,4053,4237,4231,4232,4017] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2494,2610,2478,2479,2480,2374,2378,2629,2360,2626,2364,2362,2335,2627,2958,2959] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        