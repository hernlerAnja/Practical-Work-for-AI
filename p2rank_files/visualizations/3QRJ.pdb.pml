
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
        
        load "data/3QRJ.pdb", protein
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
 
        load "data/3QRJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3518,3519,3520,3524,3532,991,3022,1417,1429,3052,3534,3536,3538,1955,4047,4051,4049,1948,1366,1412,1413,4043,4044,4045,4037,3506,3455,4078,4107,3025,3027,3026,4099,4082,4083,4108,4063,3024,989,1426,1431,1435,941,966,972,950,3499,3500,3503,3502,1447,1449,1951,1443,1945,1950,1430,3482,944,945,946,2003,1986,1987,2012,948,943] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1164,1071,290,154,180,181,1162,125,127,128,130,133,115,122,129,488,489,1070,1145,614,612,613,615,636,639,647,663,633,635,631,1148,1149,397,306,1155,302,304,156,155,1146,664,667,653,654,674,698,131,134] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3250,3159,3252,3253,2231,2232,2233,2256,2257,2258,2230,2752,2720,2745,3160,2748,2716,2206,2202,2204,2205,2355,2717,2501,2572,2693,2694,2695,2696,2571,2728,2236,2207,2208,2209,2210,2776,2755,2779,2476,3238,3246,2370,2371,2367,2369] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [420,422,421,1149,394,397,442,443,482,488,1137,993,997,999,1001,1142,1146,1150,1153,1143,936,937,980,982,987,995,413] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1837,1806,1800,1802,1813,1561,1564,1795,1563,1836,1838,2075,1812,1798,1799,1801,856,818,819,830,820,824,825,828,822,1558,800,801,1581,1524,831] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2492,2473,2474,2499,2525,3017,3018,3058,3074,3076,3078,3242,3080,3235,3239,2476,3238,3068,3061,2491,2493,3226,2565,2571,3231,3232] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2881,2899,2901,2903,2905,2879,2882,3913,3912,2906,2909,3617,3933,2911,2937,2900,3647,3899,3900,3901,3650,3652,3653,3613] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1045,1209,1234,690,1224,1039,1339,1550,1043,1044,1047,1340,727,697,1613,1602,1605,1606,1325,1327,159,160,698,696,673] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3691,3694,3695,3702,3323,3429,3428,3639,3134,2770,2771,3297,3298,2777,2778,2808,2779,3313,3319] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1107,1109,1108,707,709,780,657,658,659,660,661,1092] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3088,3255,3076,3241,3242,3106,3109,3271,3270] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [370,538,366,367,431,402,523,359,361,583,573,529] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        