
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
        
        load "data/8AV1.pdb", protein
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
 
        load "data/8AV1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4309,4322,4323,4326,4327,4332,4336,4340,4641,4645,857,858,859,4634,1253,4643,4647,885,888,889,890,4364,4365,4343,4348,4349,4350,4351,4352,4353,4635,929,4038,4055,4331,4037,4330,4036,1524,1518,1512,1516,1552,1755,1491,1493,1528,1833,1839,1842,1844,1829,1538,1539,1540,1541,1821,1798,1799,1785,1783,3670,3673,3675,4567,4610,4611,3702,3746,3703,3747,4595,4597,4066,4067,4068,4070,4071,3658,3659,1831,1836,1843,1837,3685,3686,3687,3677,3706,3707,3708,3753,1822,1823,3646,3645,4199,4205,3082,3085,3090,3098,3100,3232,4078,4177,4178,4181,4182,4183,4184,3230,3070,3076,3101,3117,3119,3228,4175,4176,4094,4095,3118,3068,3063,3064,3065,3066,3647,3625,3630,3633,3639,3640,3644,3627,3628,3448,3608,3215,3613,3619,267,272,1237,4310,1236,1260,1248,1249,4649,841,867,827,828,4306,264,255,258,4651,4654,4648,4655,4666,4671,246,869,1505,1387,1220,1218,1219,1511,280,282,283,1363,1365,1366,412,523,1359,1360,1276,1277,1358,1357,815,790,397,631,795,821,822,252,301,250,247,248,249,810,300,808,1379,1380,1381] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3103,3105,1477,3080,3112,1615,1617,1606,3084,3088,3102,3077,3111,3060,2065,2067,2087,3239,3241,3568,3130,1484,1479,1590,1598,1474,1478,1629,1475] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [285,749,751,294,241,242,293,418,312,420,421,423,4845,4856,4862,4863,4873,4877,4879,4441,4402,4418,4427,4429,4410,4897,4899,4296,266,4295,4302,259,262] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3530,3531,3511,3585,2875,3222,3128,3129,3130,3126,3239,3240,3241,2902,2066,3044,2874,2888,2889,3043,3019,3021,3223] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [767,693,201,203,405,71,225,84,307,309,310,311,312,422,423,306,308,226,224,712,713,12,55,56,57,70,4877,4878,4879] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1946,1953,2100,1950,1966,1911,2101,2104,1952,1611,1613,1997,1968,2097,2077,2081,2088,2089,2058,2059] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4758,4762,4809,4764,4909,4913,4912,4425,4691,4893,4887,4889,4900,4901,4870,4723,4765] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [877,1297,1298,878,1284,1010,1007,1009,1011,2573,1045,1047,1295,1317,1320,921,920,922,875,900] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3695,4102,4113,3863,3865,3825,3738,3740,3691,3696,4116,3693,4115,3827,3828,3829,3802,5385] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2405,2414,2714,2715,1150,1662,1153,1151,2366,1664,1667,2385,2396,2402,2407,1654,1655] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [412,523,1359,1360,790,791,630,1367,1373,556] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4707,4673,4697,4732,891,892,908,938,910,868,869,867] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3709,3710,3754,3755,3756,3683,3685,1861,1919,1920,1918,3682,3728,3726] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3518,3519,3520,3521,3523,3524,3501,3522,3262,3556,3558,3275,3279,3557,3277,3297] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        