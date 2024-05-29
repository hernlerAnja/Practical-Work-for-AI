
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
        
        load "data/6EG9.pdb", protein
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
 
        load "data/6EG9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1286,1288,1290,1291,1273,1276,1285,1287,1289,754,755,756,392,390,290,291,378,635,761,777,782,1195,634,636,750,751,752,753,1282,1292,394,259,1171,1196,804,833,800,801,238,292,239,241,247,249,250,244,780,771,773,564,533,808,809,1172] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3457,3468,3469,3470,3471,3472,2438,2473,2431,2418,2419,2714,2571,2424,2425,2426,2428,2430,3352,3353,3377,2990,2989,3014,3452,3454,2745,3376,2559,2952,2954,2958,2961,2420,2423,2471,2472,2816,2931,2817,2933,2935,2932,2934,2936,2937,2963,2982,2962,2956] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4177,1715,1720,1721,1722,4188,4190,1723,4208,1731,2022,2023,4176,4179,1714,1685,1710,1712,2002,3539,1696,3578,3580,1694,1695,1697,1654,1649,3565,2025,3532,3535,3536,3563,1691,1688,4192,4196,3579,4198,4199,4200,4197,3542] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2033,2034,3880,2032,3878,3879,2020,2035,2051,2021,4175,4178,4180,4182,1355,1356,1392,1396,3853,1358,1359,1362,3852,3854,1414,2042,2043,3806,2024,3533,2039,2040,2041,3845,3850,3851,3814,3811,3534,3643,3644,4159,3869,3871] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [556,557,564,585,532,533,1273,1276,1277,636,1280,1117,1119,1121,1123,1125,1262,1059,629,628,1060,1104,1111] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2745,2736,2737,2738,2809,3283,3241,3285,3454,3306,3450,3443,3449,3458,3240,3304,2711,2712,2714,3457,2810,2746,2936,2937,2817,3300,3461,3298,3302,3303,3292,3305] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4340,4343,3120,3122,3123,3124,3157,3118,3155,3116,4331,4332,4055,4075,4338,3179,4342,3148,3149] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        