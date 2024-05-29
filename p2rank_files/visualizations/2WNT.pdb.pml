
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
        
        load "data/2WNT.pdb", protein
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
 
        load "data/2WNT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3263,3274,3271,2397,2398,2399,3264,3272,3273,2246,2275,2256,2742,2743,3156,2741,2589,3265,2719,2724,2244,2285,2289,2290,2395,2396,2273,2720,2383,3157,3135,3140,3131,2240,2243] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1288,1272,1291,1292,1290,1328,2132,1316,1319,1320,1321,1264,2149,2150,2151,2152,2153,2154,1787,1313,1314,1816,1317,1556,1553,1559,1318,1768,1770,1773,1760,1752,2155,2127,2156,887,888,902,2130,890,889] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3463,3466,3467,3447,3983,3984,4009,3967,3294,3088,3089,3090,3093,4375,3295,3296,3298,4326,4328,3488,3489,3491,3493,3494,4349,3297,3102,4357,4345,4346,4347,4351,4352,4350,3465,3503,3492,3965,3746,3743,3748,3970] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [64,67,113,114,70,71,73,109,224,221,222,220,223,75,76,99,208,545,546,544,523,407,522,576,931,940,1071,1064,1065,956,565,957] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [498,499,500,34,15,17,2,5,13,14,35,447,494,495,496,497,215,214,231,213,19,435,516] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2692,2693,2406,2176,2695,2697,2190,2193,2172,2173,2189,2211,2209,2298,2390,2389,2691,2630,2694] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2983,2985,2986,2987,2988,1215,1216,1184,1168,2556,2558,2565,1157,2564,1144,3018] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [818,776,3410,3411,778,779,781,3381,382,3367,3356,3343,374,375,376] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2538,3051,3055,3319,1174,3317,3318,2523,2524,1176,354,340,341,3373,1119,851,855] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        