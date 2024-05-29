
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
        
        load "data/6NPV.pdb", protein
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
 
        load "data/6NPV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3289,3293,2298,2299,2300,2302,2301,2303,2304,3280,3286,2448,3291,2324,2325,2446,2527,2736,2270,2272,2768,2770,2772,2442,2752,2433,2434,2751,2733,3295,3201,3202,2626,2627,2551,2552,2773,2776,2756,3277,2273,2800,2801,2811,2804,2293,2274] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1081,1082,1171,1173,1175,504,505,1156,1157,1160,1166,1168,1169,170,171,172,173,688,161,162,653,661,668,677,678,681,709,712,640,646,301,302,303,193,304,311,194,317,319,315,633,430,628,610,629,428,429,613,405,140,141,142,143,648,123,215,649] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [948,989,990,453,456,420,421,422,502,498,1160,1161,1162,1164,504,1154,1157,1150,1012,1004,1008,1010,1006,998,947,988,403,405,402,430,428,429,426,424,427] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3876,3850,3851,3838,3875,3837,2937,2961,2965,2935,2938,3580,2959,3585,3546,3583,2955,2957,3829,3550,2956,2967,2962] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3128,3130,3132,3275,3281,3284,3274,3277,2543,2578,3110,3124,3126,3118,2577,2550,2551,2548,2574,2552,3268,3273,2624,2626,3280,2527,2524,3071,2620,3070] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4081,4079,4082,290,4045,4046,4047,4049,4076,4109,4107,114,123,124,213,214,215,649,289,645,647,3868,3869,3897,663,659,661,3905,4018,4017,3929] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [834,1562,836,1565,1528,1568,838,839,844,1532,1567,812,814,815,1814,1815,1827,1828,1852,1853] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [795,1118,1119,1120,719,721,723,792,793,1104,3856,3857,3858,794,754,714,748,752,716,746,747,672,674,673,675,1101,668,3849,3850,3838,3846,3845,1109,3852] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [473,933,935,966,925,929,930,965,926,927,928,489,879,475,904,905,906,4219,4220,4222,4191,4195,4196,4193,2044,2045,2078,4231,2042,4229,481] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4100,4102,3049,3051,3029,4067,2611,3027,2595,2597,3053,3058,2603,262,275,276,253] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3028,4102,3029,4067,3000,4125,4127,4101,2611,2597,3002,3006,2602,2603,2977,4097,262,4129] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [704,1220,1240,1241,1236,1345,1346,1605,1601,1612,1604,1331] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1016,1028,1430,1431,1293,1029,1316,1353,1289,1021,1413,1429,1304,1306,1307,1309] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [541,553,11,12,439,383,411,387,554,410,612] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1322,1323,1324,1655,1272,1274,1686,1687,1388,1389] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1177,1163,1164,1192,1193,1031,1028] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        