
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
        
        load "data/8EXL.pdb", protein
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
 
        load "data/8EXL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6224,4991,6108,6133,6134,6216,5671,5696,4990,4995,5022,4979,5044,5652,5233,5606,5214,5215,5605,5610,5629,5623,5626,5654,5621,5271,6223,5299,6217,6218,6221,6222,5526,5527,5528,6213,6215,5235,5255,5259,5234,5252] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4102,4104,4103,4105,4106,4107,4108,4070,4071,4072,4857,4849,498,3814,3823,3786,3792,3789,3790,3787,3784,3761,3788,1127,3764,4153,4154,4838,5534,5531,4847,4848,4850,5546,4842,5537,5370,5333,5334,5335,5339,5340,5371,5514,5521,3825,5310,5343,5344,5306] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [464,474,476,1332,1340,1320,1327,4063,4064,462,465,454,4854,4855,4819,4820,1010,4821,4880,4360,4364,4404,1339,4365,4406,1337,4374,456,4376,4378,4403,4405] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3932,2440,2441,2444,2446,3930,214,212,213,2194,3907,2222,3921,2215,2218,198,2297,2292,2293,196,197,2452,2449,2453,2305,2187,2191,2190,2183,2185,4250] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5434,5445,513,514,515,1153,1154,1156,1126,1127,5401,5404,5406,550,551,571,1159,1160,1150,1151,1123,1125,1122,5397,5398,5399,5438,5489,5498,564,566,5436,5437,1183,5369,5370,5372,5435,565,5367,5400,1190,1163,1189,1191] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4143,5561,4170,4171,4468,4448,4479,4480,117,4446,5557,5563,4166,5566,4168,109,115,4191,4505,4504,5586] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [6755,6800,2355,6801,2356,2164,2327,2340,2343,2411,2342,2410,2371,2373,4211,4212,4228,2333,6747,6754,6802,6797,4227,4234,3880,3889,3891,6753,3878,2435,2437,2431,2432,2422,2427,2428,2421] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4872,4871,5153,5162,5164,5150,1204,1170,1202,1210,1229,5142,1164,4850,1019,1018,1132,1134,985,1002,499,1128,1129,1136,1138,1222] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3898,4259,4258,3932,2441,3915,3925,3907,198,3877,2437,4225,2468,4216,2452,2449,4246,4250,4255,4251] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3904,3949,3936,3942,3945,3902,3628,2225,2247,3920,3922,3629,2024,3627,3954] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5370,5333,5334,5335,5339,5340,5371,5372,5514,5515,5521,5343,5344,5306,5534,5531,3786,3790,3797] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4872,5615,5162,5164,5165,5160,5163,4847,4850,4870,5189,5613,5614,4839,4841,5184,5612,5619,5194,5191] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3384,3359,3375,3378,2743,2744,3387,2791,2768,2771,2860,2875,2874,3146] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1126,1127,3796,5406,3764,514,515,3793,3795,3797,1123,1125,498,499,5369,5370,5371,5372] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [7071,6392,6461,6463,6393,6506,6462,6346,7072,7075,7091,7093] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4186,4203,4204,4212,6763,5278,5279,5280] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        