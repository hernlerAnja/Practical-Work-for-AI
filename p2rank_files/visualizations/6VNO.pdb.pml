
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
        
        load "data/6VNO.pdb", protein
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
 
        load "data/6VNO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1444,2064,2066,1454,1443,1819,1820,1821,1827,2068,1861,1447,1448,1790,1858,1860,1739,1738,2166,2096,2134,2136,1791,1699,1700,2097,2100,2102,1837,1832] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4248,4249,4258,4286,4287,4284,8530,2728,2730,2732,2734,8496,8492,3792,4331,4332,4333,4336,8523,8529,8525,4328,4259,3802,4337,4227,4228,4230,4340,3769,3775,3757,3776,3759,3760,8494,4237,4238,3158,3162,3187,3761,4203,3165,3132,3135,4267,4268,4269,2724,2725] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [395,396,425,433,434,435,436,472,473,687,655,1633,1641,439,704,398,400,401,649,619,78,326,347,76,77,345,92,60,1654,61,62,454,429,431,1679,1667,1806,1655,675,676] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [1784,1474,1569,1570,1600,1628,1528,1529,1371,1523,1779,1781,1782,1783,1470,1471,1473,1491,1494,1671,1401,1370,1399,1369,1388,1389,1390,1395,1396,1424,1487,1489,1490,1488,1459,1571] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [5749,4687,5750,4708,4709,5782,8412,8411,8433,8406,8408,8431,8445,8446,8432,8440,8441,8444,4686,4297,4688,4295,4716,4296,4718,4720,8479,8503,8470,8437,4747,4712,4713] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [385,2208,2209,2311,2318,363,364,365,2309,2310,2314,2315,2822,2821,2573,2576,407,2577,414,382,362,2597,2609,2567,2568,2580,2581,2582,2595,2599,2601,2557,2558,2614,2610,2613,2817,2833] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [4446,3945,3995,4084,3943,3946,3994,4452,4451,4469,4864,4472,4434,4985,4986,3996,4099,4427,4429,4430,4323,4324,4863,4978,4325,4979] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [7999,8005,8007,8010,5858,5856,7987,5588,5831,5798,5799,7982,8284,8012,8264,8265,5563,5556,5562,5553] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [637,639,962,2551,2552,3297,3312,3313,960,951,972,973,2540,2539,3289,3287,3288] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [3337,3339,3484,3516,4167,3177,3179,3186,3213,4201,3724,4174,4168,4169,4172,2516,4165,3720,4157] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [6206,6024,6023,6475,6505,6205,6207,6534,6533,6468,6470,6104,6388,6481,6482,6483,6100,6120,6121,6192,6118] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [7012,7013,6985,7129,6666,6663,6667,7108,7131,6669,6671,6995,6997,6999,7102,7106,7109,6646,6688,7127,7092,6984] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1866,1869,2198,2221,2201,1836,1842,1871,1874,1840,376,375,1899,2197,384,385] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [7012,7129,7102,6688,6741,7095,7127,7092] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [2502,2504,3460,3461,2518,2519,2522,2524,2525,2526,3346,3056,3057,3365,3366,3438,3437,3441,3035,3036,3037,3038,3039,3040,2980,3034] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [1698,427,429,2203,2204,1838,1844,392,394] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [1243,1272,1271,1221,1222,439,440,443,444,446,38,1276,1279,50,52,1224,1225,1228] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2406,2486,2940,3055,3057,3071,2470,2428,3441,3443,2446,2418,2966] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [127,128,129,130,131,145,117,118,119,153,139,351,352,349,140,144,147] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [5714,5717,4699,4677,5189,5737,5739,5738] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [3257,2575,3274,3276,3264,412,2623,2622,648,413] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [4611,4650,4618,4624,5546,5570,5774] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        