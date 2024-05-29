
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
        
        load "data/7U23.pdb", protein
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
 
        load "data/7U23.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [392,394,11024,221,223,224,393,404,405,10952,10953,51,54,240,242,603,609,610,613,11049,11050,10281,10267,10273,10237,10269,628,633,617,32,31,38,10973,10979,1796,1797,11016,11025,11019,11020,11023,10955,11030,11031,11035,2004,1936,10989,11000,11003,11001,10968,10990,10986,1935] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [11457,11459,11465,11495,11484,11464,11473,11474,11477,11478,5432,11403,11429,5419,11442,11455,11454,7178,11426,11443,5602,5604,5774,5775,5990,5991,5992,5994,5984,7177,5435,5605,11493,11498,11500,11501,4892,4900,4912,4913,5621,5623,4886,6009,5785,5786,5998,11502,11503,4856,4855,4888,11504] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [5572,5573,5382,5396,5398,5566,5751,5750,6988,7041,5963,6993,7002,7000,6997,7193,7043,7195,7045,7046,7042,7044,7066,7068,6982,6962] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1806,1812,1814,192,17,15,1662,1663,1664,1665,1,369,368,1612,362,370,1607,1615,1601,184,185,1660,1661,1685,1686,1687,1581,1621,1616,1619] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [8530,8532,8525,8524,8527,8774,8771,8773,3175,2948,3184,2944,8303,8318,8319,8321,8547,8526,2955,2956,2957,8797] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6022,6024,4823,6260,4786,4788,4789,6465,6467,4791,4792,4759,4761,6445,6446,6448,6259,6044,6453,4824,6043,6017,6030,6033] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [8296,4237,8727,8501,8503,8504,8505,8726,8734,4252,8295,8279,8280,8223,8250,8251,4234] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [6909,6910,6912,6907,7011,6809,6780,6781,6805,6806,6802,6196,6194,6776,6205,6395,6208,6192,6193] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [1014,1017,817,1399,1400,1424,1425,1395,1531,1428,1392,1388,824,1526,1528,1630,827,813,812] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [10169,10170,641,643,10168,10197,10198,662,663,649,652,636] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [9569,9642,9567,9585,2283,2440,2286,8813,9640,9656,2454,2456,9584,9641,9643,9608,9609] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [9247,9257,9258,9672,8342,8346,8341,8822,8825,8815,8821,8552,8571] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2689,2670,2671,2673,9641,9621,2932,2672,8813,9640,2456,2457,8755,8757,8793,8814,8789] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [9150,9152,9153,9302,9303,9551,9549,9135,9242,9280] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [3131,3132,3133,2879,2907,2908,3362,2851,2878,2924] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [10771,11136,10763,10764,10765,10766,9325,11131,11151,9404,9405,9406,9407,9391,9416,9420,10777,9398,9329,9346] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [99,100,518,519,127,274,458,475] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [6477,6454,6432,6473,6474,6475,6476,6340,6378,6457,6338,6339,6344,6345,6349,6434,6372,6360] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3931,3930,7829,3780,3781,3763,4179,3870] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [5655,5508,5839,5854,5856,5899,5900,5481,5666,5631] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [957,958,999,1094,1096,959,956,889,960,962,768,1002] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        