
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
        
        load "data/2C5X.pdb", protein
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
 
        load "data/2C5X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4488,4498,4499,4649,5014,4999,4987,4988,4996,4997,2969,2978,3388,2979,4990,4685,3413,4464,4480,3411,3412,3381,5013,555] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5515,5543,5544,5151,5155,5158,5127,5135,5143,4549,5124,5128,5615,5527,4721,4722,4567,4604,5099,5101,5103,4558,4965,5098,5100,5102,4603,4550,4546,4547,4548,4552,4705,5107,5620,5621,5622] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [1080,259,1081,1152,1153,1157,1158,1052,681,682,692,502,637,639,399,635,638,94,95,101,102,1160,661,139,140,141,85,83,89,242,87,664,634,636,1064] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1,549,550,7892,7893,7894,7859,25,15,16,17,524,533,534,536,7450,7454,7459,7460,7869,7901,7864,34,35,36,22,183,186,525,628,528,222,527,5022,5018,7861] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2406,2415,2420,1231,1232,2380,2422,2423,1208,1209,1210,1212,1214,1228,1238,2448,1452,1455,1462,2386,2408,1457,1463,993,1442,3575,3576,2447,3544,3545,3536] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6893,6853,6895,6896,6865,6866,5905,5918,6651,8025,8023,5682,8017,5690,5691,5694,5677,5925,6885,5915,5919,5920,5927,6929,5931,5671,5672,5673,5675,8056,8057,6661,8019,8013,8014,8018] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [7974,7375,8217,8286,8296,8302,8257,8330,8267,7169,7410,8272,7373,8266,8207,8213,8211,8209,7382,7040,7041,7379,7376,7027,7031,7957,7967,7965,6998,8309,8308] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3565,3562,3654,3655,4340,1226,3535,1225,1233,3501,2827,2832,2830,2838,1249,3680,3681,3682,4352,4354,4356,3567,3651,3661,2836,2837] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2546,2550,2553,2559,2560,2892,2929,3791,3732,2901,2867,2894,2895,2898,2517,2542,3476,3481,3826,3827,3828,3805,3487,3849,3484,3486,3493,2871,3728,3730,3736,3726] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [8016,8043,8048,8132,8046,8135,7317,7318,7320,8835,8837,8142,8137,8138,8161,8162,8163,5688,5695,5696,5689,8017,7313,7311,7312,7982] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [511,645,647,648,649,1138,1139,1097,512,223,653,678,650,1111,1112,1113,7099,7094,7466,7114,1122,477,2339,475,478] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [1416,1417,1430,2180,1865,1866,1831,1836,1822,1837,1838,1864,2173,2189,1455,1456,2179] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4940,5112,5116,5130,5601,5602,5557,5560,5575,2617,2618,2613,2614,2634,2632,2633,4938,4941,6812,5585,5572,5573,4686,5108,5113,2985,4973,4975,4971,2984] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [5635,5636,5639,5622,5623,4573,4574,4565,4566,4567,4558,5527,5487,5528,5503,5504,5646,5644,5645,4583,4827,4829] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [6660,6661,6662,6285,6329,6299,6301,5918,6652,5893,5880,6653,5879,6654,6288,5919] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [1268,1269,1302,1183,388,3154,3163,121,366,359] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [462,463,509,510,512,511,528,7461,7448,7449,7450,7453,7099,7094,7095,7098,7466,7108,7444] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5911,5912,5852,5853,5747,5936,5726,5741,5742,5725,5472,5938,5773,5822,5823,5820,5806,5816,5477,5758,5772,5756] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4204,4235,3751,4234,4232,3772,4174,3749,3750,3752,4175,3765,2695,4248,4170,4200] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [2152,2154,2150,2151,2153,2155,2117,1812,1969,1970,1760,1968,2146,2140,2162,2119] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4469,4731,5076,4470,4710,4712,5073,5075,4611,4513,4516,4517,4492,4727] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        