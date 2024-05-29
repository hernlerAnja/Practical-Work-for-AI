
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
        
        load "data/1II4.pdb", protein
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
 
        load "data/1II4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3122,9550,9539,9542,9543,9547,3123,3111,3112,3114,3115,3116,9569,9614,3106,3107,9564,9566,702,9583,701,9586,9587,9588,3807,8910,3789,4939,17,4931,4936,4932,4935,4953,4955,4975,4976,4977,8916,8917,9546,4958,8922,5000,7,9,10,11,5003,18,4972,4973,4978,4986,8929,4981,4983,4992,4997,4305,4311,4703,4306,4307,4716,9597,9596,9589,9592,9594,9603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [2078,8027,8029,2088,2087,8005,8009,8010,2071,2072,2079,2081,8074,8077,5848,5843,6253,2077,2080,8032,7380,8002,6469,6472,1037,1042,1044,1046,7790,7775,7781,8055,8052,8046,8049,8050,8051,6513,8013,2772,6512,6514,7379,8014,8057,8060,1736,1737,5842,6476,1052,1053,6490,6492,6473,6468,1045,6495,6509,6518,6534,6537,6540,6529,7381,7385,7382,6515,6520,6523,8066,6244] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [7367,7354,7355,7356,7302,7303,7304,7393,2195,2782,2783,7325,2204,7327,7299,7319,7323,3030,3031,3032,3033,3053,7434,7407,7397,7402,7408,7411,7412,7432,7433,2929,2203,2205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3817,3818,8904,4068,8862,8864,8891,8893,8892,8856,8860,8836,8839,8840,8841,3799,4088,4066,4067,8948,8934,8949,8971,8928,8929,8930,8945,3230,4065,3238,3239,3240,3964] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5865,5871,5875,5874,5896,5897,5891,5768,5860,5856,1729,2018,1995,1996,1998,5790,5817,5786,5788,5789,5818,5819,5767,5782,6427,5830,1747,1748,1160,1157,1159,1170,1168,1169,5762,1894] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4253,4251,4323,4292,4293,4334,4338,4280,4281,4282,4328,4332,4337,122,125,961,962,963,4225,4230,712,713,4319,983,4249,4245] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [4119,3133,3131,3132,4111,4112,4125,4128,4117,4118,4124,3134,9781,9790,4114,4113,9792,9793,9794,9795,9796,3120,3121,3129,9536,9541,9537,3145,3146,3185,3186,3187,3188] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [9222,9223,5620,5599,5617,9308,8937,8951,8952,8953,9289,9290,5604,5602,9255,9253,5513,5622,5511,5512,5621,5638] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4597,4326,4340,4342,4680,4679,4697,4694,4338,10228,10232,10233,10231,10124,10249,10251,10215,10123] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [1061,1062,1063,1099,1064,1075,1051,6467,6721,6722,6462,6720,6707,6712,6716,2043,2044,6718,1116,1117,1118,1076,1059,2041,2042,2046,2048,2049,2054,2055,2058,6463] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [801,802,927,803,812,912,932,941,796,8464,8465,8402,8403,8404,8466,8508,8510,8400,8401,8440,8502,8505,8506,8500,8391] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5968,5974,5977,5978,5984,6066,6069,6044,6125,6126,3882,3892,5990,6143,5987,6037,6141,6142,6161] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [4986,8930,4985,4992,5594,5595,4997,8935,8936,5004,5599,5614,5616,8921,9314,5604,5605,5606,5596,5585] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [16,24,26,27,28,29,4930,82,83,64,40,41,4943,5179,5181,5183,5185,5184,81,1007,80,1013,1014,1019,1020,1023,1009,4925,4926] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [8253,2086,8004,2085,2094,2096,3077,7999,2151,2152,2150,3082,3089,3076,2134,3090,3093,2097,2098,2099,8255,8259,3078,3079,8256,8257,8258,8017] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [8587,8695,5879,6217,8712,8714,8691,8678,8696,6234,8694,5863,5877,6216,8586] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [7415,7416,7716,7141,7718,7136,7049,7154,7158,7159,7050,7686,7771,7157,7685,7400,7753,7414,7752,7754] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [133,134,963,4253,4251,4282,859,4225,4228,135,4249] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [748,749,8523,8526,661,8177,658,679,680,8522,728,657,828,936,939,938,8506,8509] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        