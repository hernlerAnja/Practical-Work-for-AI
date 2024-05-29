
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
        
        load "data/4LUE.pdb", protein
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
 
        load "data/4LUE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3217,3243,3246,3248,3247,3240,3241,6534,3215,3216,3242,3239,3261,6633,3268,3299,6632,3269,3272,3337,3338,3264,595,3270,3271,594,6536,3206,6407,6408,6409,779,780,6376,774,772,3352,3348,3061,3020,3050,3053,3059,3060,3084,3085,3086,3156,3083,3115,3021,3116,3117,6559,6561,6525,6557,6558,6591,6657,6562,6587,6588,6618,3314,6566,6567,6382,6341,6343,3313,6535,6344,6373,3976,4162,6656,4153,4155,6583,4154] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2441,2442,2449,1652,2447,2452,1646,1650,1919,1921,1961,1954,2440,2372,2373,1638,1483,1536,1979,1980,1960,1968,1484,1654,1537,2448,1983,1987,1988,2012,2348,1481,1486,1957,1935,1936,1834,1721,1835,1743,1940,1637,1920,1917,2457,2459] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5705,5713,5036,5804,5805,5828,5349,5352,5356,5357,5381,5191,5814,5797,5798,5799,5204,5815,5816,5809,5116,5330,5729,5730,5813,5020,4921,5286,5028,5032,5034,5035,5288,5290,4920,4922,4870,4871,5329,4869,4866,4868,5326,5309,5304,5305,5289] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [5288,5290,5269,5048,5049,5263,5267,5268,5270,5051,5047,5055,5255,5075,5226,5116,5827,5068,5085,5850,5094,5090,5849,5851] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [2486,2488,1921,2470,2487,1900,1666,1667,1899,1919,1901,1669,1692,2494,1693,1717,1721,1695,1743,1712,1857,1702,1920] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [628,918,912,663,664,906,2167,606,634,2143,2144,630,2121,2145,661,2110,2111,2108,2113,2120,2136,2139,2142,2109,2138,3252,3260,3284,3288,3289,3291,3293,3290,3292,898,3301,915,917] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5508,3987,4008,4009,4044,4285,4287,4045,4284,4295,4301,4304,4306,4282,6571,5505,5509,5510,3986,5474,5475,5479,5476,5502,5504,6603,6607,6620,6579,6610,5485,5487,5511,4011,4015,4042,4013,4041] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [580,560,563,564,495,558,647,541,550,556,559,493,509,516,517,518,53,63,64,65,419,420,421,441,1278,522,1280,1273,1274] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3941,3944,3945,3922,3931,3897,3899,3960,4029,3937,3939,3874,3890,3876,3878,3440,3442,4656,3441,4657,3801,3802,4678,3430,3800,3822,4661,4677,4663,4658] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [6620,6646,6579,4330,6652,4319,3975,3987,4008,4009,4301,4304,4306,4332,4310] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3966,3967,3995,5562,5563,5564,6554,5561,6583,3983] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3302,3327,921,3301,3333,915,917,930,595,3271,941,627,628,918,912] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3207,3180,3185,3186,3208,3211,3174,3177,3217,6534,3212,3213,3214,3215,3216,3203,3204,6409,3205,6536,3086,6526,6504,6505,6522,6523,6524,6560,6532,6527,6530,6531,6496,6533,6493] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1349,1351,288,113,284,286,138,142,129,389,131,133,390,392,281,282,114,1341] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3491,3490,4724,3519,3508,3515,3506,3510,3771,3773,3774,3775,3776,3661,3658,3659,3640,3663,4732] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [6427,6045,6148,6149,6266,6271,6425,6276] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2940,2935,2945,3104,3102,2700,2808] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        