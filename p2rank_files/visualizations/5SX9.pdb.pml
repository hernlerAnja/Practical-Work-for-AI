
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
        
        load "data/5SX9.pdb", protein
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
 
        load "data/5SX9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9460,9461,8178,8193,3638,5524,9522,9523,9494,9497,9498,9499,9531,9471,9488,5506,6876,5507,6878,6882,6883,6599,6580,6581,6582,6884,5505,6890,189,192,193,196,197,6579,190,9468,9469,9470,202,3433,3693,3718,5531,8175,8176,8160,8218,8219,8214,3615,3616,3613,3629,3628,3649,3651,5523,3606,3608,3743,3744,5520,5522,3759,9490,5181,5182,5183,8168,5516,5509,5513,5514,5515,3717,3710,3713,3703,3704,3705,3707,3709,3691,3692,5194] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [5406,5407,5408,5409,5410,5411,6681,6682,6680,6622,6654,6655,6683,6646,5457,5456,6857,5128,1568,5374,5375,6842,6825,6832,6855,6153,6157,6845,6848,6163,6164,6648,5088,5089,5091,5093,5099,5117,5090,5121,5125,5126,5095] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [6293,6534,7479,7561,7478,6982,7006,6533,6291,6292,6336,6337,6616,6618,6916,6836,6837,6839,7558,7560,7562,6617,7566,6550,6589,6917,6553,6554,6915,7453,6305,6306,6359,6928,6932,6933,6934,6937,6963,6921,6834] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [5782,221,222,5781,5783,5807,5839,5808,6897,6880,6562,226,213,5751,5771,5780,938,939,1157,789,1174,1152,1176,5469,5472,5473,5474,5494,5446,6868,6874,5498,5502,5504,6881,5478,6877] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [4365,4366,4367,4371,3006,3016,3017,3018,3019,3020,3025,3029,4623,4631,3022,4651,3023,8869,4417,4418,4604,4391,4414,4416,8877,8878,8876,4628,4629,4630,9099,9102,9097,4608,4891,4607,4617,4618,4637,4612,3005,3008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [5366,5679,5367,1532,5707,5663,5667,1534,1535,1545,1546,2604,2601,1542,1544,2608,2611,2591,5708,5709,6135,6136,6169,2274,6196,2592,2593,1524,1526] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [7655,7656,7625,7654,7664,9391,7653,3635,3636,3637,3640,9429,9430,9431,9419,9390,10351,9358,8191,8192,3638,7629,7631,3644,3658,3659,3661,7657,7658,10384,3633,3634,10383,8190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [8970,8972,8980,8943,8834,4400,8889,8890,8893,8895,9077,9008,8923,9075,9076,9006,8757,8758,8812,8815,8827,8831,8948,8811] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [6163,6164,6165,6186,6187,2400,2402,2404,2431,2432,2396,2397,2438,2266,2283,6177,6472,6473,1569,2391] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [1583,1584,1585,2421,2422,1655,2393,6680,6704,6707,6711,6712,6717,6718,6708,6709,6705,6745,6746,6747,6748,2451,2452,2418,2427,2428,2431,2432,6710,6809,6800,6801,6757,6756] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [2999,3000,3027,3057,3685,3025,3028,8864,8863,8714,8855,8715,8718,8721,2967,2968,3054,3055,3056,3678,3700,3682,3699,3670,3674,3676,8858,8857] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [4658,4130,4141,4129,4686,4058,4707,4674,4677,4057,4056,4059,4140,4151,4454,4461,4683] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [6578,6573,7568,7582,7567,7569,6319,6320,6589,6553,6554,6915,6616,6618,6617,7566,6606,6609] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [1196,1232,1116,1113,1099,1199,1203,1204,1192,1121,1122,816,820,824,1118,1189,799,819,807,1186] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [1156,1158,5761,918,1125,5759,5760,919,922,5722,5731,5732,880,884,885,859,862,877,886,1133,1134,1136,5725,1124] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [3678,3686,3700,3682,3666,3667,3669,3668,8653,8655,3708,3699,8652,8684,8687,8858,2999,8244,8688,3651,8224,8225] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [8232,8234,8230,8231,8233,4352,4893,4894,4895,4346,4341,4364,4881,4904,4856,4340,4342,4365,4366,4367,4906,4607] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [7743,7789,7867,8488,8491,8521,8490,8489,8508,8493,7913,7746,7915,7790] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [5552,1279,3723,5210,1262,1263,1264,3722,3728,5235,3484,3487,3475,5224,3463,3491,5222] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [4133,4132,4134,4435,4247,4248,4428,4431,4433,4474,4164,4174,4176,4177,4148,4157,4274] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [6508,6507,6480,6481,6482,6483,6484,6510,6503,6497,6162,6165,6184,6186,6923,6924,6925,6154,6525,6513,6930] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [8241,8242,8663,8664,8665,7648,7649,8662,7668,8305,8641,8626,8627,8628,8633,8634,8637,8303,8304,8239,8240,7644,7646] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [6974,6975,7151,7189,7190,6971,7037,7038,7039,7149] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [10532,10533,10449,10451,10412,10450,10530,10560,10563,7668,8641,10458,10488,10421] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [3779,3784,3791,10231,9491,9489,10269,2864,3614,3772,10239,10229,10232,10234,10235] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [3471,2775,3532,3536,3843,3531] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [9051,9001,9002,9003,8834,8980,8974,8976,8739] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        