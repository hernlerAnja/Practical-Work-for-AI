
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
        
        load "data/3KXX.pdb", protein
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
 
        load "data/3KXX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7676,7677,7688,7415,7423,7425,7687,7662,1583,236,237,238,7411,7414,8611,8612,8613,8614,8615,1584,226,227,474,499,7706,7740,7424,7426,8446,8447,8448,8460,8461,8445,8468,8471,7710,8464,8469,8470,8348,8312,8337,8338,8632,8633,8443,8444] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2871,3866,2705,2706,2707,3865,3115,3232,3236,3782,3859,2856,2651,2655,2656,3312,2653,3278,3783,3248,3257,3275,3254,3753,3767,3867,3282,3285,2684,2870,2872] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1441,235,237,238,1440,1281,1581,1602,1603,1413,1414,1318,1415,1308,7414,7646,7649,522,1431,1416,1417,246,258,419,422,423,232,233,230,231,239,240,241,242,243,427,220,1418,519,496,523,524,527,439,529,553,1422,424] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [1418,201,256,257,1333,1334,808,829,826,1416,1417,258,420,421,422,552,1411,1410,783,202,407,204,799,833,1304,836] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [492,8605,8608,8611,8613,7678,7680,8616,8586,8587,8588,8582,7172,8484,8485,8302,8471,8560,8562,8574,8578,8579,8580,8624,8625,7170] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [7609,7610,7396,7397,7444,7445,7446,7389,7390,7611,8446,8447,8448,8024,8051,7408,7407,7971,7595,7855,8440,7993,7392,7987,7741,8364,7996,8014,8363,8017,8021,8334] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [1516,1505,1712,1731,1659,1661,2243,1730,1732,4692,1506,1507,1509,1518,3954,3963,3966,3968,2244,3955,3958,4161,4179,4180,4181,4197] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [5424,5128,5336,5393,5420,5421,5426,5449,5318,6155,6156,5137,5138,5140,5141,5142,5155,5139,5324,5317,6325,6180,6320,5417,5419,6169,6170,6178,6179,5414,5415,5416,6151,6152,6153,6154,6157,5319,5129,5124,5131,5120,5125,5396,5386,6323] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [5154,5155,5097,5098,5103,5104,5099,5318,6155,6156,5304,5706,5101,5702,5705,5733,5726,5723,5760,6157,6052,5730,6043,6072,6073,6149,5319,5320,5680] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [6269,6271,6285,6011,6292,6297,6325,5418,6174,6176,6180,6194,6317,6320,6193,4882,5411,6314,6335,2941,5388,5389,6324,6322,4022,4006] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [2971,2678,2681,2682,2683,2684,2686,3002,3880,3863,3879,2948,3889,4035,3731,3758,3767,3864,3866,3865,2677,2672] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [3729,3731,3758,3767,3864,2676,5124,5131,5133,5134,5135,2677,3865,4052,5359,3730,3890,4030,4045,3889,4031,4032,4033,4035,2971,2678,2681,3863,2948] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1564,1565,7178,7179,1703,1701,1562,1541,1688,1689,1690,4897,4896,4920,4922,1542,4139,4128,4014,4152,3990,3991,1679,7200,4150,4151] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7211,7724,7725,7726,7749,7695,7934,7936,7937,7901,7225,7229,7230,7232,7236,7239,7899,7758,7755,7756,1987,7696,1958,1985,7185,7187,7207] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4186,4187,4189,4200,4732,4734,4735,4739,3662,3664] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [1454,1455,1433,1532,1544,1547,1552,1272,1530,1585,1586,1558,1557,1569,1575,1439,1578,1594,1537] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2940,2941,5389,2939,4027,4033,4034,4035,3721,4005,4007,4024] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3538,3569,3562,3563,3595,3513,3539,3536,3540,3541,3323,3324,3819,3820,3818] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1518,4104,4107,1520,4694,1502,4679,4142,4143,4099,4129,4131,4472,1538,1519,1513,1534,1500] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [1089,874,1064,1090,1091,1092,1145,1113,1114,1120,1369,1370,875,1371,1372] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7019,7022,7025,7036,7029,7024,7040,6490,6487,6475,6511,5953,5954,6476,6477,6479,5924,5926] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [6520,6947,6553,6804,6949,6950,6951,6802,6656,6658] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [5839,6838,5811,5814,5813,5847,6609,6844,6845,6849,6855,6879] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        