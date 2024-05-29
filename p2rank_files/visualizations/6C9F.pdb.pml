
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
        
        load "data/6C9F.pdb", protein
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
 
        load "data/6C9F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5472,4925,5461,5473,6068,6071,4934,6200,4940,6202,4931,4932,4935,5455,5459,5460,5463,6650,6652,6052,4939,4941,6204,6054,6055,6053,5441,4792,4793,6209,6210,6651,6653,6070,6194,6645,6663,6195,4819,4901,4904,5202,4907,4908,4947,4949,4948,5230,5231,5239,5299,5302,5287,5305,4909,5468,5448,5451,5453,5199,5200,5278,5279,5280,5283,5240,5303,5454,5433,5470,4924,4926,5465,5292] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [673,544,1115,543,545,678,702,1114,714,717,699,1188,1194,1195,1196,1197,1099,1187,1189,1191,1087,722,725,104,105,106,156,155,98,99,268,674,111,269,102,254,100,103] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4000,4392,2219,4207,4265,4410,4411,4768,4765,4772,4773,4226,4239,4001,4069,4615,4769,4762,4764,4067,4070,4408,4706,4740,4743,4250,4707,4709,4248,4249,2198,2216,3998,3999,3997,2192,2193,4013,4027,4025,4093,4032,4030] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3329,3328,3331,141,146,147,631,632,294,3102,3103,3104,274,275,277,287,138,137,321,291,278,650,651,15,16,3084,3083,3347,3348,3349,3302,3283,3327,3298,164,3305,163,165,72,73,17] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1987,1988,1497,1980,1982,1990,4117,4121,4122,4123,4124,4125,1939,1963,4018,1949,1950,3945,3947,3974,3975,1466,1470,3951,4129,4131,3948,1015,982,984,1463,1464,981] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5412,5439,5443,5444,5440,5441,5442,6796,5416,6067,6052,6648,6776,6780,6775,6784,6788,6789,5464,6649,5602,5603,5605,5607,5462,5463,6774,6761,6797,6795,6072,6661,6064,5867,6065,5406,5447,5450] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2818,2819,2820,4305,2895,5547,2824,4299,2828,5530,5531,5534,5535,2892,5513,5525,5528,4310,4164,4165,4296,4302,2903,4368,4369,4370,4313,4317,4319,4304,4383,4321,5562,5544,5551] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [6658,6639,6642,6643,6645,6663,6195,6222,6223,6194,6177,6176,6410,6449,6476,6477,6478,6475,6464,6472,6471,6680,6209,6212,6651,6447,6408,6627,6632] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5621,5578,5597,5581,4779,4783,4785,4796,4799,4622,5579,5580,5582,5596,5612,5614,5617,5616,4063,4064,4065,4777,5573,5623,4085,5571,4610,4077] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [742,744,774,778,740,1092,1607,1365,1592,1593,771,768,1082,1567,772,769,1596,1601,1606,1608,1594,1595,1366] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [622,623,3563,3564,3565,3566,294,3103,3104,3099,3562,310,311,3100,3081,3086,3092,3443,3445,3096,314,615,620,3572,3573,3656,3668,3665,3666,614,616,619] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [268,658,659,285,156,270,429,399,395,398,436,1198,1200,1202,1209,1188,1195,1196,1187,1191,463,673,425,426] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [6846,6852,5775,5777,6854,6825,6826,6827,6835,5772,5774,5776,4450,4451,5771,5773,5840] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4789,4790,4791,6213,5596,5614,5616,6653,6654,5473,5597,4065] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4877,4880,4881,4882,4888,5298,5505,4885,4886,5504,5311,5509,2881,2872,5537,2878,2879,2880] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5731,5701,5728,4457,4469,5738,5669,5671,5705,4468,4466,4456,4460,4467,4489,4490,4488,4455,5691,5692,5700] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4200,4220,4204,4210,4215,2230,2243,2249,2251,2994,3025] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1278,1284,1276,1281,1436,1437,2690,2691,2669,2670,2671,2510,2512,2796,4174] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6758,6759,6760,6761,6797,6072,6076,6661,6092,5900,6064,5905,5867,5868,5901,5889,5902,6065,5906] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        