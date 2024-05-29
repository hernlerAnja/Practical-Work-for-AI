
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
        
        load "data/3HHM.pdb", protein
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
 
        load "data/3HHM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1470,2292,5,6,13,15,6572,6573,50,22,48,5304,5305,6047,6056,6057,6058,6059,47,49,2329,2332,2333,6599,6598,6600,2352,2353,46,2363,70,2362,2361,42,1556,6637,6639,6689,2354,6691,69,6512,6540,6535,6536,6732,6715,6722,6731,6699,5301,5303,6735,6748,6738,7431,5014,4981,4982,4983,4984,4985,4986,5299,5300,5302,4958,4987,4993,4994,6571,6602,6607,1469,5268,5269,2294,2296,4961,1485,1486,2293,6646,6636,5011,5015,5350,5351,5020,5022,4989,6541,6545,6544,2291,2328,2322,2323] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [2963,2964,2966,4544,4545,4546,4310,4521,4284,8866,8867,4525,4529,4531,4533,4506,4512,4517,4520,4308,2950,2951,2952,2953,2954,2956,2957,8848,8849,8850,4312,4265,8854,4499,4502,4311,4496,4497,4498,2939,2940,2942,4490,8836,8829,8832,8838,4522,4523,4524,9196,9198,9200,4319,4320,9181,9184,8834,9194,9195,9206,9207,4783,4785,4786,4789,4258,4261] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [6444,6807,7470,7473,7474,7475,7476,6187,6188,6200,6212,6214,6199,7468,6897,6872,7469,7465,7466,6231,6232,6806,6811,6818,6823,6824,6252,6253,6822,6727,6729,6827,7467,6853,6855,7385,7386,6896,6422,6423] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [1075,1077,688,689,687,690,840,5675,5677,837,5676,128,119,113,114,129,130,5367,1053,5368,5645,5674,5673,1051,1049,839,1058,5388,5702,6764,6787,6767,6770,6771,5701,5366,5340,5665,6758,5363,5392,5396,5398] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [3559,3694,3695,3735,3709,9632,9633,3707,9694,9668,9658,5414,5415,10341,10342,10379,3723,2799,9629,9631,3733,3742,3741,3730,2791,3565,3566,9600,9609,9571,3557,3561,3562,3567,3564,3363,5425] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [6693,2351,67,7183,7186,87,89,82,6676,2359,7181,7157,7159,7182,7160,1584,1582,1585,74] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [3633,3650,3632,3651,2933,2934,8650,8651,8640,8644,3616,2901,8656,2949,8840,8842,8823,2990,2991,2953,2959,2961,8849] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [1446,1447,2175,2505,6090,1436,1435,2492,5261,6064,5600,5601,5603,5573,6029,6030,6063,2512,2509,2520,5561,5602] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [3679,3682,1180,5127,5128,1165,1163,1164,3440,3449,3451,3685,5446,5129,5104,3414,3674,3677,5122,5456,3426,5119] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2,5,6,4,39,6382,6816,6036,6400,6079,6081,6398,6047,6056,6058,6732,6815,6731,6813,6814,6820,6050,6403,6414,6416,6048] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [7355,8344,7331,7340,7343,7349,6888,7578,8335,8332,8333,8334,8323,8431,8432,8433,8346] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2116,2117,2118,2424,2423,1909,1682,1937,1681,1770,1939,1908,1901,1902,1903,1905,1936,1768,1772,1910] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [3564,3580,3384,3644,3643,3602,5425,5424,3655,3661,3669,3670,7984,7992,3654,3656,3579,3582,7996,8000] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [4250,4256,8751,8750,8745,8723,8743,8744,8739,8875,8738,8573,8574,8575,4276,8791,8874,8790,8891,8892,4221,4302] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [6798,5667,5694,6283,6429,6799,6261,6415,6022] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [8976,9107,8998,9023,9025,9027,9015,9016,9166,9169,9159,9161,9163,9096,8986,9171,8967,9069,8970] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [5651,5990,5981,5654,5982,5655,5652,5653,787,781,784,785,821,823,822,820,779] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [5655,1034,5616,1026,5653,787,1024,786,785,1055,1057,1059,1060,1058,788,5593,1037,760,763,761,5592] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [7460,7257,7603,7605,7439] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [1470,2184,6,17,6058,6080,16] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [2947,3658,4779,4780,4781,3657,3659,2948,2949,4789,8056,8058,3648,3653] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [4358,4359,4151,4327,4095,4368,4369,4126,4073,4175,4321,4322,4150,4176,4289,4300,4325,4326,4290,8911] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [2217,2224,2231,2233,1383,1384,1385,1386,1387,2200,2209,2210,2215,2211,2125,2127,2447,2111,1860,2446] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [4009,4029,4030,3999,4571,4568,4348,4577,4077,3976,4601,4078,4580] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [2433,6322,2195,2142,2143,2417,6324,6314,6315,6316,2174] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [2049,2079,1910,1946,2117,2118,1909,2078,2081,1908,1905,2083] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [3956,3983,4389,4635,4626,4627,4597,4600,3982,3984] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [9601,10378,10438,10437,10407,3565,3571,9600,9570,3578,3572,3562,3568,10379] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [1492,4962,1485,6646,2296,4961,6608,6607,4993,4994] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        