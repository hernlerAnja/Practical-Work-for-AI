
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
        
        load "data/7NX0.pdb", protein
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
 
        load "data/7NX0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3851,3852,6806,6808,7183,7184,9703,9704,9706,9713,9717,9718,9719,9720,9705,6842,6843,9698,9685,1045,3832,3835,3836,3838,12374,12310,12373,12418,12372,12312,1003,1385,1386,1387,1425,3850,3853,1000,1001,3834,1418,1422,995,999,1043,7241,7253,7254,7185,7216,7223,7197,6805,1411,1404,1408,9735,9727,9730,9731,9747,9689,5890,9758,9757,9759,5902,5922,5923,5924,5942,5943,9734,9736,5921,879,880,881,951,952,966,968,970,985,988,954,956,6113,971,5891,955,7180,7202,7206,1456,1443,1444,1450,1445,905,1585,6773,3823,3863,3831,12415,12416,6793,12352,92,85,3880,48,49,3888,3890,3891,3892,3804,3818,3822,818,12351,12348,12349,12350,11852,117,6684,6685,6756,6757,6759,6771,6686,6800,6790,86,6776,3860,3867,3868,3864,1382,137,138,119,3869,97,144,7242] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [12059,12061,12062,12063,12064,11795,11810,11738,12142,12143,12144,11740,11741,11743,11742,11744,11814,11873,12459,11875,11886,11910,11797,11794,11811,11940,11942,11907,12165] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2661,2685,3304,2052,2069,2088,2089,2663,5617,2039,2040,2042,2509,2530,3306,2484,2485,2483,5615,5616,5633,5634,2072,2073,2076] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [11524,11525,11526,11542,11543,7877,7898,8528,8530,8552,8376,8350,7913,7914,7865,7867,7866,7863] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5425,5427,5428,5527,4769,5416,5528,4383,4684,4685,4653,4654,4655,4750,4364,4366,4363,4753] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [7648,7649,9090,8979,8982,7320,8934,8957,7368,7232,7658,8988,8964,8966,6711] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [9921,9920,10262,10263,11297,10304,11515,9882,9883,9885,10214,10189,10219,10241] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [8454,8455,8460,8461,8425,8456,8610,8611,8574,8665,8463,8623,8624,8504,8674,8416,8422,8564,8565] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [11425,11428,11419,11415,11416,7852,7842,10518,10521,10514] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5498,1982,5507,5510,4612,4614,5522,5519,4605,4609,4817,4608,2017,2018,2027,4569,4591] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1434,3097,3099,1833,1569,1570,1521,1823,3121,3112] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2627,2558,2563,2586,2587,2798,2742,2743,2593,2594,2596,2588,2589] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [137,119,124,133,136,127,265,195,178,179,7249,7253,7242,7334,7335,7381,7382,7383,7396,266] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [596,1254,1255,1231,1250,1253,5496,1288,1290,5491,1242,1980,5506,5510,1981] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [819,3892,3919,3920,3921,3922,12352,11835,3957,11839,11841,11852,821] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [11400,11405,11408,11415,7053,7805,7806,11419,7029,7048,7041,7052,7086,7088] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [4337,4336,4320,4321,5388,5605,4340,4395,4045,4312,5384,4699,4022] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        