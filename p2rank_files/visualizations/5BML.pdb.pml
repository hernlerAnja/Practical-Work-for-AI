
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
        
        load "data/5BML.pdb", protein
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
 
        load "data/5BML.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [44,45,77,78,6385,6387,6389,51,16,40,41,3747,3750,3781,14,3939,9,7,10,12,3954,3727,37,39,87,111,3393,6404,6384,52,53,54,6405,6383,6395,3392,3733,3743,3744,3384,3385,3310,3320,3379,3318] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3842,3836,3893,3894,3895,4493,4831,4491,4939,4940,4942,4934,4021,4023,4941,4440,4441,4935,3840,4857,4858,4859,6146,6148,6150,4445,4463,4467,4468,4006,4293] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1287,1625,633,634,2920,2922,2909,2915,2925,692,693,638,1284,1285,1286,819,821,1735,1636,1733,1734,639,640,2947,2928,1651,1652,1262,1261,1260,1280,804,1239,1257,1251,2924,1729,1234,1235,1653,1728,1087,1088,1232] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [910,938,670,672,673,908,924,1757,935,1750,1751,937,939,940,1749,936,1758,837,646,676,654,655,674,677,1598,1614,1888,820,821,1735,1734,1736,662,663,658] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3364,4206,4208,4207,3344,3357,3361,3362,3343,3352,3353,3337,3342,3345,4240,4239,4168,4170,6349,4162,4172,4197,4198,444,429,4165,4163,4164,6342,431] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [992,1001,1002,1033,3103,3105,135,151,197,3120,140,143,144,142,162,150,154,155,158,159,3633,3631,962,964,956,957,958,959,960,961,3098] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4124,4141,4143,4145,4146,4955,4956,4964,3848,3857,3860,3865,3869,3872,3874,4039,4957,4140,4959,4942,4819,4820,4022,4023,4941] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3081,3082,886,884,907,911,919,3574,875,876,878,881,882,909,3094,3596,3598,929,921,950,960,925,926,3078,3080,3092] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3467,3509,3508,3510,3482,6231,6303,6236,6234,6225,6230,6241,6258,3470,4372,4375,6309,6311] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3216,3215,3217,760,778,798,780,3227,1127,3218,1126,738,736] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3254,3256,3250,3251,3252,3253,3255,1127,3170,3190,3192,3215,3217,760,780,3224,3227,3220,3194] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [266,268,264,265,306,307,308,1165,3059,3068,2989,2991,280,3014,2997,2986,1169,2981,1166] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3241,3243,579,577,578,738,752,541,542,3146,525,3239,3242,3216,3214,753,3200,3204] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [15,16,4331,4333,4332,3962,3980,3982,4000,3961,3940,3938] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1508,2597,2588,2591,2076,1527,2040,2567,2079,2041,2042,2587] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4318,4320,4322,4316,4317,4332,4331,4333,3980,3982,4000,3998,6401,6396] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4417,4416,3904,4031,3763,3764,3808,3903,4014,3785,3762,4394,4396] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4794,5056,5083,5158,5069,5076,5180] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        