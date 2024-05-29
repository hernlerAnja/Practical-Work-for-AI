
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
        
        load "data/7ZH8.pdb", protein
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
 
        load "data/7ZH8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2776,2752,2753,2754,7919,7943,7944,7945,7946,2775,2750,2751,2628,8205,8206,8203,2627,2629,2630,8202,2755,2757,2782,2791,2718,2597,2788,2790,2774,2723,2756,2726,2719,2724,2725,2727,7917,7578,7589,7583,7912,7584,7585,7942,7939,7947,7951,8174,7955,7959,7960,7962,2796,2795,7964] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2589,8360,8361,8365,2348,2349,2350,2588,2620,2621,8212,8214,8215,8297,8300,8301,8213,8303,8182,8367,8373,8374,8375,8335,8336,8338,8340,2323,1982,1989,8281,1993,2363,2364,2366,2375,2346,2347,2365,2355,2351,8380,8381,8376,8377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [7028,7030,5924,5926,6061,5946,6492,6057,6490,5903,5904,6912,6911,6923,7022,7024,7027,6939,7020,7021,7023,6341,6487,6488,6537,6544,6522,6940,6511,6514,6515,6510,6497,6517,5898,5899,5901,5895,5896,5945,6044] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [8831,9275,9821,9730,9820,9822,9272,9273,9271,9328,9701,9713,8723,8724,8673,8674,8725,8676,8679,8846,8847,8704,8705,8671,8667,9356,9299,9301,9306,9295,9729,9298,9823,9827,8848] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [8239,8240,8241,2699,2696,2697,2698,2654,2655,2656,8261,8283,2617,2623,2650,2657,8281,8282,8284,2627,2630,8202,8208,8212,8215,8238,8207,2673,2018,2661,2669,2664,8249,8235,8242,7629,8258,7613,7614,7615] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3740,3770,3798,3099,3100,3101,3102,3104,3105,3106,3270,3736,3739,3741,4166,4168,4139,4167,3743,3157,3158,3285,3137,3138,3156,3112,3286,3287,3714,3715,3283,3717,3109,4254,4255,4256,3719,4257,4151,4261] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1306,1307,935,273,1422,906,1335,319,737,879,881,882,883,884,1423,880,1421,1424,736,1318,1428,1429,1431,448,298,299,446,263,265,317,318,431,261,267,270,905,913,902,917] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1444,1430,1445,1446,1447,537,290,293,296,288,287,570,541,508,536,509,511,513,1429,1431,1276,1278,1295,1573,1451,1452,1562,1523] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [7189,7191,7185,7186,7187,7188,7190,7202,7449,7201,6899,6900,6915,6916,7405,8795,6561,6563,6632,6633,6559,7170,7168,7169,7178,7174] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [6881,6883,7169,7051,5915,6153,6181,7043,6156,6152,7045,6147,6148,6145,6119,6122,6124,7028,7030,7029,5914,5920,5922,6900] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3122,3126,3127,3128,3129,3132,3135,4264,4109,4110,4111,4277,4278,4284,4285,4394,4406,4392,4393,4395,4128,3376,4279,3350,3373,3375,3380,3345,3347,4385,4388,4390,4354,4356,4371] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [8699,8936,8937,9845,8693,8694,8864,8970,9829,9830,9843,9844,9851,9673,8863,8909,8911,8913,8908,8906,9690,8698] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [9345,9986,9988,9990,9991,9688,9705,9706,9347,10205,10001,10002,10249,9343,9969,9968,9970,9985,9987,9981] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4438,4439,4423,4425,4427,4405,4134,4642,3785,4143,4144,3787] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [9561,11109,10135,11110,11096,11099,11104,10132,9596,9571,11103,11111,10105,10101,10103,10107,10108,10111,10102,9595,9560] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [9335,10180,10211,9501,9536,10189] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [8855,9232,9251,9205,9201,8523] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        