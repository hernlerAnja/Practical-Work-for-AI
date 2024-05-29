
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
        
        load "data/4EON.pdb", protein
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
 
        load "data/4EON.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [151,111,112,149,150,99,100,104,105,96,726,268,269,644,654,671,252,673,674,681,682,685,645,646,648,649,650,666,97,668,92,93,98,1166,1167,1168,1171,1174,1095,1060,693,700,675,677,1094,686,687,513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5147,5149,5151,4651,4753,5167,5169,4598,4652,4650,4595,4597,4593,4594,4599,4600,4601,5145,5146,5150,5014,5155,5176,5188,5194,5596,5172,5174,5171,5175,5199,5201,5187,5190,5226,5595,5667,5579,5561,4769,4770,5668,5672,5673,4613,5675,4606] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [7546,7547,7988,7956,35,196,534,7537,232,233,537,538,1,2,45,46,535,543,546,638,7977] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3449,3450,3451,5047,4546,5062,4547,4509,4544,3412,3413,3414,3385,3420,3421,3424,3388,4536,4535,4533,3017,4697,4733,3016,5036,5039,5038,568,565,4503,4506,4510] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2417,2423,2459,2461,2460,2206,2196,2197,2201,2240,2432,2438,1233,1248,1253,1254,1447,1449,1474,1459,1473,1457,1458,2444,2447,2449,1228,1240,1480,1481,1235,1242,1245] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5729,5740,5741,6951,6955,6943,6947,6958,5981,5983,5987,6716,6717,5754,5755,5974,5975,5960,6963,6971,6975,6949,5734,5736,5743,5746,5749,6721,6726,6723,6940] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [8359,8345,8294,7497,8298,7462,7460,8304,7435,8343,8344,8356,8373,8395,8396,8390,7466,8044,8054,8049,8052,8055,8417,8061,7127,7463,7469,7128] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1260,3571,1244,1246,3574,1261,2868,3603,3605,3719,3720,4392,3699,2877,3538,4383,3693,3692] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2651,5654,2671,5177,5164,5173,5612,5624,5628,5021,5159,4989,4986,4988,5653,5637,6877] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2933,2936,2939,2597,2967,3829,2905,3866,3865,3887,3531,3519,3522,3774,3525,3813,3814,3824,3815,3764,3768,3514,3524] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [6711,6719,6726,6727,6355,6394,6395,6352,6361,6366,6367,6368,5936,6717,6718,5899,5949,5950,5959] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [376,1195,1196,1288,1310,1313,1189,1191,1193,1194,369,3215,3183,1289,1292,1293,3192,398,3154,1320,368] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5731,5732,5745,5761,5782,5718,8075,8076,5722,5723,5762,5764,8069,7412,7413,7414,7707,7708,7709] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [7951,7942,7944,7950,34,35,7954,2,5,9,5087,7979,7978,7980,5069,4502] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [8219,8222,8249,8217,8229,8224,5747,7407,7408,5762,7398,7400,7405,8068,8069,8250,5745,8104,5752,5761] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [2883,3545,3546,3547,3178,3179,2882,3539,1261,1263,1231,3573,1244,3574,1260,1216,1217,1222,1230,1281,1283] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4068,4069,4034,4072,3622,3623,3624,3611,3613,3610,2456,2421,2458] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [6688,6689,6691,6343,6499,6500,6700,6498,6290,6655,6684,6678,6693,6656] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2368,819,823,2362,2363,801,802,816,817,2386,2388] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        