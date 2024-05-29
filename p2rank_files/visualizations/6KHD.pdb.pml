
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
        
        load "data/6KHD.pdb", protein
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
 
        load "data/6KHD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1108,1336,1150,313,1324,1325,1326,1328,1333,1335,1327,765,1138,1168,1169,752,761,793,723,717,718,580,581,721,727,741,747,743,744,1109,1448,1127,1351,1350,1349,1110,1357,1441,1442,1445,1446,178,428,198,311,312,328,720,722,142,144,196,197,297,141,145,172,173,174,373,375,167,168,176,148,147,153,398,400,403,364,366] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5768,5767,6384,5363,5477,6385,6386,6387,5362,6394,6195,6392,6393,6395,6416,6155,6515,6171,6172,6523,6516,5630,5792,5762,5765,5772,5791,5347,5378,5223,5224,5225,5226,5228,5419,5222,5422,5424,5248,5361,6183,6211,5806,5838,5201,5202,5203,5204,5207,5246,5195,5786,5790,5797,6212,5799,5198,5784,5247,5196,5810,6408,5448,5449,6410,5447,5452] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3641,3630,3629,3256,3284,2643,2644,2667,2689,2639,2641,2631,2632,2638,2804,3866,3858,3859,3860,2669,2803,3659,3856,3238,3857,2687,2688,2788,3658,3660,3252,3235,3243,3245,2633,2635,3209,3211,3213,3208,3232,3617] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2866,2864,2663,3887,3995,3599,3600,3601,3988,3617,3618,2651,3881,2804,2919,3879,3865,3866,2664,2665,2666,2669,2803,2819,2818,2889,2890,2891,2861,2894,3641,2667] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1100,1481,1508,1583,1099,1461,1470,1471,1101,1435,1437,1439,1443,1102,1478,1507,1477,1474,1438,1444,1445,1109,1448,1449,1452,1460,1462,1618,1114,1111,1581,1426,1429,1553,1434,1550,1551,1548,1505] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2809,2812,2516,3150,2537,2555,2540,3155,3148,2499,2509,2511,2517,2678,3172,2811] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [320,697,62,654,657,659,18,21,22,46,47,49,63,680,53,319,321,12,4] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5702,5698,5723,5724,5726,5725,5727,5728,5709,5711,5071,5118,5704,5368,5370,5371,5064,5067,5069,5073,5076,5100,5101,5103] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [392,5606,5604,6072,6065,6099,6100,446,444,445,409,410] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5606,5604,6065,446,444,445,7526,7524,6043,6011,6013,7552,7550,6044] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6549,6803,6547,6535,6537,6187,5825,5827,5829,6188,6522,6521] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1132,1668,1707,1705,811,850,852,780,782,1704] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [5554,5556,5549,344,345,673,5558,647,649,390,383,384,359,412,689,353,354,357] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5958,5921,6303,5925,5929,5930,5960,6312,6317,6318,5923,5915,5910,5902,5883] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [6012,6011,6013,6008,6010,7592,7593,6020,7611] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        