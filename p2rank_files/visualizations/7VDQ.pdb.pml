
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
        
        load "data/7VDQ.pdb", protein
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
 
        load "data/7VDQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1157,669,1078,1079,665,509,692,693,695,680,681,682,688,668,674,1050,1062,1163,1164,1165,1158,401,135,244,81,82,661,640,642,638,639,641,643,113,115,117,260,261,134,136,257,259,402,644,78] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3337,2502,3336,2906,2923,2391,2397,2398,2406,3415,3308,3315,3320,2392,2394,3416,3417,3420,3421,3422,3423,2393,2898,2897,2899,2896,2767,2921,2926,2939,2946,2940,2950,2517,2518,2659,2660,2900,2902,2901,2515,2516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2554,2556,2868,2869,6576,6582,6575,2637,2640,6609,6617,6615,2612,2632,2610,2613] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [22,23,47,48,251,1,617,618,560,25,577,10,14,269,266,267,2580,602,603,2579,2576] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5826,5802,5828,5899,6149,6176,5806,5928,5929,6319,5966,6318,5829,5831,6209,6210,5827,6316,6288,6289,6290,5837,5894] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1245,1236,1241,1246,5003,4990,5318,5316,5317,5319,5303,5309,4972,5010,5011,5312,4965,4967,4991,1253,1255,4957,4961,4943,4956] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [6334,6335,6307,6308,6310,6312,6313,6339,6630,6631,6209,6210,6208,6199,6200,6205,6206,6224,6340,6661,6225,6318] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2626,3436,3437,3438,3444,3446,3445,2605,2627,2607,2518,2519,2628,94,3279,3422,3423,3297] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [2526,2527,2528,2542,2544,2545,2546,338,339,2523,2525,2538,270,280,284,285,286,288,2588,120,99,350,129,2403,2405,101,103,105] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2332,2341,2345,2834,2835,2347,2818,2526,2527,2528,2859,2860,2861,2370,2857,2833,313,314,2524,2875,2876,2368,2369,2344,2401,2507,2509] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2975,2976,2978,1332,1334,1335,1337,1314,1316,1315,1324,2979,1333,1636,1321,1052,1053,1055,711,712,3009,1035,1036,1037,1039,1046,1348] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [713,714,717,3595,718,719,720,3594,3590,3593,3591,3592,3312,709,2969,2970,751,3606,3295,3313,3572,3573,3574,3579] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [6138,6139,6176,6140,6144,5806,6150,5966,6347,6383,6114,6115,6110] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1431,2165,1428,1418,1869,1819,1836,1837,2158,2173] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3688,3689,3694,3695,3676,3690,4431,4094,4095,4127,4422,3640,4423,4080,4077] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5703,5704,5705,5706,5707,4996,1238,5670,5672,5673,5679] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [657,652,1095,1144,1143,1125,1126,1127,1114] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        