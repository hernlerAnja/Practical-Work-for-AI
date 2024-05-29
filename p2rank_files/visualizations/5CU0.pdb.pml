
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
        
        load "data/5CU0.pdb", protein
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
 
        load "data/5CU0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1874,1875,1876,983,1022,1117,1354,1335,1351,1120,1046,1008,1010,1011,1047,1012,958,959,979,980,981,985,963,1131,1086,1130,1089,1846,1849,1843,1845,1847,1868,1161,1337,1338,1311,1312,1921,1336,1308,1310] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4085,4086,3753,3754,3755,3757,4614,4615,4613,4642,3749,3750,3782,4643,3821,4644,3858,3862,3863,4084,4109,4082,3935,4110,4111,3905,4616,4617,3904,3894,4128,3891,3737,3785] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3686,3688,3690,3691,3310,3311,3206,3207,3144,4120,3191,3325,3326,3327,3689,4119,3545,3547,4217,4219,4221,4225,3205,3142,3162,4095,4096,4097,3152,3153,3161,3147,3146,4220,4091,4228,4226] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [914,916,439,440,441,544,543,545,376,387,1322,1323,375,381,384,1443,1445,1447,1345,1317,1344,1446,1321,779,780,781,911,912,917,921,557,1448,559,560,561,1451,1454,386,395,396,425,1346,956,957,959,378,379] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3040,3042,3606,3607,3658,3659,3660,3640,3020,3409,3021,3416,3447,3379,3418,3381,3382,3383,3384,788,737,738,744,3039,735,739,740,3018,3019,3015,3357,3407,3410] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [560,577,672,1453,1290,1452,1454,1306,1617,634,636,635,1478,1479,1480,633,403,404,405,576,642,424,396,425,399,408,410,412,415,574,411,581,1323,1321] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3342,3343,3191,3326,3327,3408,3410,3399,3402,4245,4247,3438,4244,4227,3177,3347,3169,3170,3174,3178,3165,4252,4228,4064] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [276,832,833,253,254,653,651,617,885,886,644,591,641,643,650,611,615,616] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3601,3602,3608,3612,3613,3614,3615,3061,3060,3110,3085,3108,3650,3598,3317,3665,3086,3318,3058,3333,3334,3335,3109] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [71,2651,2657,2656,2645,2634,54,81,1198,1224,1766,1774,1760,1775,1778,2661,1801] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [569,876,838,839,841,879,877,567,891,344,551,342,343,824,295,827,834,294,320,319] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [801,800,806,326,919,518,521,526,537,505,482] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4528,4534,4542,4546,4000,4569,5413,5416,5418,2821,3998,2838] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2974,4268,4339,4266,4267,4299,4301,4318,2963,2958,2946,2953] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        