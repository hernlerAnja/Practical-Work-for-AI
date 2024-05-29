
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
        
        load "data/7C2V.pdb", protein
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
 
        load "data/7C2V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2527,2530,2531,2532,2533,2582,2528,2529,2581,3009,2669,3438,3439,2863,2864,2865,2979,3514,2541,2583,3414,2548,2551,3422,3515,3516,3517,3520,3521,2534,2535,3002,3006,2604,3004,2486,2484,2485,2520,2982,2684,2980,2981,2984,2985,2685,3059,3033,3037,3109,3062,3071,3029,3030,3031,3017] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5387,7674,7960,5370,5382,7673,7961,5381,5702,5704,5684,5688,5689,5705,5266,7637,7638,7643,7621,7619,7622,5417,5418,5408,5410,5419,5445,7620,5691,5694,5693,7639,7642,7626,878,880,8678,8684,8685,5366,7940,7945,7944,7959,7522,7512,7958,5364,5365,7947,7949,7950,5363,5359,7664,7666,5406,8691,8690,5386,6434,6433,6425,6426,7699,7701] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [257,1196,1197,1172,631,1272,1180,1273,243,244,245,246,250,251,298,299,749,400,401,751,752,630,750,529,1274,264,267,1278,248,769,771,249,757,773,777,778,318,320,247,385,746,747,876,829,868,800,804,805,826,784,776,796,797,798,201,202,208,873,838] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5663,5647,5219,5220,4877,4878,5222,4775,4774,4776,4734,4741,5739,5740,5104,5221,5001,5223,5224,5741,5742,5745,5269,5272,5276,5664,5639,4744,4742,5245,5248,4862,5102,5218,4721,4722,4723,4725,4726,4727,4728,5301] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3147,3167,3170,3183,3187,7368,3148,4206,4198,4197,7105,7106,7107,7101,7508,7981,7982,7492,7487,7496,7488,3125,3126,7933,7936,7937,7513,7514,7941,7942,7944,7515,3131,4196,5350,4177,4184,4191,3143,3144,4203,4204,4205,5352,3027,7336,3477,3479,3480,7329,7330,7321,7322,7349,3185,3468,7967,7968,3142,3127,3069,3124] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [7528,7920,7532,7533,7895,7554,7557,6980,7596,7604,7504,7518,7524,7525,7526,7566,6979,6981,6984,7032,7033,6985,7034,6999,6986,6992,7358,7359,7995,7996,7997,8001,7903,7919,7476,7478,7135,7256,7998,7475,6983,7120,7495,7497,7501,7485,7505,7506,7474,7592] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [892,893,894,951,949,915,934,935,937,5677,5678,5680,5711,5712,5726,5725,5231,5232,5112,5109,5111,891,898,911,914,1970,885,794,836,1235,1237,1238,947,976,941,887,5081,5074,5073,5065,5066,1226,5113,5058,5061,1224,1227,5236,5240,4843,4847,5685,5686,5681,5259,5258,7606,7608,1955,1962,1961,1967,1968,1948] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3167,3148,3164,3169,3171,7385,4206,7101,7099,7100,7382,7384,7114,7487,6770,6772,6774,6773,7077,7086,7381,6765,6769,6791,6746,4503,6755,3204,3205,4506,3155,3157,4237,4238,4218,7083,4219,4501,4504,4505,4502,4507,4495,4202,3211,3241] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [785,787,786,5071,5486,5487,1218,5072,1220,1221,1222,5489,6709,6710,5080,367,371,372,770,764,765,768,759,361,366,5509,5547,6651,5545,5546,6674,6675,6650,6676] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [934,936,938,4539,4541,5128,5129,5126,4536,5125,2265,2267,2268,2270,922,969,2259,2002,924,2001,974,968,2269,999,4842,1966,4825,4827,1982,1983,4841,4843,4856,4558,4818,4819] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2639,8933,8935,7765,8909,8910,8934,3001,3018,3019,3020,2997,3464,7801,7802,7803,2656,8968,8969,3460,7327,7328,3462,7337,3463,7743,7744,7745,7742] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6360,6371,6373,6401,6192,3949,3930,3944,3947,3929,6158,6116,6123,6130,6131,6138,6184,6183] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [8375,8389,8627,8630,8632,8390,1694,8451,8443,8442,1708,8669,8619,1711,1709,1693,8382,8397,8417] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3017,7743,7745,7344,7345,3460,7335,7327,7328,3027,7336,7337,3018,3019] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1694,1659,1667,1652,1666,1904,1907,8430,1720,1909,1946,1674,1896,1916,1902,8417,8431,8434,8416,1929,1934] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2887,2889,2890,2635,2648,2649,2283,2276,2278,2663,2624,2626,2320,2321,2322,2323,2340,2338,2650] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1659,1667,8668,8669,852,1944,1945,1946,1927,8382,7581,1943,7580] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5612,5628,5629,5880,4744,4745,4756,4742,4743,5748,4757,4758,5770,5874,5871,5873,5647,4738] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        