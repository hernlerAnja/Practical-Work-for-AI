
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
        
        load "data/6A1G.pdb", protein
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
 
        load "data/6A1G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [499,4048,4049,4050,4051,4068,4350,4339,4346,4351,4355,3059,3064,3066,3068,4228,4229,4041,4336,3305,3306,3312,3341,4222,4223,4221,3313,513,491,492,493,497,498,500,486,4315,4318,4320,4329,95,97,99,90,17,20,22,64,4325,9,4327,3308,504,505,3282,3284,3279,3307,4207,4091,4092,4206,4208,4067,4084] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [297,302,304,3260,3261,306,1429,1430,1329,3275,3253,3254,3262,3259,292,289,2861,2859,543,1443,1444,1445,579,545,546,3266,3268,1537,1451,1558,1561,1548,1573,1287,1288,1289,1568,1571,1572,1305,1306,1330,3247,3248,3251,1541,1543,2852,2857,2826,2830,2782,2784,1322,2779,1549,2771,1279,1450,550,551,517] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3218,3219,3089,3090,3217,3652,3032,3038,3039,3040,3034,4091,4198,4200,4202,4205,4206,4079,3342,3650,3653,3654,3655,4209,3507,4201,3649,3659,3673,3676,3202,3671,3036,3672,4199,4108,3684,4107,3706,3068,3070,3043,3044] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1427,1428,1329,1345,1346,1420,1421,1422,911,914,917,306,308,457,1429,1430,270,922,926,944,972,289,276,277,279,281,282,745,746,1423,1317,328,455,892,890,449,453,897,440,327,272,326,274,909,888] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4865,826,830,4680,4681,31,843,4890,4888,4889,52,54,39] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2849,3244,2858,2860,524,3285,3286,87,98,88,482,3058,3055] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [959,961,1321,1571,1304,1306,1604,1605,1312,1313,1573,1591,1593,1807,1852,1853,1589,1594,1584,1588] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1901,1902,1903,2111,2112,2801,2800,2802,2085,2086,2087,2793,3605,3604,2790,1529,3588,3587,3592,2814,2816] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2849,3244,2858,2860,293,524,3285,296,87,482] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4334,504,505,506,4315,4227,4228,4229,4298] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [813,811,812,860,4303,532,4307,791,793,4286,560,563] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        