
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
        
        load "data/6HK4.pdb", protein
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
 
        load "data/6HK4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [247,264,266,194,195,196,261,262,265,4828,4830,190,193,645,155,157,179,180,24,644,23,25,38,358,359,4806,4804,4810,4808,4827,4829,722,680,248,678,723,679,374,375,376,377,663,662,676,4793,241,239,240,739,230,389,213,214,216,4347,4602,4603,4628,4354,4355,4360,4823,4847,4849,4844,4854,4857,4834,4339,4216,4378,4221,4223,4363,4364,4366,4782,220,224,391,683,4214,4626,4660,4657,4659,4874,4350,4630,4600,4635,4632,4634] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [209,212,4591,4592,200,206,839,794,4234,4235,226,218,255,201,203,204,254,351,778,780,782,762,234,236,366,367,368,1174,1342,1192,1191,1215,1321,1173,1175,1203,1204,812,813,838,1318,1314,1315,1232,1313,1231,1309,1312,787,579,580,767,1334,1335,1336,1319,1320,473,505,4582,4585,4588,4240,1205,828,1460,1461,1466,1471] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2975,2976,2981,2979,3992,4004,4101,4102,4103,3028,3029,3123,3362,3546,3612,3993,3994,1785,1787,1788,1789,1794,1795,3571,3578,4020,4021,3562,3568,3551,3564,3622,3623,3624,3597,3139,4108,4109,4110,4104,4107,3138,2984,2987,3011,3012,3030,1448,1480,1796,1791,3963,3964,3980,3981,4268,3001,4126,4131,2993,2996,3009,4124,4263] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1432,1566,1567,1569,2013,2995,2999,3005,3014,3506,3505,3507,1437,1439,1433,1434,1542,3163,1581,1426,2991,3022,3023,1550,2014,3017,3144,3039,3147,3148,3149,3041] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3041,2028,3039,3426,3523,3147,3149,3444,3445,3040,3038,2955,2030,2953,2954,3037,3036,3130,2801,2931,2932,2800,3427,2814,3449] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1488,1489,1490,1491,1492,1493,1750,1480,1781,4290,1504,1505,1205,1207,1208,1707,827,829,831,1476,1470,1471,4277,4580,4582,1192,1190] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3752,3753,3754,3755,4041,4042,4064,3666,3634,3791,3629,3632,3633,3664,3721,3587,4039,4033,4061] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [850,961,963,965,966,1239,962,964,1002,1252,1250,1253,885,849,887,932] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4286,4285,4287,4290,4288,4289,4267,4301,3988,3995,3996,3997,3613,3615,4302,4504,4547,4269,4273,4277] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1467,1470,1471,1205,1208,4239,4240,4277,4582,1192,1175,1190] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3170,3226,3190,3436,3438,3222,3214,3218,3221,3204,3205,3185,3188,3213,3257,3415,3416,3295] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3333,3334,3330,3332,5409,5387,3320,3335,3339,3340,3326,3820,3347,3348,3849,5360,5363,5364,5390,5391] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1614,1106,2357,1104,1105,1112,1080,2350,2660,2348,2661,2339,2345,1619,1611,1615,1616,1643,1607] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3963,3964,3981,4264,4267,4268,1448,1480,3997,4258,4263,4239] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4416,4411,3893,3894,3895,5452,5453,3901,3869,4440,5135,5141,5144,5146,5153,4404,4405] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        