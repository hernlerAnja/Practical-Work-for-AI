
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
        
        load "data/6VP7.pdb", protein
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
 
        load "data/6VP7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1679,61,62,1633,1641,60,78,1654,77,454,472,473,439,389,393,395,396,347,398,345,401,92,619,621,655,322,324,326,431,425,429,433,434,435,436,675,687,676,400,649,1806] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2097,2096,1739,2102,1738,2100,1454,1443,1444,2064,2066,2068,1442,1827,1861,1860,1858,1790,1821,1699,1791,2166,1837,2134,2136] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1470,1471,1473,1474,1570,1491,1494,1528,1523,1781,1783,1784,1459,1487,1489,1490,1488,1390,1424,1391,1569,1571,1600,1628,1371,1529,1401,1402,1671,1395,1396,1399,1370,1369] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2725,2724,2734,3132,3158,3162,3165,3135,3757,3759,3761,3760,4258,4268,4269,3184,3187,4237,4238,4227,4228,4203,4266,3775,3769,3776,4259,4230,3197] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [4284,4286,4287,8496,4249,8492,8529,8530,8531,3792,8523,8525,4328,4331,4333,3802,4259,4336,4337,4340,3775,4332,4439,4267,4258,4248,2734,8494,8495] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [4709,4688,8437,4295,4716,4718,4297,4296,8470,8479,4303,4720,8503,4687,4686,8433,8431,8432,4712,4747,4708,4713,8445,8446,5749,5750,5782,8410,8406,8411,8440,8441,8444] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [414,2613,2614,2581,2582,2567,2573,2576,2577,2568,2580,2595,2557,2558,2208,2209,2311,2597,2609,2610,2309,2310,2314,2817,2821,2599,2601,2833,362,363,364,365,382,2318,385,2822,2315] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [5798,7982,5831,8265,8284,5856,5799,8010,7999,7987,8005,8007,5858,5563,5556,5562,5553,5588] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3994,3995,3943,4084,4427,4863,4452,4469,4864,4434,4446,3945,4451,4985,4986,3996,4099,4429,4430,4323,4324,4325,4979,4978] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [639,3288,3289,3297,3312,3313,2540,2539,637,971,972,2551,2552,973,960,962,951,3287] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [3516,4165,4167,3186,4201,4174,4169,4173,4157,4168,4172,3492,3179,3720,3724,3484,3213,2516,3338,3339,3337] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [6024,6104,6023,6505,6100,6206,6205,6207,6481,6482,6483,6475,6388,6534,6533,6470,6468,6192,6118,6120,6121] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [6985,6995,6996,6997,6999,6663,6646,6666,6984,7013,7012,6688,7129,7131,6667,6670,7102,7106,7109,7108,6672] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [1844,374,375,376,1870,2221,384,1871,1842,1874,1840,2199,2201,2203,2198,1834,1866,1836,1868,1869] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [3056,2502,2504,3365,3366,3460,3461,3438,3441,3437,3346,3034,3035,3036,3037,3038,3039,3040,2980,3002,3003,3004,3057,2524,2525,2526,2518,2519,2522] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [446,1243,439,440,443,444,1272,1271,1276,1228,1221,1222,1224,1225,38,50,52,1279] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [326,307,1656,306,229,246,1800,1813,1815,1658,1660,1805,1806] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [1976,2290,2306,1933,2175,2174,1887,1890,1892,2305,1895,1893,2220] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [144,145,147,152,352,117,128,129,130,127,118,119,120,121,139,351,109] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [648,2575,410,412,413,2623,2622,3264,3257,3274,3276,680] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7982,8281,8282,7981,8318,7816,7866] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [5714,5717,4699,4677,4680,5737,5739,5738] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [4618,4624,5546,5774,5570,4650,4611] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        