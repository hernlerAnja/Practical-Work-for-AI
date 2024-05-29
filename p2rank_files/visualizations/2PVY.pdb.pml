
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
        
        load "data/2PVY.pdb", protein
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
 
        load "data/2PVY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2483,2484,2485,3038,2486,2487,2488,3036,2502,2503,3519,2504,2657,2659,2790,3612,3615,3616,3618,2655,2643,3020,2823,3045,3042,3611,3532,3533,3534,3610,2903,3101,3063,3066,3073,3070,3504,5476] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [733,736,740,743,1209,1179,732,1208,1285,712,715,1286,1287,1290,1291,1293,497,573,771,170,187,188,189,172,706,317,690,694,329,331,333,464,689,168,169,708] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4761,4762,4764,4766,4767,4781,4782,4783,4936,4938,5069,5875,5879,4922,5317,5299,5303,5298,5102,4934,5352,5345,5349,5795,5796,5797,5767,5873,5782,5776,5874,5878,5380,5342,5321,5324,5182] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [7563,7564,8004,8006,7546,8005,7001,7003,7018,7019,7020,7539,7144,7543,7525,7574,7571,7976,7567,7985,7986,7602,7000,7404,8082,7291,7323,7324,7521,7520,8089,8090,7991,8084,8087,8088,7160,8083,7156,7158] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6027,6029,6057,6058,6406,6408,6092,6106,6070,6060,6095,6404,6068,6433,6104,6399,6400] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [5338,3212,5339,5340,5815,5829,5830,5833,5836,5822,5489,5425,5424,5496,5389,5391,5517,3192,5329,5490,5492,3050,3059,5497,3556,3193,3194,3195,3137,3238,3060,3555,3557,3213,3146,3056] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [720,726,728,729,722,1232,721,730,731,807,773,816,7698,7701,7714,7706,7707,867,868,870,7551,7560,7561,7562,8038,8042,913,8024,869,888,7611,7646,7647,7613,7727] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1182,1157,1183,1472,1156,1451,1314,1315,1292,1293,1306,1194,411,408,431,434,332,333,439,441,463,435,436] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3709,3711,3705,3716,3734,3471,3472,3815,3850,3852,3845,3846,3847,3723,3731,3724,3727,3743,3744,3866] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [6139,5968,6128,6129,6137,6117,6118,6014,6015,6061,6086,6121,5980,5735,5972,5974,6003,5904,6002,6005,5998,5989,5994,5995] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3823,4129,4162,3835,3758,4133,3824,4135] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [7589,7590,2699,2697,2698,7978,7979,8518,8298,7591,7977,7981,2689,8574,8299,8567] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3219,3228,5820,5306,5308,5307,5819,5156,5860,5818,5312,5810,4903,4907,5301,5304] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3415,3416,3899,4433,3896,4438,4431,4434,4445,3886,3885,3888,3414] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3569,3570,3571,3286,3588,3317,3345,3287,3288,3289,3290] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5526,6519,6520,5532,6513,6518,6304,6306,5514,6305,6284,5560,6287,5510,6522,5444,5464] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        