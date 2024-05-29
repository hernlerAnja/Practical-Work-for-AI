
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
        
        load "data/4QP8.pdb", protein
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
 
        load "data/4QP8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3085,1819,2003,2005,2006,2778,2779,3086,3087,3454,1820,3073,2262,1859,1834,1852,1833,2907,1830,1823,1826,1825,1829,3442,3455,3443,1808,2207,2219,2223,3122,3124,1807,1815,2032,2185,2186,2193,2182,3123,3111,3112,3114,3113,2259,2261,2258,2213,2216,2218,3139,3150,3174,3148,3080,3095,3149,3151,2914,2916,2917,3176,4089,2194,4100,2263,4094,4097,4098,3070,3082,3068,2912,2938,2931,2932,2934] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3902,3903,3901,3910,3927,4002,4007,3063,3064,3497,3534,3539,3546,3533,3518,3526,3047,3502,3513,3890,3873,4009,4010,4031,4032,4001,3926,3519,3520,3515,2903,2910,2924,2926,2927,2928,2898,2894,2896,2897,2923,2925,2948,2947,3060,3575,2913,2917,3176,4102,4107,4113,4117,4097,4111] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [194,196,197,217,331,166,215,161,162,164,216,163,843,844,195,1272,1196,1270,1271,1195,766,767,333,771,788,787,782,784,316,1172,1170,815,1171,808,802,803,804,795,801,1180,1276,1279] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3139,3134,3140,3125,3129,2161,2194,2195,4092,2183,2184,2186,2051,2053,2150,2149,2151,2155,3122,3116,3119,3109,2031,2041,2044,2047] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [850,851,852,903,972,932,933,934,935,1232,889,1201,1216,1208,1214,807,1219] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3561,3563,3600,4369,3599,3902,3903,4124,4122,4123,4158,4146,4148,3897] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3703,3632,3582,3614,3615,3616,3620,3939,3947,3662,3663,3664,3665,3666,3963] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4461,4462,4464,4466,2291,4463,4465,2305,2307,4454,1518,1072,1074,1080,1044,1081,1083,1084,2297] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2396,958,990,998,1000,960,1240,582,1024,575,1026,2442,2393] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [5147,3721,3722,3755,3756,5196,5145,5150,5152,5138,3729,3689,3691,3314,3731,3313,3306] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1166,1404,1406,1392,1394,1369,830,832,869,1615,1370,1155,1157,1172] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4510,4719,4708,4211,4217,4682,4475] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        