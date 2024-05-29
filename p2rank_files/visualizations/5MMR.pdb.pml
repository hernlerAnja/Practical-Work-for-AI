
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
        
        load "data/5MMR.pdb", protein
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
 
        load "data/5MMR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1111,1348,1345,1873,1875,1877,1041,1014,1329,953,973,1016,976,1005,1002,957,1125,1840,1843,1842,1155,1330,1331,1332,1302,1304,1305,1306] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3736,4085,4087,4119,4633,4138,3788,4135,3861,3894,3897,3740,3752,3753,3756,3758,4088,4659,3784,3824] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [433,434,435,538,905,908,910,370,1315,1317,369,375,378,551,553,554,555,380,381,389,390,775,1339,773,774,909,1437,906,1440,1311,1441,911,1445,1448,372,373,1338,1340,1329,950,951,952,953] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3334,3693,3694,3336,3337,3692,3321,3558,3689,3691,3556,4227,4229,3322,4128,4130,3717,3720,3557,4231,3216,3217,3218,3153,3155,3735,3202,3161,3157,3158,3159,4095,4129,4230,4235,4238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [418,419,571,380,381,389,390,393,404,405,628,630,399,397,398,402,403,406,636,575,631,1315,1317,666,1446,1447,1284,1448,1300,1472,1473,1474,1464,627,1465] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3420,3032,3427,3393,3394,3395,3428,3429,3430,3392,3053,3661,3662,3663,3609,3610,3642,738,729,737,782,731,732,3030,3368,3369,3388,3418] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3176,3180,3183,3192,3185,3189,3184,3173,3202,3187,4238,4067,4082,4083,4114,4096,4262,4263,4264,3354,3421,3449,4254,3338,4237,3409,3337,4255,4256,4257,3188,3201] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [561,563,870,873,871,885,545,338,336,337,832,833,286,818,289,821,828,314,313,288] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [795,800,320,515,520,531,913,476,499,794,803] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3604,3605,3611,3617,3615,3616,3618,3072,3071,3121,3120,3096,3119,3653,3601,3328,3668,3097,3073,3344,3346,3345] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [270,826,827,249,644,645,610,248,608,609,637,638,879,585,880] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [65,2658,48,55,2636,2605,2615,2647,2653,2656,1218,1754,1760,1768,1769,1772,1795,2659] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4544,4550,4558,4559,4562,4585,5429,2834,5435,5438,5440,2827,2831,2832,2844,4001] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1493,180,1487,1519,1521,208,1488,1540,209,218,192,197,187] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2399,1916,2401,1917,1937,2079,2043,2068,1956,2047,2048,2067] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3577,3259,3282,3314,3696,3298,3682,3578,3101] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        