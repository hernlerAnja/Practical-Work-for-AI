
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
        
        load "data/5OS7.pdb", protein
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
 
        load "data/5OS7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4615,4074,4077,4078,3751,4642,3748,3749,3750,4076,4103,4102,4120,4101,3927,3897,4609,4610,4612,3855,4640,3777,3812,3742,4117,3729,3883,4611,4639,4634] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [1008,1306,1309,1115,1159,1352,1847,1113,1123,1129,978,979,982,983,1842,1843,1871,1874,1044,1118,1086,1333,961,974,977,1006,1308] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3545,3546,3681,4209,4211,4212,4213,4217,3677,3678,3680,3682,3683,3147,3323,3206,3207,4083,4096,3150,4218,4220,3325,3191,3326,3327,3161,3162,3141,3142,3722,4110,4111,4112,3724,4086,3309,3310,3311,3144,3145,3706,3709,3547,3703,3687] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [909,910,912,913,915,1441,1444,1445,439,541,777,1443,542,950,954,543,935,938,1342,956,1343,1344,779,939,941,555,557,558,1449,423,394,1450,1452,437,438,374,376,377,372,373,378,379,384,393,382] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [274,830,882,883,884,863,831,615,616,589,3510,3503,3504,3509,3505,3506,866,864,247,250,251,252,253,650,609,611,612,648,613,614,642,639,641,3553,3554] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [4219,4220,3190,3191,3176,3343,3438,4056,4072,3162,3165,4236,4244,4245,4246,3401,3402,3404,3403,3177,3178,3174,3181,3340,3342,3408,3347,3169,3171,4096] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3317,3333,3108,3109,3110,3335,3590,3060,3061,3604,3605,3593,3600,3642,3607,3657,3334,3643,3086,3085,3103] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [670,558,559,575,1451,422,423,394,397,1288,1452,1303,1304,1615,633,634,401,403,406,410,413,1476,1477,1478,598,1603,409,572,579] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [317,340,341,342,825,832,833,836,837,839,826,838,567,293,294,292,822,889,549,318,565,566] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [3418,3377,3379,3380,3381,3382,3416,3019,3020,3021,3042,3043,3039,3598,3599,3631,3410,3651,3652,3357,3407,3409] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1758,1764,1772,1773,1776,48,52,54,2654,2601,65,2643,2649,2652,1222] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1302,1635,1637,1316,1317,1319,1320,1321,1312,1921,1304,1613,1615,1621,1638,1625,1649,1311,1922,1617] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2843,3990,4532,5422,2833,4541,5411,5417,5400,4526,2816,4540,4544,5369,2822,5423] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3248,3271,3287,3685,3303,3567,3566,3572,3573,3575] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [2952,2964,2969,2980,2981,2990,2959,2961,4293,4291,4312,4258,4260,4259] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [211,213,1491,1525,1544,184,191,193,201,222,1523,1545] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [850,3488,2931,3456,3004,3006,3011,848,2999,3008,2995,2932,867,868,3480] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        