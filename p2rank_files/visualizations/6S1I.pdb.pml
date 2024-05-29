
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
        
        load "data/6S1I.pdb", protein
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
 
        load "data/6S1I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10401,10750,10775,10776,10777,10774,10748,10408,11034,11036,11037,10412,2790,2791,2798,2804,2807,2734,2766,2767,2641,2605,11005,2637,2639,2604,2769,2795,2768,2643,10773,10790,10791,10793,2811,2812,10792,10407,10406] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3753,4183,4184,4185,4156,3775,3742,3744,3746,3748,3278,3745,3116,3740,3111,3112,3114,3117,3118,3719,3721,3722,3723,3724,4272,4273,4274,4275,4279,3145,3293,4280,4168,4282,3295,3165,3119,3164,3166,3146,3121,3124,3576] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [8708,8705,8750,8696,8697,8702,8854,8748,8749,8698,8700,9734,9846,9848,8871,8729,8730,9300,9302,8869,9756,9757,9758,9332,9307,9354,9729,9347,9841,9845,9838,9839,9840,9156,9298,9297,9741,9325,9326,9327,9320] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [6557,6559,6561,6566,6993,6994,6555,6093,6581,6588,6965,7085,7084,7086,7087,7088,7091,7094,6977,6532,6534,6535,6536,6537,6966,5929,5981,5935,5979,5980,6108,6110,5960,5961,6558,6553,6616,5925,5927,5923,5924] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [448,449,320,321,881,433,883,885,301,300,1327,275,1446,1447,738,739,884,1448,1449,1453,1339,573,450,886,1454,1456,265,263,269,270,272,264,267,908,910,1356,909,1354,1355,930,937,914,915,903,907,904] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [11206,11198,11204,11207,11134,11167,11191,11166,11012,11013,2626,11044,11045,11046,2013,2014,11072,2384,2597,2382,2383,2385,2368,2370,2374,2369,2628,2629,2012,2018,2007,11212,11211] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2713,2715,10437,2714,11069,11070,11071,11072,11089,11092,11113,11114,11115,2666,2670,2672,2671,2673,2625,2643,11033,11046,11066,2639,11044,2641,2677,2689,2692,10452,2043,2044,2680,11073,11080,10438] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1470,1471,538,539,1563,510,295,291,292,513,511,290,515,572,1469,1454,1455,1456,1297,1298,1299,1316,1476,1477,1584,298,1582] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [10008,10009,10010,10011,10012,10013,10014,10024,9991,9716,9718,9992,6057,9369,9371,9373,10272,10025,9724,9725,9449,10228,9723,9733,9997,10001,9993] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [6937,7115,7107,6198,6199,7108,7109,6207,6170,6168,6126,6232,5955,5958,5945,5950,6125,5951,5952,5954,6173,6175,5949,7094,6954] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [9734,8711,8719,9846,9847,9848,8729,8714,9717,9718,9992,9701,9741,9742,9869,8963] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4295,3143,4281,4128,4302,3386,3387,4144,4145,4168,4282,3140,3135,3130,4303] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [10749,10750,10777,10743,10748,2734,2767,2641,2769,2795,2768,2771,2773,2770,2772,2742,2735,2739,2740,2741,2728,2732,2712,2643] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [9867,9873,9923,9976,9910,9974,9865,9868,9693,9880,9881,9925] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3790,4160,3792,4161,4436,4438,4697,4653,4151,4450,4449] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [7040,7054,7049,7050,7041,10672,10679,10680,10665,6761,6762,6797,6798,6795,6796,6372,6374] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        