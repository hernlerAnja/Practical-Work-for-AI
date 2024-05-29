
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
        
        load "data/1E8Y.pdb", protein
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
 
        load "data/1E8Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4949,3409,3414,3415,4950,472,3408,3410,3413,3693,471,473,971,992,1102,1104,1129,989,990,3726,3727,3728,4488,973,4502,4503,4504,4512,3771,3772,3723,3725,1089,1090,1091,5035,5037,5039,5038,524,1087,1086,1115,1125,1128,1085,1092,1093,1116,1117,1119,553,3421,3423,3419,3420,3422,5004,5007,3389,3390,501,1155,1156,4998,5001,4999,5000,5002,1153,5076,1130,1132,1164,1152,4972,4996,4997,5003,545,5065,543,4938,4973,4974,4975,5111,5114,5128,5131,5134,4489,5127,5215,4913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5205,4843,5206,4614,4615,4823,4679,4640,4659,4841,4681,5222,4865,5230,5123,5856,5858,5859,5210,5778,5779,5224,5864,5865,5866,5867,5751,5755,5763,4633,4635,5260,5265,5286,5288,5251,5259,4625,4626,4619,4627,4599,4600,4612,4631,4632,4641,4643,4636,5120,5121] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4040,4039,4006,1282,4013,4037,1290,3714,4466,4467,4468,4529,4532,4030,981,982,983,1291,3684,434,1003,1253,943,3678,3679,3686,3680,3682,980,4509] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2645,2653,2659,2665,6315,6316,2638,2639,2649,6435,6437,1624,6404,6400,6401,6402,6347,6348,6436,2908,2909,3192,3240,3242,2873,2669,2670,2671,2710,2882,2883,6289,3189,3223,3228,3229,3230,3231,1619,1633,3217] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2286,2287,6359,6363,6362,2272,2274,2284,2285,3830,3852,3854,2273,2293,6381,6383,2029,3855,2245,4873,4890,3823,5168,3840,2219,2232,6351,6352,6358,3833,3834,3505,6368,6369,6372,6370,6375,6379,6382,2246,2250,2251] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6241,6243,5005,5006,5046,5008,3432,3434,6266,3155,3419,5007,3138,500,3157,3365,3142,3396,3397,3398,501,502,3158,6264,6265,3149,3151,3148,3150,5014,6260] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5886,6340,6365,4900,5889,5891,6364,6366,6428,6429,6430,4931,4933,5871,5872,5698,5705,5690,5696,6339,6308,6310,6427,6332] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2315,2317,2061,233,3553,3554,2319,2322,188,194,197,198,200,216,217,2328,2329,205,206,207,208,209,3894,3886,3893,3849,3881,3883,3884,241,3520] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6753,5738,5739,5279,5278,5314,5311,4248,4250,5744,5747,6771,6773,6774,5353,5367,5350,5752,5753,5754,5755,4634,4635,5287,5288] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4522,5212,5214,5215,4493,4802,4804,4807,973,4502,4503,4504,5219,5231,5237,5238] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5677,5921,5924,6630,6631,6594,5707,5923,6811,5916,5906,6458,6456,6454,5698] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [1017,1018,926,928,817,914,408,409,418,1020,443,1246,1247,794,795,1021,1022,1023,1032] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1623,2256,2265,2266,1582,1584,1964,1965,1999,1570,2295,1639,1599,1601,1600,1617,1618,1619,1625,1620,1621] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2236,2237,2007,1731,2006,1732,1494,1477,1478,1470,1475,1991,1493,2016,2018,1457,1459] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [958,1198,1199,1201,4762,4765,1195,972,1103,4754,4758,1181,1173,1178,1177,1175] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3158,3159,6264,3149,3162,3150,6256,3167,2848,2849,2851,6259,3193,3163,3166,6241,6252,6260] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5706,5661,5662,5663,5666,5639,5641,5877,4965,4966] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [808,806,839,841,661,663,662,936,818] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        