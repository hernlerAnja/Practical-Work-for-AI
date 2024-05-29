
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
        
        load "data/7T4V.pdb", protein
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
 
        load "data/7T4V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5341,6107,6108,5990,5174,5175,5592,5637,5045,5158,4991,4993,5634,5654,5655,5666,7273,7275,5019,5020,5022,5024,5044,5046,4996,4999,4990,5657,7298,7300,5191,6002,5962,5979,6109,5991,5978,6122,6106,6121,6132,6134,5279,5280,5316,6135,5007,5002,5018,5226,5227,5229,5236,5443,6100,6101,5611,6018,6019,5607,5610,5596] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2270,2282,1934,1937,2271,2272,2380,1270,1914,2299,1915,1917,2298,2258,2259,1325,1271,1273,1269,1890,1887,1891,1946,1454,1455,1872,1326,1871,2381,2390,2392,2394,2396,1723,1471,1621,1596,2409,2410,2411,1558,1559,2422,2242,2421,2423,1438,1876,1303,1299,1300,1281,1282,1302,1304,1276,1279,3588,3587,1507,1510,1560,1295,1298,1509,1516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4181,4182,4183,4449,4644,4755,4447,4643,4757,4789,4642,3889,3891,3893,4753,3915,3846,3892,4202,4778,4779,4781,4780,4782,4808,4785,4786,4401,4403,4424,4456,4458,3881,4400,4402,4679,4671,4600,3980,3979] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [205,1033,1035,1030,172,727,729,920,922,923,924,236,1037,173,703,704,736,737,738,739,1062,1065,1068,1058,1060,1061,1088,683,139,146,148,136,682,150,678,680,681,438,439,440,459,237,235] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [6172,6177,6174,1376,6916,6420,6923,6924,6165,6189,6379,6380,6382,6387,6389,6170,6166,5889,5890,5897,5912,5913,5891,5893,6960,6162,6388,6390,1236,1233,1234,1235,6201,5863,5865,1374,6945,6951,1204,1206,1220,1229,1208,5902,1207,1203,1215,6954,6958] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [779,784,786,790,627,628,616,514,618,515,717,713,714,764,769,773,706,707,708,697,698,699,774,775,674,645,689,696,369,789,805,370] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1314,1315,1316,1334,1317,1243,6185,1306,1307,1308,3612,3609,3603,3608,1462,1463,1823,1825,1827,3624,3632,3639,3651,6191,6193,6194,6183,1479,1480] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4919,4921,4922,4918,4940,5566,5181,5183,4961,4963,5166,4941,5069,5164,5182,5567] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4493,4506,4509,4499,4427,4428,4416,4417,4433,4436,4365,4394,4409,4525,4113,4495,4510,4504,4348,4257] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [5026,5029,5027,5028,5034,5035,5182,5545,5546,5036,5197,5199,7322,7323,7321,7324,7363,5547,5179,5180,5181,5183] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [7151,7152,7153,5779,7060,7067,7069,7072,5754,5755,5788,7157] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3360,3357,3440,2059,3348,3355,2068,3445,3451,3456,3462,2066,3457,2034,2033,2035] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        