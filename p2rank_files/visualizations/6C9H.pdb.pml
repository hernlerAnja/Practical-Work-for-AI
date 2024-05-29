
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
        
        load "data/6C9H.pdb", protein
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
 
        load "data/6C9H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5354,5222,5361,5362,5903,6640,5223,6630,6635,6639,6025,6026,6027,6042,7075,5888,6035,7079,7080,7081,7082,5889,5356,5900,5895,6606,6500,6624,6625,6652,6653,6626,7088,6905,7091,6607,7093,5370,6632,6633,6634,6487,6483,6484,6485,6486,5892,5893,6501,6498,5878,5881,5883,5871,5885,5890,5891,5355,5369,5371,5378,5713,6642,6644,2641,2643,2644,2671,2672,2673,2679,2620,7057,6045,7072,7073,6046,2645,6877,6879,6885,6840,6862,6872,6882,6836,6838,6907,6908,6894,6902,6906,2655,2652] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [105,156,154,98,99,1197,1196,1210,1211,124,133,135,268,269,270,674,254,102,155,100,103,429,395,398,399,285,431,436,658,659,389,1212,1191,1194,1195,1099,1190,1087,725,424,426,1198,1202,425,463,673,544,1186,1189,1115,722,1114,714,717,678,699,692,542,1204] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4547,2201,2203,2194,2198,2199,2204,1493,1976,1979,1977,1987,1978,2184,4563,4556,4383,4386,4389,4560,4561,4562,4559,4385,4412,4413,4414,1935,1959,1942,1945,1946,4551,1991,4546,4456,1015,4567,1250,1460,4569,1459,1461,981,984,1450,1468,1469,1466,4391] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6053,6043,6044,6048,4503,5209,4502,5207,2654,2655,5215,4515,5040,5213,4523,5999,6001,6003,6055,6045,6008,5226,5229,6009,6012,5901,6011,6026,6027,6042,5219,5221,5902,5903] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [15,16,73,278,650,651,3869,3590,17,3854,3855,3856,163,164,165,3812,3809,3835,72,3836,3838,145,147,275,277,631,3609,3610,3611,3591,630,632] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3399,3400,3402,5961,5964,5965,5977,3328,3331,3334,3335,3373,5943,5958,5953,5954,5955,5960,4743,3327,3326,4602,4737,3325,3324,4742,4751,4755,5992,4740,4757,4759,4734,5974,3410] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5894,7219,5893,6482,6501,6494,6497,6495,7218,7205,6297,7216,7217,7226,7227,7251,5871,5869,5872,7191,7189,7190,6506,6296,6298,6325,6332,7090,6502,6507] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4664,4665,4674,4677,4645,4846,4848,5170,5173,5195,5162,5194,4685,4686,4687,4650,4703,4688,5136,5137,5139,2701,2705] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2699,4463,4470,2663,2664,4469,4465,4468,4439,4436,4531,4435,4451,2723,2704,2685,2688,5192,5204,2661,4508,5205,5195,5203,4507,5045,5199,5198] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1082,1604,1602,1603,740,1362,769,768,774,742,744,778,1092,771,1563,1588,1589,1590,1591,772,1592,1597] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5331,5717,5334,5337,5338,5249,5632,5629,5670,5709,5711,5669,5355,5371,5379,5377,5378,5883,5713,5406,5660,5661,5356] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [7255,7256,7257,7285,7286,7287,6287,6266,6203,6270,6267,7265,6214,4895,4897,4881,6978,6201] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2550,4522,6082,4496,4500,4503,2639,2555,6080,6053,6043,6044,6048,2552,6055,7064,7067,2544,4491] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5307,5310,5311,5312,5315,5316,5728,5969,5319,5741,5934,5935,5724,5725,5967,3388,3385,3386,3387] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1305,1433,3020,4612,1285,1432,1276,1278,1281,3303,3198,3176,3018,3177,3178,3283] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4071,4072,4073,4080,614,619,620,623,3588,3952,3603,4163,4175,4172,4173,615,616] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5722,5729,5717,5334,5337,5338,5711,5733,5735,5355,5878,5881,5883,5871,5713,5863,5356,5339,5895,5898] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6110,7017,6150,6146,6148,6179,6108,6984,6096,6097,6102,6103,6134,6133,6136,6141,6072,6098,7009,4898,7010,4899,6215,6177] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        