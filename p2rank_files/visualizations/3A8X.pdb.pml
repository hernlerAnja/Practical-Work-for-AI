
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
        
        load "data/3A8X.pdb", protein
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
 
        load "data/3A8X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1162,1163,758,759,766,1136,793,128,129,137,138,2471,1137,1139,1147,1241,1239,1240,307,1242,1245,1246,1248,306,155,582,715,583,719,737,740,123,177,178,179,126,2437,2423,2429,2435,2439,117,2469,503,305,290,121] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2925,2869,5172,5174,3850,2874,2875,2883,2884,2924,2923,2863,2865,2867,5138,5142,5146,3853,3450,3453,3472,3875,5140,3860,3876,3953,3849,3470,3479,5126,3179,3216,3051,3428,3954,3052,3053,2909,2887,3958,3959,3960,3975,2899,2901,3961,3976,3977,3036,3215,3295,3296,3432,3970,3952] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1518,1529,1522,1524,1526,1558,1533,1324,1327,1328,2031,2029,1534,2068,2019,2021,1030,1031,1033,2073,2103,2104,2063,2107,2065,2067,2086,2081,2083,2085,1005,1045,2111,2090,1345,1514,1515,1503,1497] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4237,4239,4784,4786,4787,4793,4231,4228,4229,4020,4227,4058,4734,4216,4210,4788,3744,3751,3754,4242,4246,4723,4770,4771,4722,4776,4724,4732,3746,4235,3718,4810,4766,4807,4806,4247,4163,4036,4043,4047,4034,4037] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [757,2415,2421,2423,2427,796,786,787,788,789,795,826,760,763,791,2336,2337,1170,801,827,841,2335,755,2348,2351,2354,2358,2361] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3029,3030,3007,3436,3298,3299,3434,3435,3300,3429,3430,2740,5425,5426,5427,3310,3313,3316,3309,5439,5441,3243,3303,3304] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [152,153,155,432,146,429,430,151,145,1264,391,393,425,426,427,428,362,431,433,403,1271,394,395] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3138,3117,3139,3140,3141,3142,3143,3144,3977,3975,2901,3976,2900,2902,2903,3098,3100,3146,3101,3111,3115,3116] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3411,3413,3175,3176,3177,3178,3179,3052,3154,3067,3145,3146,2897] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [18,21,22,2713,2714,2716,5412,5415,5419,2698,2699,2709,2712,2690,2691,2692,2697,2767,5395,2768,2763,2764,2769,5400,5393,5394,5401] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [724,1224,1225,1176,1177,1179,552,2288,2289,1191] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [156,464,465,466,433,700,321] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        