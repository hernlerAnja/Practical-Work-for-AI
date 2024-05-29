
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
        
        load "data/3NJP.pdb", protein
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
 
        load "data/3NJP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9765,78,81,90,9727,9728,88,95,334,112,2462,2686,2524,9776,9772,9774,2464,82,83,3192,3185,3189,3193,3194,3197,3199,3201,9726,9811,9812,9796,9795,91,180,349,204,203,207,208,131,181,9725,175,202,205,206,3178,62,63,3196,72,75,76,330,331,70,77,239,242,236,226,235,9822,231,2456,2954,2955,2687,3172,3174,2669,2503,2504,2509,2500,2517,2521,2469,2463] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [7931,7400,7685,7686,7921,7922,7923,10159,10112,10113,7903,10161,10115,10152,7231,7195,7234,7235,7909,7924,7925,4817,4812,4816,4824,4825,4815,4940,4865,4939,7905,10197,10198,10182,10209,4804,4806,4809,4811,4796,4797,4976,4970,4938,10212,4937,4942,4941,7417,7418,10163,7252,7255,7193,7248] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [6618,6922,6603,6607,1890,1891,1904,6635,2191,6621,6622,1872,2193,2195,2192,6641,2056,1887,1876,2201,6716,2206,2207,6648,6652,6647,1871,6533,6787,6624,6932,1917,6923,6926,1921] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [6698,6699,50,306,302,491,504,290,291,1764,1766,1769,1770,686,687,688,492,2072,2075,2083,1786,1807,2076,1809,31,32,33,1811,34,35,702,701,6671,6676,6680,6672,6673,1775,1771] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1941,6803,6806,6807,1942,6517,5238,5411,5412,5428,5225,5414,5427,5226,4784,5024,5040,5025,6814,6540,6538,1949,1940,1968,6800] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6910,7086,7087,6951,1978,6966,1982,6996,6974,6975,6989,7104,6969,6927,6925,6950,1907,1908,1983,1979,2184,6911,6915,6917] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [6381,6286,6269,6285,1610,1628,1632,1633,1708,1616,1617,6274,1538,1539,6438,6439,6362,6368,6363,6281,6359,6341,6346,1641,1637,1631,1707,1555,1550] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2256,2258,2243,2244,6916,6917,2194,2196,2356,2235,2238,2177,2179,2180,6638,6639,6713,6710,6714,6717,2220,6706,6708,2185,2186,2375,2361,2373,2355,2265] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [9610,9592,556,555,9611,9626,825,550,551,553,820,358,360,154,377,552,571,378,9606,9596] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4966,10207,10088,10091,10205,10179,10180,10182,10090,10112,10097,4940,4863,4865,4901,4899,4902,10086,10172,10215,10218,10225,10226,10227] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [9993,9998,4857,4888,5092,5094,5289,9979,9983,5305,5546,5549,5551,5284,5286,5287,5290,5285,10013,5112] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7373,7374,7654,7655,7656,7671,7367,7012,6998,7001,7009,7145,6994,7388,7387,7163,7165,7153,7143,6999,7017,6968,6967,6971,7013,7014,7015] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2263,2267,2270,2278,2282,2422,2642,2412,2636,2924,2922,2634,2281,2923,2925,2411,2237,2656,2657,2643,2283,2286,2429,2432,2641,2434,2240,2236] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [3882,3887,3892,3965,3942,3943,3924,3939,3951,3923,4116,4119,3355,3356,3326,3852,3871,3877] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [7788,8032,8033,7801,8572,7780,7785,7786,7787,8571,8026,7827,7829,7830,7831,8062,8588,8562,8563,8597] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [4947,5064,4909,4915,4945,5083,4809,4810,4811,5065,4937,4942,4941,4865,4914,4825] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [7257,7259,7262,7263,7246,7280,7509,7510,7511,7447,7448,7484,7487,7527,7277,7240,7251,7256] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [1811,4,34,35,1764,1766,492,1754,1760,1809,1771,1834,1748,1848,1734] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1950,5425,5434,5036,5042,5043,5045,5050,5051,5052,5240,5428,4817,5435] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3623,3214,3215,9809,3226,9806,9808,3625,3608,3609,3613,3621,3618,3622] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [9520,9505,9583,9521,9518,9539,9561,9571,9577,9579,9540] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        