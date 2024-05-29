
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
        
        load "data/7LFR.pdb", protein
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
 
        load "data/7LFR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3075,3077,7846,7881,57,62,49,60,61,59,69,42,56,3079,3080,3082,7844,7905,7907,70,7843,110,220,221,3078,184,185,55,310,313,218,187,191,309,159,192,2566,2567,2568,7888,7890,2410,7880,7891,2415,2835,2836,3072,2348,2349,2354,2355,2406,2356,2357,2550] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3829,3835,3837,3838,3839,3848,6887,8253,8255,8256,6364,6650,6381,6382,8214,8245,8220,6212,6216,6222,6218,6165,6166,6167,6173,6159,6199,6202,8209,8272,8273,6894,6895,8208,3834,3962,3847,8275,8279,3963,3822,3823,6889,3827,6873,6648,3988,3989,6892,6893,3999,3960,3961,3964,3965,3987,3959] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [5599,5600,5605,5606,5616,5619,5620,1829,1835,1836,1840,5531,5785,1823,5530,5601,5910,1905,5904,5905,5907,5921,5906,5916,5630,5898,1809,1810,1795,1801,1806,1789,1791,5646,5633,1790,2099,2097,2103,2100,5714,5715,1948,2107,2109,1971,5650,2114,1719,1721,5784,1839] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1886,5793,5811,5795,4047,5812,3788,4048,4248,3789,5538,5540,3783,3790,4249,5494,3791,3792,5483,5515,4437,5499,5504,5513,5532,5536,5495,5498,5489,5493,5789,5798,1861,5801,5804,5805,5796,3807,4449,4435,4436,1859,1887,1860,4721,4062,4059,4063,4261] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1705,1729,1987,1990,1991,1998,1727,1728,653,651,652,665,1689,1685,1688,30,268,269,270,464,465,274,473,477,461,468,466,1730,5671,5697,5668,5669,5670,5673,5674,5679,284,1997,1979,1981,1984,283] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1564,1566,1481,1576,1471,1476,1569,1556,1532,1537,1475,1533,1551,1552,1531,5272,5277,1539,1550,1627,1626,1555,1559,1560,1469,1464,1466,1467,1468,5294,5376,5371,5372,5349,5380,5446] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [7825,7895,7896,3309,7835,7836,3104,3106,3294,3295,3101,2851,3070,3138,3139,3126,3308,3146,3311,7900,7909,7911,3081] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5972,5974,5973,5980,1826,1827,1903,1898,1901,1902,1897,5953,5958,5959,5899,5900,5902,6067,6065,6066,6074,5911,5892,5894,5895,6068,5935] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [2170,2260,2263,2264,2265,2268,5636,5712,5711,2091,2089,2104,2146,2261,2262,2143,2151,2152,5707,2259,5713,5708] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [7577,7579,130,132,133,7571,544,543,332,333,349,350,353,528,7578,529,783,331,337,339,523,526,524,525,7702] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [6210,6214,6204,6215,6219,6220,6221,6475,6223,6411,6226,6241,6264,6472,6473,6474,6491,6256,6244,6254,6451,6412] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2408,2417,2420,2458,2438,2658,2677,2660,2597,2450,2404,2407,2659,2413,2415,2635,2636,2409] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4919,4920,5241,4705,4710,4716,4718,4722,4918,4704,4706,4915,5240,5509,5296,5298,5304] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5955,5978,5982,6000,6635,6618,6620,6137,6337,6118,6619,6338,5993,5998] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [6960,8183,8200,8201,8266,7123,7125,7325,7326,8267,8188,6953] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [8260,6940,6884,6918,6920,7108] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        