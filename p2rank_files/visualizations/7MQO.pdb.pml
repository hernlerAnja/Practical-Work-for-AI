
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
        
        load "data/7MQO.pdb", protein
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
 
        load "data/7MQO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8574,8577,8349,3905,3904,3906,8556,8558,8579,8797,3927,3928,3691,3693,3903,3695,3902,3913,4828,3951,8584,8585,8586,3941,3943,8786,8787,8788,8789,8790,8825,8827,8835,9712,3465,3690,3672,3674,3702,3700,3701,8811,8812,8816] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [10114,10152,10145,9163,9965,9963,9134,9964,10000,9686,9700,9703,9934,9721,9704,9726,9727,10143,10147,9759,9684,9164,9757,9127,9131,9117,9124] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [18,49,56,4837,4820,4843,4842,4280,4816,4819,4873,4875,4279,4802,4800,4233,5050,5081,4247,4250,4243,4240,5079,5080,5116] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [1838,1834,1844,1849,1827,1831,1236,1237,1239,1998,1892,1893,1903,2000,1875,1881,1853,1439,1440,1442,1847,1888,1891] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [6728,6733,6722,6123,6718,6884,6765,6731,6759,6787,6737,6323,6324,6326,6711,6715,6772,6775,6776,6777,6882,6120,6121] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [5127,5923,7739,5935,5937,5703,5705,5160,5302,5481,5482,5463,5464,5465,5694,5913,5915,5916,5158,5161] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [8821,8823,8845,8846,8847,8849,9744,9747,8881,8878,8879,8882,8883,8898,8868,8888,8890,8634,8635,8637,8630,9739,9734,9737,9738,9741,8638,8815] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [580,581,819,821,810,579,597,598,1039,1029,1031,1032,10011,10045,1053,10044,2855,1051,418] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [4863,3994,3995,3997,3998,3999,4014,3937,4004,4006,3962,3963,3984,3961,3746,3753,3965,3939,3750,3751,3754,3931,4853,4855,4857] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [8797,3913,3655,3883,3884,3891,3694,3695,3902,8775,8786,8787,8790,8767,3401,3403,3421,3422,3673] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [3906,8305,8306,8557,8578,8579,8797,8285,8287,8539,3913,3883,3891,3903,3902,8775,8786,8767,8768] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [5113,5117,5123,7719,7701,7702,5118,5152,5154,7869,7866,7867,7703,7865,7716,5125,7717,7718,7744,7700,5087,7883,5085,5088,5116] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [4801,5016,5049,5050,4807,5081,4279,4802,4804,5079,5080,4808,4811,8088,8089,7886,7884,7885,5087,7883,7869,8079,8090,4836,4837] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [9997,10001,2818,2833,2835,10007,2816,2817,9971,9972,9969,10000,10002,2985,2981,2819,2982,2983,2999] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [1474,1476,1475,1498,1500,1275,1276,1277,1278,3024,1069,1070,2847,3035,3052,3053,1042,2848,3055] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [7939,7936,7731,7937,6159,6160,6161,6162,7732,5926,6358,6359,6360,7908,6382,5953,5954,6384,7919] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [6426,6212,232,4268,5107,235,5108,239,4265,4266,4267,4258,4260,4261,4263,5066,5068] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [2312,2313,2150,2151,2319,385,2137,2139,2140,549,351,369,350,2309,2133] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [7193,7196,7197,7017,7034,7035,7203,5269,7021,7023,5235,5234,5253,7024,5433] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [4808,4811,8088,8357,8089,4807,4804,4994,5017,8086,8353,8355,8356,8103,5028,7886,8085,8373] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [3469,3471,3472,3473,8828,3002,3202,3204,3205,3201,3219,9688,9691,9692,9695,9912,9901,9878,3489] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [10413,10420,443,444,445,635,647,650,10422,631,439,10273,10414,10386,10412,10270,10271,10389,10391,618,639,637] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [5957,7715,7881,5059,5061] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [2831,9943,1073,2997,9945] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [7894,7895,7896,6371,6388,6378,6380,5058,7893,5037,5038,5060,6402,6400] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [174,175,5328,184,290,324,316,317,318,295,293,5534,5521,5519,5531,326,5515] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [1494,1496,3020,1487,1504,9921,1516,1518,9942,9944,3019,3009,3010,3011,3012,3018,9922] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        