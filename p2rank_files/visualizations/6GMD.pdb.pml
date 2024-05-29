
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
        
        load "data/6GMD.pdb", protein
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
 
        load "data/6GMD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4102,4074,4077,4078,4120,4076,4101,3745,3746,3748,3750,4103,3927,3897,4612,4615,3812,3777,3742,3774,3729,3883,3855,4117,4609,4610,4611,4639,4640,4634,4642,3749,3751,3744,3778] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [982,1129,983,1871,1872,1874,1087,1115,1352,1113,1123,1044,1118,1847,1842,1843,1159,961,1006,1008,974,979,977,1306,1309,978,1308,1333] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3546,3681,4209,4212,4213,4217,4083,4096,3325,3678,3680,3682,3683,3147,3323,3206,3207,3150,3161,3677,4218,4220,3191,3326,3327,3162,4112,4211,4110,4111,3722,3706,3144,3142,3145,3141,3724,4086,3309,3310,3311,3687,3703,3545,3547,3709] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [909,910,912,915,438,439,541,542,543,935,938,950,956,954,423,394,555,557,558,1441,1444,1342,1343,1443,1344,1445,1449,1450,1452,913,779,777,941,939,437,374,376,377,372,373,378,379,384,393,382] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4219,4220,4236,3191,3342,3343,3438,3190,3176,3177,3340,3174,4056,4245,3162,3165,3169,3178,3402,3401,3181,3404,3408,3403,3347,4244,4246,3171,4096,4072] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [247,650,251,252,253,639,641,642,609,612,613,614,611,648,250,3553,615,274,830,882,883,884,863,831,589,3510,3503,3504,3509] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3317,3590,3108,3110,3060,3061,3333,3109,3335,3604,3593,3600,3642,3605,3607,3657,3334,3643,3086,3085,3103] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [422,423,401,403,406,410,394,397,633,413,598,572,558,559,575,634,670,1451,1476,1478,1477,1603,1288,1615,1452,1303,1304,409,579] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [317,340,341,342,567,832,833,836,837,839,838,293,294,826,292,874,822,889,549,825,318,565,566,877] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [3039,3042,3598,3599,3651,3631,3019,3020,3021,3407,3409,3410,3357,3652,3418,3377,3379,3380,3381,3382,3416,3043] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [615,616,274,830,863,831,3503,3504,3505,3506,866,864,613,614,3554] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1302,1304,1648,1635,1317,1921,1922,1637,1638,1316,1312,1613,1615,1617,1625,1621,1319,1320,1321,1650,1311] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2959,2961,4293,2952,2980,2981,2990,2969,4291,4312,4258,4259,4260] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2843,3990,4532,5422,2833,4540,4541,4544,5369,2822,5400,4526,2816,2821,5423,5417,5411] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3248,3271,3567,3287,3685,3303,3566,3572,3573,3575] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1222,65,1224,2649,2654,1799,2643,1764,48,52,1758,1772,1773,1776,55] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [211,213,1491,1523,1525,1490,1492,1544,1545,184,201,222,191,193] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        