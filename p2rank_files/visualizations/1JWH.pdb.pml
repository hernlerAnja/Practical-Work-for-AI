
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
        
        load "data/1JWH.pdb", protein
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
 
        load "data/1JWH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3204,3787,4173,3202,3208,3209,3387,3742,3743,3744,3745,3267,3268,3269,4273,4274,4174,4145,3608,4289,4271,4275,3769,3771,4172,3607,3739,3609,3749,3371,3373,3206,3372,3768,3764,4280,4281,4282,3388,4283,3215] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1441,1443,939,1342,1444,779,941,777,1445,1450,1451,1452,543,919,933,934,935,376,438,542,439,373,558,914,915,912,913,778,1453,1459,954,957,1343,1344,1315,377,938] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [8544,8301,8302,8303,8304,7971,8011,8570,8010,3410,3411,3421,3420,8571,8573,7140,8578,8580,7148,7150,7152,8305,3685,3688,3689,3687,3706,7970,7972,7973,7945,7974,7977,7978,7979,7980,7981,7946,7600,7626] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [851,852,853,6641,6642,6643,6644,6917,859,6318,6319,6320,6909,6640,6311,6883,6284,6349,6350,6309,6312,6313,6316,6317,6919,6923,8813,8809,8811,590,8803,8804,8805,8815,876,838,839] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [3242,3463,3464,4308,3244,4306,4117,4430,4432,4134,4439,4440,4436,3227,3232,3234,3240,4118,4280,4281,4282,4133,4146,3389,3500,4298,3253,3215,3224,4433,4145] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [253,640,639,641,677,648,679,650,609,274,275,252,814,613,882,883,863,574,897] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [8812,8813,566,8811,581,400,580,582,577,589,590,591,876,430,432,396,584,431,369,6347,6349,6317,5856,6318,6319,6320,6346,6351,6352,6355,6357,6358,6957,6992] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [3712,3713,3404,3471,3104,3509,3063,3469,3693,3697,3470,3439,3443,3444,3480,3649,3644,3105,3082,3083,3715] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [3412,3219,3220,3413,3414,3228,3230,3231,3235,3410,8010,7976,8008,8013,8016,3262,7567,7558,7572,7564,8018,7515,7517,7519,7978,7979] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [3813,4697,4164,3989,4182,3945,3948,3912,3874,3875] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [7181,8417,7210,7208,8418,7209,7121,7122,8381,8700,8603,8606,8608,7236,8414,8415] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [1335,1841,1159,1123,1352,1115,1018,1020,1044,1082,1118,1084,1867] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [409,410,423,575,634,422,558,559,670,671,1468,633,1470,1450,1451,1478] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [6805,6806,6807,6803,6808,6812,6708,6799,6497,6481,6482,6474,6837,6839,6491] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [8369,8460,8464,8466,8467,8469,8143,8151,8152,8131,8468,8473,8487,8498,8500,8501,8135] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [4401,4404,4428,4415,3453,3455,3246,3435,3436,3437,3462,4307,3245,3460,3490,4108] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [6942,6945,6973,6947,8845,8897,8844,8781,8782,8871,7039,6720,6719] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [4053,4588,4590,5467,4623,2901,2888,5470,5450,5472,2895,2898,2871,2884,4583,4596,4597,4600,5425,2883,5473] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [5709,5711,5716,5708,5714,6050,6218,6219,6220,5666,5710,5712,5713,5715,5677,5682,5684,6048,5676] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [7374,7376,7345,7377,7880,7881,7369,7370,7371,7373,7343,7334,7338,7734] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [1610,1641,1643,1320,1321,1629,1631] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [341,342,8798,8807,8806,549,8810,567,889,565,296,297] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [7909,7460,7906,7907,7908,7911,8527,8553,8555,8515,8556] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [211,213,184,191,193,1524,1544,1545,223,1490,1492] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [6416,6444,6446,6447,6966,7023,7026] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        