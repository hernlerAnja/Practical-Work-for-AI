
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
        
        load "data/7JHG.pdb", protein
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
 
        load "data/7JHG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6309,6554,6555,6695,6552,6694,6307,6693,6308,7415,7422,8880,7423,7424,7428,7429,8844,8846,6302,6306,6701,6719,6727,6728,8841,8848,8838,8839,8843,6690,6692,6697,6675,7080,8009,8233,6329,6330,7431,7432,7433,7434,8763,7430,7077,6531,6537,8852,606,8854,7856,7857,7859,7861,7445,8008,7446,6321,6538,7413,7414,7416,7390,7412] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [4185,5008,5601,5602,5603,5605,4183,4184,4989,5004,5007,6042,6043,2200,2202,6024,2184,5006,4323,5464,5588,5595,5597,4847,4853,4851,4852,4854,6045,5604,5606,5607,2197,2198,2210,5462,5586,6053,6055,5614,5615,5587,5568,5569,6050,6031,6034,6019,6035,5870,5800,5802,5834,5837,2201,6044,6041,5864,5856,5869,4331,4333,4332,5596,4180,4865,4861,4862,4863,4177,4181,4864,3459,4169,4171,4182,2211,4324,4317,4340,4341,4316,4318,4319,4857,4860,4988,4845,4846,4174,4175,4301] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [96,713,715,89,90,95,92,93,682,243,256,661,663,244,668,675,146,145,680,109,100,101,106,1187,258,259,260,115,707,712,1104,1105,703,704,535,1178,1179,689,686,1077,1089,1090,1177,1184] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [10937,10938,11441,11442,9757,9763,9776,9778,1006,11071,11072,11073,11074,11075,10919,10920,11439,11102,11112,11070,11110,11057,11125,11538,11537,9745,9751,11553,11554,11555,1004,11460] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [4177,4181,4188,4864,3459,4973,4168,4169,4171,4182,2211,3444,3445,3447,3454,3455,3464,3452,3453,4987,4970,4988,5013,5015,5017,3978,4965,4961,4963,4974,4967,4971,3457,3460,4002,4175,4174,3446,5005,5006,5008,4183,4989,5010] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [4317,4340,4341,4318,4861,4845,4846,4857,4860,4872,4300,4293,4688,4301,4691,4694,4696,4683,4684,4299,4674,4675,4655,4367,4622,4623,4620,4670,4679,4678,4632,4584,4594,4630,4631,4833,5448,4331,4333,4332,5447,5449,4847] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [4926,4927,3689,2944,4939,3546,3680,3682,3686,2870,2873,2866,2869,3703,3705,4905,3698,3754,4954] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [3590,3605,3609,3611,3612,3613,3594,3633,4099,3634,2247,3795,3648,3649,2268,3792,3794,3790,4156,4157,4098,4131,4132,4135,4165,4164] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [2247,3776,2264,2266,2268,2269,3774,3674,3761,3663,3393,3395,3570,3571,3573,4154,2221,4164,4005,4007,3411,3410,3475,3474,2226,2243] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [604,605,606,609,610,613,302,303,304,6775,614,8822,8815,6557,6559,6590,6550,283,622,6747,6748,8817,6726,6728,8816,8791,8818,6758] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [35,37,38,5351,5352,192,193,194,26,28,8955,8957,9016,9018,8984,8987,8981,5335,8985,8986,8988,9017,16,9010,9008,8954] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [445,453,480,1013,1197,1200,11480,11482,11497,1224,11501,11503] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [6051,6166,6167,6153,6186,5465,5468,5469,6052,6054,4855,5463,4856,6046,6180,6181,6150,6154,5459,5444,5453,5456,5259,5457] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [614,9070,9071,8822,9056,9059,9062,9063,9067,8858,613,622,268,154,641,65,621,8818,8817] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [6926,8717,8725,8723,8724,6906,6927,8695,8544,6925,8684,8687,8693,8692,8691,8540,7069,7086,7070,7071,7072] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [3586,3643,3640,3646,3582,3597,3602,3603,3604,3818,3820,3642,3654,3656,3043,3078,3071,3072,3075,3077,3044,2292,3042] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [8887,8888,8889,8890,8863,8891,8917,8957,9015,9016,9018,8855,9075,9077,8861,9014,9047,9017,11,18,25,587,592,8916] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [1412,1424,11586,11587,1413,11452,1437,1441,1442,1427,1428,1375,11429,1457,10913,10856,1926,1927,1456] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [4489,4491,1121,1152,1118,544,504,1166,1165,4463,672,677,671,673,691] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [5035,6226,5177,5972,5971,5099,5063,5033,5060,5061,5064,5031,6205] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [9960,9961,9958,10492,10494,10661,10662,10667,9998,10465,9997,10463,10520,10646] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [6366,6681,6682,8417,8250,7059,8416,6679,6677,6301] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [1210,1232,418,419,420,629,649,1230,276,330,323,317] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [11951,11953,12253,12371,11825,11824,11831,11826,12232,12233] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [8870,8894,8901,7466,7489,7490,7688,9001,7714,7657,7656,9023,8871,7514] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [2843,2844,2845,3556,3557,3523,3313,2739,2740,3338,3314,2717,2718] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [10321,10322,10323,10346,10087,12010,12022,12023,12003,12004,12158,12160,12159,10086] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [6926,8717,8725,8715,8716,6921,6922,6924,8756,6920,8230,8231,8753,8754,8755] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        