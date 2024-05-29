
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
        
        load "data/6O9D.pdb", protein
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
 
        load "data/6O9D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3494,2543,2641,2642,2643,3501,3417,3418,2542,2974,2975,2976,2977,2978,2488,2489,2494,2495,2496,2490,2541,3493,2877,2983,2999,3002,3004,2629,2973,2972,2492,2493,2995,2997,2510,3502,2644,3500,2498,2500,2501,3031,3055,3022,3023,3010,3030,3026,3393] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [780,781,782,257,387,760,762,1180,741,730,731,732,733,753,755,757,788,813,261,265,272,1156,1256,1257,1181,1265,305,307,306,402,274,1264,735,736,208,209,210,244,251,327,328,254,255,256,252,253,258,259,849,852,789,810,811,860,784,822,768] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [6971,6973,6974,6981,6982,6983,6967,7015,7016,6961,6968,6962,7523,7562,6960,7570,7117,7861,7886,7494,7498,7499,7862,7969,7970,7962,7885,7961,7444,7337,7338,7472,7451,6966,7102,6963,6965,7470,7490,7491,7478,6918,7532,7440,7441,7442,7850] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4878,4736,4744,4745,4747,4790,4791,4792,4739,4741,4742,5304,4738,5295,5334,5342,4694,5235,5237,5250,4757,4749,4750,4758,4759,5263,5264,5266,5270,5633,5658,5271,5109,5110,5657,5733,5734,5742,4893,5216,5217,5218,5215,5735,5741,5244,5239,5242,5243,5213,5212,5223] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [8796,8799,8155,8495,8496,8497,8523,2085,2091,2092,2095,2096,1440,1443,1451,1473,8463,1447,8471,2101,8498,2103,1469,1471,8447,1488,1444,1487,8265,8777,8778,8266,8487,8460,8488,8489] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4028,4029,5925,6563,4330,4327,4002,5965,4018,4312,4308,4309,3991,3994,4026,5918,5921,5951,3682,5922,3793,5929] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5966,6585,3957,3960,3963,4000,4001,4002,4003,5816,3967,5964,5965,4028,3968,3954,5801,6594,4025,3999,4035,4038,5817,5803,5800,6586] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5763,5764,4770,4772,5754,5738,4760,4761,5606,5622,5623,5758,4973,5639,5739,5742,5633,4764,4757] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4340,4365,4366,6290,6556,6560,4321,4331,4328,6564,6565,4339,4322,4364,6576,6577,6558,6559,6557,6292,6257] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3889,3896,3881,4168,3076,3078,1926,1927,1640,1655,836,837,834,838] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2508,2511,2512,3382,3383,2523,2514,2645,3366,3498,3499,2737,3514,3515,3524,2525] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1126,1129,1146,1261,1262,1260,272,1286,1287,285,287,1277,1278,1281,275,276,279,288,289] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1488,8426,8429,8470,8472,8507,1486,8432,8436,1345,8437,1323,1324,1329,1485,1487,2104,1331,8498,8468,8469,8504,2103,2112,8471,8494,8495] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [8815,8161,8165,1762,8157,8158,2089,8795,8154,1753,8185,1761,1788] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4326,6266,4333,3692,3688,6239,4346,4341,3714,3679,3681,3684,3712,3685,6566,6567,6568,4337,6231] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2787,2791,2792,3546,3328,3329,2819,2821,2817] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        