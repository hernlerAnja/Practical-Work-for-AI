
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
        
        load "data/7YQ3.pdb", protein
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
 
        load "data/7YQ3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8270,8271,8312,8311,8313,5428,5429,5430,5431,6032,6034,6030,6031,6227,6233,6236,6237,8295,5584,8310,8061,8079,8080,8319,8063,8064,8066,7885,7886,5433,6222,6223,6036,6037,8320,5454,5455,5456,5438,8089,8091,8323,5447,5448,5585,5569,8308,5568,7896,7887,7888,5479,5470,5467,5468,5469,5471,8337,8339,5478,8493,8495] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [4377,4894,9945,10196,10197,4903,4904,4905,4909,4890,4889,4064,9947,4026,4353,9925,9926,9927,4513,4041,4042,4044,4045,4050,4023,4025,4593,4608,4376,9943,9944,9946,9948,9949,9722,9723,9726,4530,4396,3811,4927,4928,4929,4930,3808,4986,4988,4989,3997,4013,4020,4022,4021,3804,4052,4053,4054,4055,3812,3816] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [8784,8785,8789,7489,7490,7491,7077,7256,9001,9003,7499,7263,7262,7261,8794,8798,8878,8838,8860,7078,8873,8835,8836,8839,8840,7082,8834,7098,8783,8779,8861,8756] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [11151,11163,11165,11166,11145,11152,11153,11154,11675,11676,11155,10239,10248,10249,10234,10246,10247,10490,10518,10449,10719,10720,10468,10491,10482,10718,10708,10709,10712,10716,11677] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [11223,11224,11057,11059,11060,11061,11553,11554,11555,11538,11539,11257,11042,11041,11187,11150,11162,11164,11166,11154,11569,10714,11237,11239] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [1285,1488,1866,1289,1871,1884,1888,1946,1910,1493,1916,1923,1286,2032,2033,1928,1941,1938,1939,1927,1284,1492,1879,1882,1893,1873,1877] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [3077,3078,1553,1543,1545,1546,3068,3070,3069,3072,3080,3079,1547,1549,12388,12390,12391,1569,1573,3082,3092,3094,3095,1131,1122,2890,3051,1112,1114,12389,1133,2900,3053,3056] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [3549,11592,3265,3531,3530,3532,3280,3282,3545,11585,11588,12346,3061,12359,12379,12380,3760,3263,3528,3260,11594,11595,12349,12323,10700] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [10671,10425,10429,10672,10673,10674,10427,3994,3997,3998,4000,10703,3764,4009,10694,4004,4006,3751,3752,3753,10666,10667,3963,3964,3960,3985,10212,10213,10440,10443,10439,10445,10214,4002,10421,10422,10702,4029] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5766,5805,5765,7763,5728,7765,7767,7534,7551,7310,7311,7326,5739,5737,5758,5759,5794] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [5410,6073,5864,5863,7379,6054,6072,6208,7593,7594,7869,7870,7871,5434,5411,7387,7388,7367,6070,6193,6209,6090,7596,7598,7347,7348] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [7952,7953,8700,8698,8603,8604,8581,8575,8531,8154,8548,8533,8536,8610,7961,8153,8152,8588,8589,8590,8165,7949,7950] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [5169,5223,6228,5224,6063,6064,6038,5971,5989,5968,5206,5397,5398,6246,5987,6039,6040,6042,5238,5241,6215,6217,6216] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [10973,12410,12411,12446,47,48,19,12418,11601,11607,11608,16,27,56,11002,11003,10970,10966,12380,11600,11657,11588,11597] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [11208,11214,11199,11207,11184,10222,10238,10239,11206,9970,9969,11210,10698,10454,10452] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [8096,8102,8104,8116,8135,8399,8398,8400,8220,8221,11826,11828,8193,8196] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [11594,11595,11593,12315,12350,11569,11574,11559,11564,11571,11555,12274,12314,12316,11042,11041,12273] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [11192,11194,11175,11168,11173,9764,9796,9765,9995,9989,9990,9762,9975,11159,9974,9997] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [494,488,321,489,490,299,303,312,320,684,687,271,691,697,269,695,680,673] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [13548,13728,13730,13531,13116,13103,13097,13535,13564,13566,13066,13067,13539,13749] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [12226,12241,12716,13636,12143,12710,12103,12106,12109,12110,12244,12932,12121,13634,13217,13219] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [7611,7200,7318,7319,7416,7414,7660] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [3076,3077,1553,1536,3068,3070,3071,3069,3072,3073,12388,12390,12391,1569,1573,12361,3065,12385,1133,12364,12332,12365] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [10,12,262,42,43,116,197,198,230] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [11320,165,169,172,11319,221,222,224,225,10978,10980,10962,185,173,193,200] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [12210,12200,12202,12208,12211,12196,6681,12206,5529,6573,6574,6575,5532,6697,6554,6687,5562] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [4559,4572,4417,4473,4478,4574,4535,4555,4480,4497,4509,4485,4492] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [10000,10001,9701,9550,9786,9787,9817] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [8057,6052,6054,6206,7860,7859,7862,7867,7868,7869,7870,7871,8065] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [3493,3861,3487,3684,3683,3903,3704,3714,3718] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        