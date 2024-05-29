
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
        
        load "data/5SWT.pdb", protein
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
 
        load "data/5SWT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9740,5580,5579,5581,6673,8284,6671,9708,9697,9699,9670,9706,9707,9669,9667,8299,3712,3714,5597,5598,9731,9732,214,219,9677,9678,9680,6957,6958,6964,6653,6655,6656,221,6950,3682,5590,5599,5587,5588,5589,5603,5604,5605,8266,8274,8281,8282,8272,8312,3680,3689,3690,9700,3687,3703,8323,8324,8325,3702,3723,8318,8320,3817,5594,5596,3818,3833,3858,3784,3787,3791,3778,3781,5268,3507,3767,3783,3766,5255,5257] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [5531,5480,5481,5482,5484,5173,6755,5448,5200,5202,6729,6696,6724,6725,6728,5530,6919,6916,6756,6757,6899,5483,5485,6227,6231,6237,6238,6720,6922,5162,5163,5191,5164,5165,5169] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [6431,6433,6608,7652,7037,7039,7056,7569,7570,7080,6410,6411,6365,6366,6367,6692,6990,6908,6910,6911,6913,7649,7651,7633,7653,6627,6989,6991,6628,7544,6379,6380,7654,7657,7658,7006,7008,7011,7012,7014,6995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [4676,4679,4682,4678,4465,4490,4491,4492,9035,4445,3062,3061,3072,3075,4713,4711,3073,3074,3076,3078,3079,3085,3086,3094,3081,3095,9018,9034,9022,3071,4437,9019,3070,4965,4969,4692,4697,4705,4709,4719,4726,4724,4702,4703,4686,4704,9289,3093,4725,9291,9293,9294] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [3055,3056,3760,3773,3774,3756,3759,8788,9019,9024,9026,9025,8838,9006,9007,3023,3024,3752,3110,3111,3113,3081,3082,3083,3084,9013,9012,8847,8848,8851,8854,3112,3782,8332,3740,3741,3743,8330,8331,8348,8349,8350,8822,8823,3742,8821,8833,8817,8820,8785,3725,3761,3766,8336,8339,3718,3720,3727,8824] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [254,5854,5855,5856,5857,5882,5881,6942,6948,6951,6971,238,239,247,248,5912,5913,6955,6954,246,5825,5520,1204,1206,5547,5546,5548,5568,5572,5543,5573,5576] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [8753,8754,8900,8899,8905,8906,8911,8914,4436,9043,4398,4399,8941,8943,8916,4401,4431,8898,4483,4482,9060,9059,8939,8945,8974,8445,8447,8446,8435,8441,8443] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [9266,9244,9164,9162,9163,9198,9200,4474,9050,9268,9269,9265,9267,9066,9172,8983,9055] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [1576,2621,1572,1574,2304,6270,5782,5753,6209,6210,5781,5783,6243,5745,5739,5737,5741,5751,5440,5441,1562,1564,1565,2640,2641,2654] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [3718,8321,8357,7739,8345,8346,7740,8824,8798,10593,8331,8348,8349,8795,8796,8797,7737,7708,7741,7742,7746,7747,7748,7719,7721,7745] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [4898,4899,5150,5151,4884,6828,6831,6766,8194,6798,6800,8170,8172,1620,1621,5141,5142,6763,6789,6790,6791,6792,5173,6755,5174,2425,1614] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [7746,7747,7748,7749,7744,3706,3709,9639,9628,10560,10558,9599,9600,9567,7755,9640,3708,10537,3732,3735,10592,10593,3718,3707,3716] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [2312,2421,2462,2426,2427,2430,2432,6237,6238,6239,6251,1599,2313,6260,2296,6259,6261,6547,6557,6545,6546,2434] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [2421,2461,2462,2450,2481,2482,6781,6782,6783,6784,6883,6822,6874,6875,6876,6791,6792,6830,6754,2423,2425,1614,1615,2451,2452] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [7740,8410,8411,7739,8346,8798,8795,8796,8797,8760,8761,8770,7738,7773,7774,7772,7737,7735,7762] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [3709,3710,3711,3713,3714,9639,8297,7747,7748,7749,7720,7722,7745,7716,9599,9600,9637,9638,9640,7755,7756,3707,3708] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [1129,1141,1142,1147,1148,1151,829,818,1216,1219,849,850,851,852,846,1152,800,1143,1144,1146,1222,1229,1233,1234,1262] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [1292,1293,1294,1309,5284,5296,5298,3810,3802,3797,3537,5625,5627,5626,5309] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [892,914,5799,5796,5805,889,1154,1155,915,916,917,949,952,1188,5797,5833,5835,5834,1163,1164,1166] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [3363,5297,5299,3360,3362,5002,4998,4999,5001,3568,5294,5285,5277,5280,5313,5322,5332,5000,5011,3590] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [3810,3652,3802,3805,3530,3797,3537,3528,3639,3640] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [288,286,295,9781,291,10349,9784,9783,10307,10376,10343,10350,9840] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [4215,4760,4732,4152,4227,4757,4132,4213,4214,4528,4131,4133,4748,4751,4100,4122,4130,4781,4098] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [6646,6647,6648,7659,7660,6652,6691,7672,7675,7673,6393,6394,6692,6690,6628] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [6581,6583,6258,6260,6261,6555,6557,6558,6571,6577,6552,6553,6997,6998,6999,6599,7004,6582,6584,6587] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [7594,7049,7281,7048,7242,7111,7112,7113,7109,7240] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [5562,5581,6673,8284,5587,5588,5589,8281,8282] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [4806,4807,4079,4107,4777,4778,4569,4805,4815] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [3024,3750,8830,8838,8842,8843,8846,3465,3467,3469,3466,3468,3127] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [244,249,9773,9775,247,248,9769,9771,292,805,806,809,9801] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [3846,3858,2921,10478,2901,2903,9700,3688,3865,10440,10441,10438,9698] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        