
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
        
        load "data/2NRY.pdb", protein
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
 
        load "data/2NRY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [236,239,238,244,249,250,1197,1273,1272,1180,777,781,1196,240,241,242,753,754,755,756,1274,393,1275,1278,1279,1280,1281,259,291,292,378,761,751,260,257,258,394,794,880,800,801,832,872,804,809,808,1172,788,780,1173,842] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2500,2502,2503,3033,2552,2506,2508,2551,2553,2504,2505,3055,3061,3062,3103,3070,3093,3049,3041,2511,3456,3457,3065,3038,3022,3011,3014,3016,2639,3432,3440,3069,3433,2653,2518,2519,2520,2499,3133,3141,3532,2896,3533,3012,3013,3015,3017,3534,3535,3538,3539,3541] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [6983,6980,6981,6982,7506,7511,7534,7510,7900,7901,6986,6987,7034,7035,7135,7457,7137,7876,7884,6988,6990,6992,6993,6999,7000,7001,7002,6984,7474,7476,7479,7482,7490,7496,7502,7503,6985,7121,7452,7453,7455,7338,7454,7456,7458,7977,7976,7978,7979,7982,7983,7985,7477,7574,7582,6939,7544] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4758,4759,4764,4765,4768,5670,5745,5746,5645,5653,4757,4762,4763,4760,5243,5245,5246,5248,5106,5669,5105,5107,5224,5225,5226,5227,4913,5747,5748,5751,4779,5752,5753,4811,4770,4812,4813,4771,4777,4780,5232,4899,5221,5003,4915,5259,5251,5271,5272,5275,5279,5303] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1642,1656,1894,1936,1655,1657,1710,1709,1718,1897,1899,1779,6165,6166,1886,6181,6180,6183,6185,1925,1649,1664,1684] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1657,6418,6139,6124,6376,6138,6374,6191,1697,6381,6379,1710,1709,6179,6146,6166,6192,6187,6190,6131,1684,6368,1664,1698,1699,1701,1683] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3909,3917,3924,8407,3978,8404,3969,3970,4196,3902,4154,4146,3916,4157,4159,3990,4039,8389,8390,3944] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3117,4194,8640,8355,8641,8642,7558,7556,7559,8363,3909,3917,3115,3118,4195,4196] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1936,6418,6139,1934,1935,6415,6416,6417,5327,6131,1649,856] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [8390,8370,3944,8362,8363,8633,3958,3943,3961,8416,8415,8355,8348,8605] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4781,4782,4785,5753,5776,5775,5879,5754,4778,5635,5618,5888,5882,4795,4793,4794,4791] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1645,1895,1778,1869,1867,1814,1870,1613] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2521,2518,3421,3440,3422,2532,2534,3441,3541,3666,3405,3563,2533,2535,3660] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1303,1396,1304,260,261,257,264,1281,1397,1144,1400,1180,271,273,274] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5147,5146,4949,5158,5159,4976,5145,4983,4985,5011,5012] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1231,1240,1244,1245,621,1246,972,1001,973,975,971,1000] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3187,4216,4233,3189,4251,4252,3199,3202,3229,4509,4515,4517,4520] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        