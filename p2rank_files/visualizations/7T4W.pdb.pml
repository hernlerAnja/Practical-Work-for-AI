
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
        
        load "data/7T4W.pdb", protein
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
 
        load "data/7T4W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5260,5340,5199,5042,5043,5044,5678,5681,6016,5020,5026,5014,5015,5195,5197,5196,5046,5048,5070,5198,5069,5068,5690,7305,7307,7324,5215,5251,5253,5038,6158,6159,5304,5303,6157,5615,6122,6124,6131,6132,6133,5467,6125,5182,5620,6014,5660,6043,5658,5659,5661,5631,5017,7298,5616,6027,6026,6002,6003,6015,6146,5986] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1334,1335,1463,1464,1480,1880,1285,1286,1308,1310,1312,1311,1313,1447,1280,1282,2398,2395,2396,2397,2251,2279,2291,1309,2250,2268,2423,2424,2267,2551,1923,1926,1943,1944,1946,2280,1279,3561,3563,3589,1605,1630,2410,2411,1567,1568,1525,1569,2390,2308,1732,1733,1885,1896,1898,1899,1288,1291,1516,1307,1518] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4811,4812,3882,3883,4482,4184,4813,4448,4182,4802,4805,4806,4804,4423,4426,4803,4832,4668,4777,4779,4781,4667,4664,4666,4473,4624,3890,3892,3894,4183,3979,3981,3980,3916,3917,3949,3951,3952,3958] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [137,138,146,136,148,149,150,682,439,440,679,680,437,704,705,729,172,205,236,237,888,459,265,1039,1074,1069,1042,1044,1046,929,931,933,727,932,968,1097,1070,1071,1068,1067,703] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [6189,6194,6198,6207,6208,6213,6404,6406,6947,6403,6948,6196,6908,6226,5936,5937,5914,5915,6411,6412,6413,6414,6186,1212,1213,1216,1384,1385,6940,6203,6201,1229,1243,1242,1244] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4461,4523,4528,4530,4534,4258,4533,4450,4452,4418,4458,4460,4451,4441,4457,4430,4433,4440,4491,4520,4113,4114,4517,4549,4508,4388,4259,4372] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [626,628,515,644,514,793,795,798,778,788,814,799,715,794,773,696,698,370,697,784,699,783,706,708,686,707,674,689,709,713,756] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5889,5887,5890,6982,6984,6975,6978,6940,5925,1201,1217,5922,1215,1216,1383,1385,1225,1224,6985,6990,6969,1200,5917,6444,5913,5914,5915,5921,6413] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6218,6217,1252,6215,1834,1836,3613,6208,6209,1488,3604,3609,3610,1323,1324,1325,1343,3643,1472] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4943,4945,4946,5188,5190,4942,4964,4965,5207,5591,5590,5093,4985,4987] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [7175,7181,7176,7084,7086,7096,7091,7093,5803,5776,5777,5778,5779,5813,7196,7192,7198] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3463,2042,2043,2075,2078,3358,2044,3356,3442,2067,2068,3457,3458,3446,3440,3361,3349,3441] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2786,2826,2787,2814,2827,1938,1973,1972,2284,2283,2578,2579,2567,2565,2566,2552,1971] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [206,973,1015,1011,1012,1014,956,962,966,968,969,974,1020,967,1040,1041,1043,1010,204,205,200,960,227] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        