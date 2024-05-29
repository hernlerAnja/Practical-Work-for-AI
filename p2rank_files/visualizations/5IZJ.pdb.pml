
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
        
        load "data/5IZJ.pdb", protein
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
 
        load "data/5IZJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1591,1592,1593,1855,1888,1889,4639,1879,1881,1576,1577,970,4638,4640,4647,4650,4652,1815,1856,972,1325,973,1324,1315,1316,4331,4346,4347,4348,4636,4635,4060,4357,4332,4611,1892,1895,1896,1897,4570,3724,3726,3728,4080,4079,4071] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1858,2014,2015,2016,2017,1968,2018,2019,1860,1998,2006,2011,1966,1885,1853,1884,1878,1805,2024,2033,2034,2037,2038,2055,2053,1844,1846,1848,4686,1832,1847,1967,1969,1929,1926,1928,1890,2002,1965,4778,4788,4789,4797,4798,4801,4802,4809,4817,4819,1931,4560,4599,4601,4603,4587,4602,4732,4779,4781,4782,4780,4613,4615,4633,4733,4731,4608,4645,4681,4683,4729,4730,4721,3794,3795] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [303,302,304,308,309,359,360,361,2557,2559,2561,306,915,949,1349,1332,922,2587,2588,315,1435,1348,1428,1429,1430,1431,1432,752,919,895,643,1436,1437,1438,1439,483,484,482,887,888,467,913,751,679,678,872] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4103,4104,4185,4191,4193,3120,3122,3067,3121,3070,3064,3065,4184,3512,3513,3647,3648,3649,3227,3228,3646,3653,3404,4187,4190,4192,4186,3440,3439,3403,3245,3634,3241,3243,3671,3674,3665,3667] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3103,3105,3101,3089,3090,3098,3099,3100,3081,3084,4191,4193,3244,3245,3634,3260,3261,3242,3404,4187,4190,4192,3403,4206,3344,3369,3374,3379,3371,3376] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [335,337,339,483,484,500,642,1436,1437,1438,1451,610,611,1435,1432,320,323,328,343,338,342,340,341,344,618,613] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2780,2781,2810,2808,2809,2818,2807,2804,2805,2806,5212,3478,3480,3949,3950,3953,5201,3946,3947,3921,5077,5200,5196,5197,5198,5199,5177,5172,5161,5176] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4490,5000,4493,5035,5038,5042,5012,5029,3971,3972,3973,3979,3943,4460,4461,3945,3948,5043,3980,3983,2817,5050,5052] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [717,12,40,42,2436,2437,2433,2435,2432,2407,2408,13,39,41,2412,2434,2413,2448,1194,1198,50,1192,2313,36,37,38,719,1162,1166,2395,2396,2397] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1188,1224,1225,1228,49,1190,1193,2265,2271,2274,2279,2248,1706,1218,1216,1217,1705,2236] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3804,3799,3838,3835,3744,3877,5259,3782,3806,3743,5267,5257,5258,5265] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [989,1049,2493,2494,2501,1083,1085,1080,1027,1044] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5238,5239,3861,3863,5191,3827,3851,3852,3857,5147,5138,5142,5143,5140,5137,3828,5149] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        