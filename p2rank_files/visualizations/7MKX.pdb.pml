
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
        
        load "data/7MKX.pdb", protein
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
 
        load "data/7MKX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [92,95,146,699,701,694,1159,1163,1166,1086,1158,1058,1087,640,643,645,145,147,248,93,667,670,508,650,509,1070,107,108,101,98,265,264] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4598,4585,4586,4590,4591,4579,5653,5654,5656,4755,4637,4753,5132,4738,4635,4636,4582,4583,5134,5560,5649,5576,5648,5548,5577,5191,5176,5184,5135,4999,5131,5133,5140,5130,5152,5160,5177,5175] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1238,3562,1237,4381,1229,1236,1241,2857,3527,3528,2872,2873,2874,2875,3534,3535,3537,2859,2863,2866,2867,3558,3561,3563,1223,1225,3536,8109,8110,1247,1251,1252,1213,1222,1253,1254,1255,1275,3168,1209,1214,3167,3653,3681,3682,3592,3594,3688,4367,3655,3708,3709,4379,3656,4393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6626,6627,6628,2129,2156,2160,2163,2165,2162,2164,2127,2010,2128,1773,1774,2150,2135,2136,2137,2203,1823,6741,6759,6768,6776,6777,1813,1818,1820,1821,1822,1770,1980,1978,1979,2172,6760,6715,6717,6693,2206,2207,2208,6739,6742] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [4053,6295,6296,6297,6298,6299,6351,4061,4057,4058,3610,3612,3613,4054,6332,6335,6336,3598,3599,3600,4046,6357,6358,2446,2447,2448,2450,2449,2455,2456,2458,2457,3602,2418] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2190,2191,1832,1835,1390,2183,2184,1427,2189,1451,1461,1465,1392,1440,1441,1450,1848,1876,1865,1866,1867,1869,1870,1874,1883,1841,1846,2199,2398,2401] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [8082,8083,8084,8085,8086,6891,6890,1808,6918,6921,8534,8533,8530,8531,8527,6928,8072,1848,1867,1868,1845,1846,1807,1809,1861,6931,6923,8075,8073,8041,8040,8044] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5743,8181,8182,8000,8001,7332,7337,7339,7330,8065,8067,5728,5719,8034,8035,8036,8154,8155] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6689,6673,6679,6680,6681,6688,5880,6322,6366,6331,6337,6338,5927,5934,5913,5917,5918,5930,5879,6364,6355,6359,6356,6360] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [7401,7041,7042,7045,7046,7059,7060,8349,8286,8275,8276,7976,7993,8228,8230,7429,8291,8226,7367,7395,7398,8236,8328,8327,7050,8305,7017] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5702,5698,5699,5700,7964,7346,7348,8007,8008,8010,7971,7347,8001,7965,7966,7968,5742,5743,5763,5765,7344,7345,7380,7381,7640,7631,7641,5745,8009,5703,5704,5473,5474,8036,5712,5713] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3508,3514,3853,3854,3503,2894,2922,2925,2921,3763,2956,3817,3818,2586,2928,2587,2898,3876,3803,3832,3520,3755] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [7654,7677,4855,5770,5773,5775,5678,5683,4882,4884,4862,5671,5791] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6695,6621,6693,6652,6617,6619,6624,6625,6696,6697,6653,6654,2137,2203,6627,2252] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5325,6077,6550,6076,6540,6541,6788,5299,5300,5301] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8129,8130,8136,8137,8865,3650,3663,3664,4392,8123,8125,3656,3658] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [812,1556,834,1587,2060] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6326,6281,6282,5906,6238,6389,6236,6391] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        