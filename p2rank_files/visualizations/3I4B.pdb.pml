
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
        
        load "data/3I4B.pdb", protein
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
 
        load "data/3I4B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1252,1275,1381,1263,417,1378,1379,1380,1394,1395,505,506,522,525,518,500,504,507,493,1372,1373,1374,4613,270,273,274,4612,4637,283,285,4864,4865,4863,455,450,458,415,416,432,431,433,437,812,400,810,817,267,268,261,266,249,255,302,303,304,253,250,837,1291,1292,834,830,1267,863,844,4588,1402,4604,1486,1511,1235,1398,1400,1401,1225,1396,4844,511,514,515,4825,4826,4827,486,4605,1501,1503,4854,4856,4857,4858,4819,4823,4841,4842,4843,4855] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1859,4154,1866,3035,4131,4132,4133,4146,4147,4150,3028,3031,3034,3178,1867,4004,3987,4027,3177,3022,3272,4148,3193,3282,2085,2086,3264,3271,3198,3261,3262,3263,2087,2088,3243,3216,3240,3250,3210,3257,4020,4130,3279,3268,3270,3275,2071,4231,4232,4247,2069,2070,1858,4257,4152,3977,1891,3044,2107,2108,2109,2099,2100,2101,2102,2097,2098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3010,3016,3019,3022,3063,3064,3065,3176,3177,3174,3011,3012,3014,4027,4131,4132,4133,3028,3178,4020,4016,3620,4044,4043,4124,4125,3569,3601,3594,3161,3587,4015,4127,4130,4126,3591,3391,3574,3390] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1531,1876,4590,4595,4596,1494,1497,1525,1526,1529,1566,4584,1516,1530,1568,1490,1595,1603,1845,1849,1875,1606,1850,4243,4313,4314,4349,4621,4236,1838,1844,4272,4275,4240,4622] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [310,311,312,313,314,315,228,424,60,13,426,716,789,12,73,720,227,229,204,407,206] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [5150,3918,3920,4412,4413,5138,4414,4415,4408,4406,4418,4405,4407,3890,3892,5141,5143,5450,5451,3917,4181,3925,4442,4182,4402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1166,1168,2701,2702,1165,1190,1172,1173,1176,1668,1667,1656,1659,1660,1661,1662,1666,1429,1430,1696,2401,2372,2383,2392,2394,1669,1672,2406,1138,1140,1141] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2965,2967,2988,2989,2990,2840,3072,3074,3075,3076,3070,3071,3073,3168,3185,3187,3453,3472,3473,3546,2841,3169] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1026,936,937,992,999,1025,853,1299,1310,1313,900,1312,1062,899,1024] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [877,879,881,1266,1267,1268,874,910,911,4585,4586,4588,1250,1760,1803,1804,1543,1545,1523,1528,1259,1557,1532,1533] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2073,2076,2099,2078,2061,1955,1990,1957,1951,1992] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4065,4062,4064,3778,3689,3744,3776,3751,3777,3814,3813,3657,3688,3656] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3631,3634,3636,3638,4019,3663,3664,3667,3668,3669,3695,3696,4010,4549,4550,4291,4289,4304,4303,4506,4534] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4364,4703,4746,4748,4834,4701,4852,4855,4697,4817,4828,4829,4830,4848] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [611,2638,610,2636,2639,597,591,606,2635,2657,603,605,2681] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        