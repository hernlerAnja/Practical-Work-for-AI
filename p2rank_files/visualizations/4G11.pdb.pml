
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
        
        load "data/4G11.pdb", protein
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
 
        load "data/4G11.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4945,4967,4969,472,3405,3406,3411,4966,3415,3416,3417,3418,3419,3428,3430,1129,1130,1132,1133,471,473,1102,1104,1091,1086,1125,1128,3408,3386,3393,5006,4999,5003,5004,5001,5002,5031,5033,5035,5034,5041,5042,3153,5010,6237,6239,6262,3147,1090,1115,524,553,1116,1117,1119,3394,3392,501,502,500,3134,3138,3145,4946,5138,3718,3719,3721,3720,3722,3724,4484,4485,3723,4498,4499,4500,3689,4508,973,971,3409,992,453,3439,3767,3768,4970,4971,4968,4996,4997,5107,5110,1156,5123,5124,5211,5130,1154,1155,4994,543,545,5073] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4655,4604,4608,4677,4675,4861,5862,4635,5854,5852,5247,5774,5775,5856,5860,5855,5284,4609,4610,4611,4622,5751,4621,5261,5116,5118,5117,5119,5121,5201,4819,5206,4839,5202,4817,5220,5223,5217,5218,4665,4669,4818,4837] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [6312,6311,6432,6433,6434,6398,6399,2645,6343,6396,6387,3225,3227,3226,6285,3213,2634,2635,3188,1620,3219,6344] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [434,435,1253,1282,4009,4008,3678,3679,1290,3680,4002,3676,452,453,982,4462,4463,4464,983,4036,3675,4505,4026,4000,4001,4035,4528] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4886,5164,2283,6347,6348,6359,2270,4869,6355,4897,6364,6365,3826,3829,3830,3818,3819,3848,3850,3501,2282] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2312,2310,2311,2313,2315,208,209,216,233,217,2051,2139,3877,2318,3549,3550,188,194,198,200,2057,2055] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3224,3225,3227,3226,3236,2904,2905,3238,3213,2634,2667,2878,2879,2635,3188,2867,2869,2868,2645,2649] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [645,647,663,750,838,805,806,810,807,936,818,661,662,839,841] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4489,5208,5209,5210,5211,4798,5215,5233,5234,4497,4498,4499,4500,973,4517,4519,4484] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [6328,6336,5686,6306,6423,6424,4927,4929,6363,5868,5867,5692,5693,5694,5882,6448,6449,5887,5701] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4519,964,972,958,4754,4758,4753,1133,1103,1104,953,1181,1198,4761,1175,1176,1177] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [6749,6768,6769,5346,6770,5344,5345,5338,6721,5364,5363,5734,5735,5275,5310,5274] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [443,914,928,1017,1018,817,897,416,418,1020,1021,789,790,791,794,795,1247,408] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [5766,5937,5645,5847,5826] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3252,3017,3019,2986,2958,2962,2988,2989,2992,1897,1900,1903,1891,2963,2471,2467,2472,3260,1907] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5564,5565,5070,5072,5087,5601,5603,5605,577,1151,576,1155,5073,5071,5543,5566,5567,5570,5563] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5702,5873,4961,5635,5662,5663] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        