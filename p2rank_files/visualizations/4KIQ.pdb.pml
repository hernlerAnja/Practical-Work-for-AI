
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
        
        load "data/4KIQ.pdb", protein
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
 
        load "data/4KIQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4050,3973,4052,4053,4054,4055,4060,4061,3950,3600,3383,3305,3306,3271,3560,4070,4065,2957,3003,3004,3005,2960,2953,2954,2969,3112,2968,3114,2964,2965,3098,3564,3574,3577,2955,3603,3592,3559,3541,3542,3543,3545,3110,3113] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [1332,856,283,377,838,853,380,375,376,839,821,547,1362,392,393,550,1339,250,282,284,385,389,1333,1349,1350,1351,585,662,583,1334,574,576,1344,1361,248,1340,244,1331,1229,239,243,233,236,240,232,872,871,1252,879,882,875] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5690,5691,6776,6782,6771,6775,6671,6295,6694,6773,6774,6281,6285,6103,6104,6280,5833,5834,5835,5992,6804,5692,6781,6803,6672,6324,5676,5678,6298,5685,5686,5689,5675,5726,5831,5827,5725,5724,5818,5817,5819,6025,6027,5989,6263,6018,6786,6792,6793,6805] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [8539,8540,9001,9002,9006,8984,8985,8413,8447,8552,8554,8555,8556,8713,9495,8825,9512,9514,8748,9502,9496,9497,9504,9507,9524,9513,8746,8747,8708,8710,8737,9526,8739,8446,8538,8445,9042,9392,9494,9036,9415,9492,9503,9045,9038,8406,8407,8410,8411,9016,9019,9031,9032,9034,9035,8397,8399,8396] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1821,1660,2085,2087,1669,1672,1673,1658,1819,1783,1689,1679,1659,1686,1708,1822,2097,1699,5182,5185,5188,5191,5171,5187,1809,3866,3867,3862,5186] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1719,3827,5012,4997,5000,5001,5003,5002,4260,4268,1401,1707,1705,1706,1679,3825,5007,3853,3855,3863,5166,3823,3859,3860,3851] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5453,5464,5465,5483,6152,6155,6158,8111,8106,8131,8147,8108,5600,6137,6142,6145,6132,6133,5617,5619] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1511,2238,1509,1894,1908,1483,1484,1485,1872,1487,1490,1492,1905,1906,1486,1895,1893] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [664,665,667,625,1316,666,671,621,2711,2712,608,668,849,847,848,683,624,632,633,614,618] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3769,3770,5095,3767,5096,5098,5140,5144,3368,3803,3804,3805,3360,3369,3741,3743,3777,3779] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [8810,10528,10540,10542,9209,9211,10537,9245,9221,9219,8811,9183,9185,8802,10586,9246,9247] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2705,689,690,691,695,41,703,175,39,22,23,700,710,2664,2666] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6912,6933,7665,7245,7666,7288] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [9947,9946,9982,9944,9842,9847,9849,9950,9852,10250,9822,9823,9833,9831,2465,2466,9836,10248,9973,10211,10212] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1134,2287,2291,1104,1132,1536,1539,1130,1102,1138,1139,1142,2281,2279,2280,2282] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8153,8154,8159,6125,6290,6291,6107,6108,6110,6113,5795,5796,6106,6289,6757,6758,6094,6064,6067,6074,6075,6079,6050,6056,6060,6063] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2397,1048,1083,2374,647,1056,648,1058,1022,1296,1299,1084,2423,636,640,2379,1020,2377] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6701,6713,6356,6436,6437,6732,6700,6355,6362,6403,6705] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        