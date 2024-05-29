
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
        
        load "data/5OOI.pdb", protein
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
 
        load "data/5OOI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [378,4454,1585,1588,1589,1268,1269,1283,1284,1285,1448,1454,1455,1456,609,610,1447,1449,1446,4331,4442,4451,4452,4453,4475,371,377,4953,4955,4956,4957,372,375,376,380,359,368,1298,1309,1428,1430,1297,384,387,534,646,1429,4443,396,397,4747,4970,4971,4972,4973,4745,4967,1610,1611,1301,1302,963,1896,1897,4961,4966,4980,4979,1300,1904,971,4441,4426,4427,5000,4433,4435,1582,1590,1594,1631,1632,1963,1964,1965,1581,1584,1621,1565,1566,1597,1598,1944,1951,1954,1608,4337,4338,4339,4340,4323,4333,4334,4335,4336,4403,1567,1955,4733,4401,4402,4734,4735,4736,1975,1973] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [358,346,353,412,413,347,348,350,351,934,914,917,918,533,518,887,889,890,891,892,519,397,359,367,368,1309,1427,1428,1430,1296,1297,1325,1422,1419,1421,1324,937,1323,1437,1423,752,754,534,535,1431] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4094,4095,4192,3525,3667,3685,3688,3689,3690,4096,3705,3289,3290,3119,3121,3122,3523,3658,3660,3708,4080,4193,4067,4068,3129,3130,3138,3182,3124,3125,3127,3118,3305,3306,4195,4198,4199,4201,4190,4194,3661,3663,3304,3662,3184,3183] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3424,3425,3645,3563,3564,3565,3630,2984,3459,2996,2999,3002,3019,3020,3389,3386,3388,3360,3581,3631,3395,3361,3398,3000] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3139,3142,3146,3158,3160,3151,3155,3154,4040,4225,3380,3381,4217,4218,3344,3305,3306,4199,4200,4201,3417,3168] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1820,1095,1333,936,1314,998,1000,1846,957,989,941,1110] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1974,1976,2199,2200,2202,3150,3159,3161,2195,2196,2182,4340,4335,4336,1681,1682,1683,3345,1975,3149,3147,3160,3379,3381,2229,1664,1670,1680,1671,1672] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3312,3086,3314,3601,3296,3594,3597,3603,3595,3038,3572,3609,3604,3063,3066,3297,3037,3062,3085,3087] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1955,4402,4734,4735,4736,4729,1957,4368,1975,3149,1973,2216,2218,2219,4369,4337,4339,4340,4333,4334,4335,4336,4403,1976,4361,4365,4353,1954] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4317,1569,4321,4295,3369,3371,3372,4324,4030,4240,3407,3377,3379,3381,2962,3374,2960,4299,4311] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5384,2819,2823,2824,2825,5387,5389,2812,2815,2816,5388,5399,5401,4508,3973,4511,5390,2835,2836,3947,5395,4543,4516,4517,4520,4502,2807,2808] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2933,4274,2940,2942,2950,4239,4240,4241,4246,4248,2961,2962,4295,2971,4294,4272,4273] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4591,4104,3728,3771,3769,4165,3866,4085,4087,4060,3881] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1746,1749,1731,1737,1745,41,42,2613,2619,1740,64,54,48,37,1202,2623,1772,2607] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4744,4746,4985,4986,4987,4989,4990,1942,1945,1934,1936,1935] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1523,1501,169,1502,1503,171,1469,1524,1470,201,179,162,174,181,190,191,601,188] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        