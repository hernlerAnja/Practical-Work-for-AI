
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
        
        load "data/2C5V.pdb", protein
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
 
        load "data/2C5V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5550,5549,5149,5161,5133,4550,4558,5164,4553,4547,4548,4546,5628,5626,5521,5113,4971,5621,5150,5157,5106,5107,4711,5103,5104,5105,5108,4728,4602,4603,4604,4554,4727] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3411,3388,4498,4499,4655,4464,4480,4485,4486,4488,3412,3413,4993,5002,5003,5005,5018,5019,2978,3410,4479,555,556,557,3379,3381,4691,4690,4692,4994] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [1152,1059,1064,1157,692,1052,1081,1160,95,1080,680,639,1153,258,259,399,502,637,87,139,140,141,83,84,242,644,664,634,638,635,636,255] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7448,25,35,36,186,7857,16,1,17,34,7816,7851,7889,7880,7881,7882,7847,7849,7438,524,7447,533,534,536,525,528,628,222,223,527] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5678,5681,5697,5701,6861,5921,5924,6862,5925,5703,5911,6646,6647,6657,6648,6892,8013,6889,6891,8044,8045,5679,5683,5926,5932,5931,8005,8011,8002,8006,8007,5702,5677] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [7361,8195,8199,8205,8245,8257,8274,8318,8201,8255,8259,8260,7962,8296,7340,7950,7953,7956,8297,7011,7028,7370,7364,7367,7398,7336,7015,7019,7021,7029,6984,6986,6987,7945,7012] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1209,1234,1442,2384,1210,1212,2386,2385,1457,1452,3544,2421,2423,3575,3576,1227,1232,1233,3536,1228,1231,1208,1219] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [2550,3822,3788,3805,3776,3726,3730,3736,3732,3731,3849,3728,2560,2559,3791,2892,2929,3786,2542,2901,2898,2867,2894,2895,2517,3823,3826,3827,3828,3476,3487,3493,2871] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3500,3680,3682,3535,2837,2839,4354,4356,4352,2836,3565,3567,3651,3653,3654,3655,3661,4340,3536,1249,2830,1225] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5694,5718,5702,5695,8004,8034,8036,8120,8123,5701,8809,8821,8823,8825,8812,8149,8150,8130,7969,7308,8151,7301,7299] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [5114,5118,5122,4946,5117,5608,2613,4979,2632,2633,4947,4944,6808,5566,5580,5581,5582,5578,5579,5591] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1455,1456,1430,2182,2179,2180,2181,2187,2188,2189,2173,1822,1831,1416,1417,1865,1866,1836,1837,1838,1825] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5899,5911,5849,5885,5886,6335,5924,5925,5851,6291,6294,6649,6334,6657,6658,6648,6306,6307] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1112,1113,7102,1138,1139,1097,1122,649,645,653] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [977,3508,3509,1203,1216,3140,3467,3466,3465,1204,2880,3131,3510,2848,2881,3471] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [6439,6281,6282,6437,6438,6229,6621,6623,6615,6624,6631,6586,6609] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [354,358,359,351,360,3177,366,1269,3154,1268,1183,3118,3120,3176,331] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [4817,4823,4827,4828,7587,7645,7589,7590,4800,4820,4799,4804,7644,7646,7643,7650,4835] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [434,3452,3453,3454,3448,3451,3455,411,444,2513,447,3463,2544] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        