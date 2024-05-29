
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
        
        load "data/2G2H.pdb", protein
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
 
        load "data/2G2H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [194,170,171,172,173,1129,728,724,700,143,144,163,735,759,756,725,715,1216,660,195,472,1210,1212,676,546,1203,1128,701,320,1219,1221,316,318,471,139,141,142,694,696,697,708,312,304,675,680,1078,1113,1114,1115,1224,1223,1058,1059,1075,1064,1067,1068] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3338,2756,2514,2885,2886,2890,2404,2907,2910,3429,3431,2379,3339,3414,3422,2681,2682,3418,2405,2528,2522,2526,2527,2377,2378,3426,2657,2870,2380,2382,2353,2354,2355,2349,2351,2352,2938,2969,2925,2934,2935,2904,2906,2966] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [446,1064,1065,1066,1067,1068,376,445,447,1061,436,437,1230,1236,1241,1239,1240,1244,438,405,435,406,407,408,410,3363,3364,3365,3366,409,4365,3078,3077,1309,1302,1304,4405,1298,1300,1324,3066,3067,1338,1063,1317,1478,1480,1482,1352,3047,3375,3377,1323,3086,1306,1355,1483,3038] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [593,598,600,640,641,639,622,623,4315,4312,353,621,3184,4279,3183,3185,3223,2725,2727,2741,3161,3163,385,2734,4305,4307,2733,391,401,428,390,392,4340,4341,3190,3187,3192,3194] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1584,2120,891,892,1616,1617,1620,1905,1619,1867,1580,1873,1880,1904,1878,1879,1866,881,883,1614,917,879,880,885,886,861,859,862] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3069,4079,4075,4076,4077,4078,3093,3826,3827,3830,3829,3072,4068,4115,4089,4090,3095,3100,3101,3102,3071,3089,3091,3127,3794,3090,3824,3790,4114] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [480,39,594,595,596,481,6,7,8,453,454,457,4375,4376,425,452,4315,4316,4341,4347,426,429] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2446,2257,2778,2779,2449,2782,2467,2469,2478,2480,2781,2442,2508,2878,2443,2444,2447,2495] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2976,2978,2980,2929,2931,2932,3052,1322,1328,2973,3004,3011,3014,1325,1329,3051,3360,3368,3350] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3426,2616,2622,2625,2656,2627,3288,3278,3433,2530,2529,2614,2615,2592,2594,2591,2544,3427,3428] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [793,794,800,801,804,768,770,841,842,721,719,766,798,722] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3587,3746,3749,3883,3885,4182,4183,4184,4185,4187,4181,4025,3979,3980,4030] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        