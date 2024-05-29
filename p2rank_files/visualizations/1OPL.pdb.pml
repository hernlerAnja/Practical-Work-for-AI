
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
        
        load "data/1OPL.pdb", protein
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
 
        load "data/1OPL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1491,1493,1522,1546,1656,1547,1654,1657,1659,1664,2009,1494,2046,2048,1495,1496,2087,2111,1524,2080,2077,2480,2481,1515,2052,2076,1523,2571,1668,1671,1672,1520,1521,2565,2568,2027,2049,2053,2054,1899,1897,1898,2032,1655,2028,2556,2564,2562,1824,1823,2012] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4548,4549,4575,4577,4573,4574,4544,4576,5533,5534,5626,5627,5608,5624,5099,5105,5102,4950,4951,4547,5101,4546,4572,4725,4600,5621,4721,4724,4852,4876,4877,5062,5065,5615,4599,4717,4712,4707,4708,4709,4710,5080,5081,5140,5164,5113,5119,5120,5129,5130] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3578,3579,2214,3550,3580,2210,2211,2213,2235,2233,2232,2238,2203,2206,2198,3221,3222,3223,3224,3235,3259,3260,2939,2969,2269,3475,2172,2990,2992,2993,2169,2170,3213,3220,2972,2974,2975,2971,3589,3614] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1314,1316,1318,1619,1616,112,98,106,110,111,1271,1273,1275,1290,1293,1312,1924,1294,1296,299,91,93,89,84,97,137,424,1279,423,78,1295,1637,1636,1615,2033,1923] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [570,594,565,554,559,564,627,543,2251,2282,2283,2284,2253,2255,1265,628,1884,1883,2527,1873,1874,1263,2304,2305,2274,2276,3486,3452,2277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1379,1381,1378,1354,1353,1856,1858,1828,1857,1859,274,264,266,1347,1349,1377,1841,1320,1323,265,1324,1336,1313,1380,1382,1361,1363,1364,1300,1310,1908] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [6287,6288,6313,5266,5267,6275,6312,6274,6276,6277,6025,6027,6028,5288,5285,5286,6022,5290,5291,5294,5296,6024,5992,5322] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2304,2305,1869,1876,2274,2276,3486,3451,3452,739,735,736,2277,2327,570,594,565,554,2251,2282,2253,1883,1875] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1270,2526,1284,1904,1289,1290,1293,1924,1288,2542,2543,2063,2038,2041,1637,1641,1636,2055,2030,2033,2037,1923,2056,2062,2490,2493,2497] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [576,577,579,3516,881,882,575,561,566,571,711,713,738,787,788,907,880,726,710,718,725,719,3518,3520,729,3481] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [687,689,1225,1091,1128,1100,1102,510,517,519,1193,1199,1127,1201] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4773,4812,4816,5629,4582,4572,4725,4851,4722,4723,4822,4817] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6083,6380,5947,6177,5944,6228,6223] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3165,3170,3175,3330,3327,3030,3332,3182,3329,3331] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        