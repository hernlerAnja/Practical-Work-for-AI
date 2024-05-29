
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
        
        load "data/7OPG.pdb", protein
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
 
        load "data/7OPG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3539,3541,3543,3542,3127,3129,3008,3009,3010,2964,2989,2990,2965,3538,3548,2956,2954,2952,2959,2960,2962,2953,2957,3614,3562,3113,3565,4235,4226,3991,3992,4225,4227,3964,3586,3587,3963,3567,3566,3582,3575,3581,3573,3572,4232,3975] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [813,1190,1191,808,812,1189,1217,1177,1201,1459,1461,1462,1463,1216,1218,790,791,792,799,788,628,794,1460,840,801,228,229,230,347,349,173,174,178,177,176,333,774,764,765,767,179,180,182,185,192,209,210,1178] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5731,5732,5734,5737,5744,5761,5762,5899,5901,5759,6364,6365,6744,6745,6756,7017,7018,7020,6732,6733,6772,6360,6773,6344,5781,6351,5726,5728,5780,7011,6316,6345,6319,6321,5885,5782,7010,7012,6326,6340,6392,6353,5725] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4007,4009,4016,4017,4019,2438,2401,2415,2418,2426,2437,3359,3408,2370,2371,2372,2402,2408,3350,2368,3569,4212,3358,3552,4213,3410,3092,1879,1880,3088,3089,3554,3096,3558,3561,3095,3557,3099,1861,1877,1865,915,914,3426,3546,3549,3427,2354,2345,2356,4196,3387] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3184,3185,3191,3194,3196,3219,2984,4235,3249,3221,3224,4234,2972,2975,2979,2980,2985,2987,2989,2965,3129,3933,3935,3951,3952,3975,4375,3964,4255,4256,4358,4364,4362,4341,4352,3143,3144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [400,363,411,439,440,200,204,205,207,209,192,348,349,469,364,441,444,1159,1161,1177,1201,1469,1468,1190,1490,1489,1484,1486,195,199,416,402,404,405,414,1590,1591,1160,1594,1582,1588,1576,1178,1599] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [7035,7041,5991,5956,5957,5952,5966,6018,6020,6021,7019,7033,5963,5989,5916,5915,7139,6716,6733,5968,5751,6714,6715,7150,5761,5901,5756,5757,5759,7020,5990] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [898,900,3075,3076,3077,3074,1886,829,831,1619,1621,1194,1631,1632,3055,1193,1192,830,3073,1909,3062,1928,1620,3052] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3227,3229,3236,3265,3266,6621,6658,3264,3267,8221,8222,8223,3228,8245,8247,6567,6597,6598,6599,6600,8219,8217,6623,6666,6667,3230,6150,3231,6149,6628,6656,6622,6655,6148] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [3429,3257,3288,3291,3287,2307,2310,2311,2291,2275,3423,3266,3267,3443,3445,6675,6676,6673,2292,7073,3432,7283,7284,6652,6654,6655,6644] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1876,1878,3087,3089,2420,1884,1912,1891,2422,2324,2354,2357,2356,2323,2363,1992,3426,3072,3071,1911] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [8205,8207,7286,7291,7292,8164,6620,8220,8222,8208,8202,7313,8196,7287,8185,6647,7281,7282,7283,7284,7279,6644,6645,7280] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3968,4407,4408,4395,4397,3603,3605,4608,3967,4663] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [6379,6381,6383,6450,6452,7437,7383,7170,7182,7183,7172,7438,6749,6748] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [2956,2954,2953,2957,3560,3565,1323,1344,3025,3573,3571,3572,4025,3574,3581,3992] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3296,3297,3298,3299,3300,3301,3882,4275,4277,4278,4279,4274,4276,8232,8257,8255,8256,8235,4295,3293,8221,8222,8223,8224,3893] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [6474,6476,6928,6469,6437,6464,6456,6937,6942,6943,6947,6512,6485,6487,6479,6483,6486] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        