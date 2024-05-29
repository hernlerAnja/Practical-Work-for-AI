
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
        
        load "data/7T4T.pdb", protein
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
 
        load "data/7T4T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1609,1484,1303,1313,1315,1572,1467,1468,1299,1300,1307,1301,1294,2411,2412,2413,2402,2407,2404,2294,2295,2306,2410,1634,2426,2427,2266,2283,2566,1596,2428,1321,1339,1337,1338,1290,1286,1939,1940,1941,3578,1283,1289,1284,1282,1895,1896,2405,2323,1938,1451,1900,1911,1914,2437,2438,2439] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4933,4934,4935,4936,4939,4943,4965,5111,5112,4983,4928,4930,4932,4981,4982,6037,6038,6035,5380,5533,5544,5095,5529,5572,5574,7208,7210,4926,4927,5956,4944,5279,6040,6043,6044,6046,5927,5939] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [528,657,687,702,818,720,721,383,699,709,728,722,726,727,731,787,785,782,802,527,631,639,1073,729,730,1082,797,803,792,799,1044,1045,1046,1048,1049,1050,1047,1014,1015,1016,1017,1069,641,1055,710,711,712,1079] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4374,4366,4370,4371,4372,4373,4441,4364,4331,4354,4355,4356,4346,4353,4447,4436,4443,4426,4431,4026,4446,4027,4724,4726,4661,4658,4659,4660,4688,4689,4691,4365,4340,4693,4699,4275,4713,4717,4283,4285,4301,4692,4694,4690,4171,4172,4462,4375] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4944,4947,4951,4955,4956,4958,4960,4961,5216,5899,6044,6046,5278,6045,6059,6071,6072,6068,6070,5253,5213,5214,5240,5916,4965,5111,5112,4962] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2460,2461,5687,5715,5716,6963,2227,2462,2458,6698,6699,2214,1681,1682,2215,1657,1680,6966,6715,6708,6712,6713,1649,1653,1659,1647,1648,1655,6954,6988,5685,5684,6680,6694,6695,6671,6689,5689] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1675,1676,1678,1791,6959,1794,1771,1784,1149,1171,1179,1787,1788,6767,6956,6957,6958,1182,1181,1117,1119,1121,1754,1150,1147,6730,6731,6732,6733,6702,6714,6948,6950,6703,1673,1131] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1214,1215,1871,1870,1457,1459,1211,1233,1234,1362,1212,1825,1330,1254,1256] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [5006,4898,4900,4893,4877,4878,5119,5503,5103,4974,5504,5458,4856,4858,4859,4855] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1960,1962,2298,1988,1991,2592,2289,2800,2801,2299,2802,2829,1986,2288,1954,1953,1987,2579,2841,2567,2580,2581,2582,2583,2842,2590] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6639,6641,6644,647,648,649,650,505,506,6628,6602,6629,660,6640,6576,6600,6575,6479,6494,845,6577,6497] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6434,5591,6462,6435,6225,5930,5931,5932,6474,6475,6213,6216,6200,6214,6215,6223,6212] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1163,1177,1428,1425,1176,1778,1777,1898,1901,1902,1442,1444,1906,1432,1446,1142,1145] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6997,5725,7089,7009,7094,5715,5716,5692,6999,7004,7006,5691,5723,7105,7106,7109,7111] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1131,6757,6758,6656,1128,1092,1093,1094,6689,6725,6664,6654,6707,6669,6650,6653,6705] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        