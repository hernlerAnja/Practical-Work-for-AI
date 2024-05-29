
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
        
        load "data/4L01.pdb", protein
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
 
        load "data/4L01.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2517,2498,3062,3063,3086,2456,2450,2451,2452,3567,3412,3424,3425,3572,3576,3584,3579,3585,3588,2642,3440,2641,2624,2623,3054,3441,3037,3036,2638,2639,2640,2516,2454,2455,2625,3030,2463,2472,2473,2475,2479,2478,3995,3688,3690,3401,3413,3076,3940,3417,3079,3414,3415,3416,3388,3591,3698,3699,3387,2480,3724,3726,3727,3729,3685,4077,3728,3993,3994,3662,3695,3696,3687,3016,3028,3033] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1454,1158,1159,1187,1188,1195,403,1163,1172,237,231,232,233,234,239,276,1186,1184,1696,837,840,222,1341,1344,1441,1443,1444,1445,1446,1480,1483,1484,1485,1751,1749,1750,1447,1448,1452,1477,1418,1442] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [543,544,547,548,2282,521,523,526,2294,9,1109,2250,1110,1128,1129,1130,3358,3359,2249,2787,2789,2760,2778,2779,2781,2782,2783,2780,42,2765,13,24,33,3347,3360,3363,14,41,574,542,15,16,1112,30,34,2762,32,2254,2283,2256,2281,2821,2819,2257,2259,2263,2265,2271,1118,1131] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [386,213,211,214,1212,814,815,384,792,793,797,804,772,1211,1324,777,275,402,385,823,824,1183,1185,210,847,215,216,222,1187,1195,276] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3917,3205,3207,3209,3947,3950,3178,3179,3219,4228,3218,3220,4467,4469,4471,4470,4250,4444,3952,3954,4229,4202,4203,3241,3203,3204,3210,3211,4445,3216] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [490,514,457,2727,2753,2755,456,481,516,2729,458,2958,2959,2960,2980,714,717,2692,2721,2693,2702,2695,2701,2703,696,694,692,710,711,713,690,699,740,741,700,691,115,453,482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [620,1027,1020,996,997,1012,1015,1019,609,1290,1292,1017,1018,1046,1048,1013,610,1234] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1708,1959,1710,1954,1955,1958,1948,1952,942,944,946,947,973,975,976,977,936,941] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        