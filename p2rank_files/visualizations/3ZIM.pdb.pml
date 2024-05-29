
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
        
        load "data/3ZIM.pdb", protein
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
 
        load "data/3ZIM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3927,3921,3924,3925,3928,5511,5510,3919,3922,3923,4242,4243,4985,4995,4996,4997,5004,4203,4205,523,4206,4207,522,1265,5685,3953,3957,3960,4237,4288,4289,4238,4239,4241,4240,4212,3959,5482,5483,5484,5660,5670,5673,5653,5472,5473,5474,5450,5452,5453,5676,5683,4989,5478,5479] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5743,5745,5665,5664,5666,5667,5744,5749,6405,5362,5380,5381,5382,5361,5756,5760,5762,5768,5793,5765,5445,6411,6401,6402,6403,6407,6408,5123,5108,5126,5189,5138,5169,5127,5810,6406,6323,6324,5834,5191,5791] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [7214,7213,7235,7238,6668,6709,7219,7224,6533,6534,6535,6536,6580,6579,6669,6503,6515,6524,6528,6530,6731,6732,6741,7182,6706,7183,7215,7216,7185] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4393,4394,218,233,232,234,217,2329,2331,4360,2550,2563,2566,2567,2286,2288,2292,2307,2558,2560,2319,2322,2556,4042,2295,4056,2555,2554,2559,2410,2291,4386,4390,4067,4381,4385,4065,216] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2536,2542,2549,2551,2548,2432,2434,2436,2265,4362,4363,2437,2438,6914,6922,4015,6920,2524,2525,2535,2541,2537,2539,6972,2460,2447,2448,2445,2461,6968] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [5545,5546,1265,538,1324,537,539,1292,1323,1263,1260,1298,1301,5508,5509,5544,5573,5574,5584,5536,5538,5628,5655,5656,5537,5637,1302,1332] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4511,4198,4199,4538,4539,4540,4541,1481,4499,1475,1478,454,1497,4961,4966,4967,4949,4951,500,1461,1464,1463,1466,1460,1468,1474,1469,1471,486,498,488,489,1144,4968,5001,1141,5025,5026,5027] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5696,5725,4640,5700,4639,4603,4614,4615,4581,4607,4608,4310,5702,5705,4305,122,128,4306,4583,4278,4301,4330,4326] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4974,4986,5016,5018,5019,4988,5751,5754,5335,5336,5311,5312,5753,5750,5752,5309,5299,5300,4994,5769,5325,5341,5758] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3490,3515,2854,2857,2858,2851,3506,3507,3509,3518,3286,3539,2891,2856,2878,2995,2910,2911,2980,2981,2888] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [4080,4037,4077,4084,3758,3759,4055,2145,2146,2348,4057,4046,4071,2326,3760] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [5252,5253,1385,1386,743,5260,5262,742,736,740,739,1111,1112,1113,1399,1400,1401,1402,1430,1431,1403,1407,734,1390,1396,1164,1465,5254,1143] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1151,1152,1153,1267,1270,1272,1136,4997,5299,5300,5301,5019] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5443,5444,5445,5446,6412,6413,6401,6402,6408,5399,5418,5743,5745,5665,5667,5744,5380,5382,6414] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2312,2314,2363,2364,2732,2744,2126,2737,2760,1589,1590,2103,2108,2109,2111,1596,1601,1603,2106] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3534,3564,3565,3566,3567,3532,2865,3535,2836,2837,2838,3573,3325,3327,2863,2864,3562,3563,3597] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        