
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
        
        load "data/2WHB.pdb", protein
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
 
        load "data/2WHB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [644,664,1080,1081,102,94,101,95,92,139,140,141,83,85,89,90,242,87,672,695,503,634,639,637,635,636,638,259,257,1064,1153,1157,1160,1052,1152,692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5118,5141,5135,5554,5555,5154,5155,5138,5133,4976,4977,5626,5627,5628,5111,4732,4873,5112,5108,5109,5110,4716,4569,4557,4563,5162,5166,5169,4558,4559,4561,5631,5538,5633,5533,5526,4613,4615,4614,4733,4576] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [186,7886,7887,7888,25,34,35,36,536,1,17,7453,7454,7849,7858,7863,24,7826,16,7822,7851,7825,524,525,533,527,628,528,7444,222,7884,7850,5033,7852,7853,7855,5030,5029] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3409,3410,3411,3412,3413,5010,4499,5023,5025,4475,4479,3378,3380,4490,4491,555,5007,5102,4508,4509,4510,4660,2978,2979,4998,5001,4999,5002,4696] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5688,6898,6886,6897,6887,6867,5936,5684,5682,5686,8019,5683,5931,5916,5926,5929,5701,5702,5705,5707,5708,5706,8050,8008,8011,8049,8051,5468,5937] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2391,2392,2393,2188,2183,2178,1468,1455,1212,1214,1208,1209,1232,1228,1231,1234,2408,2448,1452,1453,1457,1442,1462,1463,1464,3544,2420,3575,3536,1233] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [8266,7369,7367,7404,8261,8263,8251,8201,8203,8211,7342,7346,7968,7951,7956,7959,7961,8280,8302,8303,8324,7034,7035,7370,7025,7017,7373,7376,7021] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2613,2633,5123,5586,4949,4951,4952,5596,5613,2614,2618,2611,4984,2985,4697,5119,5140,5612,5124,5127,5571,6813] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [8010,8040,8042,8011,5699,5707,8126,8129,8155,8156,8157,8136,8815,7975,7976,7305,8827,8829,7307,7311] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1455,1456,2189,2179,2180,1380,1822,1417,1418,1864,1865,1866,1831,1836,1838,1430] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6305,6299,6296,6310,6311,6339,6340,6338,6662,6647,6663,5891,5904,5916,5929,5930,6653,6654,5854,6655] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2550,3788,3805,3791,3777,2892,3726,3730,3732,3849,2559,2929,2688,3736,2517,3822,3826,3827,3828,2542,2560,2895,2898,2901,2894,2867,2546,3476,3481,3484] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1233,3535,2830,1225,2840,2836,3500,3501,3680,3681,3682,2832,2837,2839,4366,3565,3567,3651,3653,3654] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [649,1139,1097,510,653,668,477,1122,1112] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3509,2848,3508,1216,3140,3131,3510,3471,1204,1203] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        