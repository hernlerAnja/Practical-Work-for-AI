
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
        
        load "data/4PTG.pdb", protein
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
 
        load "data/4PTG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3618,3619,3747,3761,3762,2741,2743,2744,3746,3748,2866,2868,3763,3631,3635,2708,2709,2710,2714,2760,2761,2762,3602,3765,3769,3642,3630,3740,3741,3745,3742,3271,3245,3659,2712,3212,2851,3194,3658,3047,3199,3216,3219,2720,2726,2729,2738,1715,1714,1739,1687,1688,1690,1706,1707] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [224,1102,1103,226,1126,1229,1230,1232,1142,1223,1224,1225,4219,1246,217,220,222,351,352,1231,1245,431,430,368,4218,211,202,208,213,215,216,4244,192,194,242,243,244,336,680,697,691,675,196,4201,4220,1086,1253,4211,1247,4185,4188,1114,1115,1119,726,713,1143,190,693,700,752,4193,4194,4195] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3924,4203,4228,3922,1341,3951,3959,1344,1363,1414,1415,1416,1443,1449,1451,3855,3858,3853,4229,4202,4191,1377,1686,1724,3887,1692,1723,1697,1698,3891] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [173,17,148,150,172,18,31,171,596,597,653,614,615,252,253,254,255,360,361,362] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [762,795,872,874,873,876,875,877,796,763,912,913,1161,1163,1164] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3281,3680,3677,3313,3314,3429,3359,3679,3388,3389,3390,3391,3392,3393] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2538,2539,2877,3123,3122,2770,2772,2773,2688,2690,3171,2769,2771,2689,2665,2667,2859,3105,2552,3104,2858] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1869,1867,1868,1739,1707,1706,2735,2738,3763,3765,3769] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1729,1859,1862,1731,1732,1803,1838,1764,1762,1869,1836,1464,1466,1465,3864] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3263,3261,3633,3634,3635,3901,3899,3913,3914,4116,4156,4157,3902,1690] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5006,5004,5001,5012,5009,4741,4812,4814,4819,4824,4843,4845] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        