
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
        
        load "data/2OZO.pdb", protein
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
 
        load "data/2OZO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2134,2555,2693,2694,2695,2752,2457,2455,2458,2525,2526,3318,2527,2528,2529,2530,2533,2534,2523,2524,2710,2736,2737,2144,2146,2536,2499,2500,2501,2579,3296,3297,3300,2549,2551,2546,2753] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2915,4172,4184,4203,4164,4175,1139,1113,2001,1998,1137,1138,4174,4200,4197,2955,2956,2957,4150,2927,4147,2928,2933,2936,3230,3232,2914,1110,4116,4118,4148,4151,4141,1995,3220,4190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2298,2299,2438,2767,3279,3280,2259,2260,2263,2264,2786,2248,2249,2251,2772,2421,2800,2790,2789,3187,3188,2808,2809,2656,3272,3172,3158,2297,2257] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1126,472,1156,1160,1776,4152,4154,504,577,502,471,321,323,522,520,9,22,15,16,20,21,4,883,1128,1129,1130,4155,4156,280,338,847,881,882,908,1154,319,1814,318,317,848,1123,1125,1102] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1098,1069,1072,1076,4128,4130,914,913,915,924,1,2,1128,1130,6,889,892,893,894] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [841,843,1848,1882,1850,1748,1898,849,850,852,290,853,854,288,291,100,101,834,837,844,293] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3658,3515,3518,3928,3927,3929,3930,3774,3784,3745] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2753,2768,2673,2580,2654,3290,3291,3274] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [286,449,461,464,311,1756,1757,310,298] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        