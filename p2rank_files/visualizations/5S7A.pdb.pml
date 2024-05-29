
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
        
        load "data/5S7A.pdb", protein
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
 
        load "data/5S7A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2448,2450,2451,2452,2453,2423,2425,2472,2474,2420,2421,2565,2569,2571,2949,2473,3416,3415,3388,3520,3521,3523,3676,3677,3516,3517,3522,3405,3427,2573,2685,2953,3691,3692,3696,3697,2447,3674,3675,3683,2617,3444,3515,3022,3026,3027,3055,3019,3004,2811,2967,2972,3443,2557,2994,2985,2987,2991,2989,2968] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [262,264,134,135,136,113,138,137,139,140,749,108,306,307,305,256,159,161,160,248,672,674,109,110,111,640,260,1205,1206,1207,1210,1211,1213,1132,1134,1101,1113,1102,709,713,714,706,371,1212,681,508,654,507,659,1276,1090,1091,1104,1074,1277,1278,1284,1297] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [919,465,467,921,476,483,889,1178,1179,1180,859,861,863,866,946,948,974,992,990,450,939,938,937,2289,4277,4278,4279,3778,4276,4252,4253,4254,4275,891,4316,4317,3798,3799,3797,4242,4244,4250,4251,4249,4282,4286,2261,890,3784,2315,3785] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3684,3685,3687,3672,3681,3798,3771,3773,3796,3797,3746,4243,3657,3813,3824,3825,3641,3377,3378,3688,3373,3906,3374,3774,3730,3740,3744,3387,3694,3691,3877,3879,3638,3639,3814] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3723,3042,3044,3046,4144,3724,4145,3417,3412,3418,3419,3420,2450,2452,3716,3722,3735,3403,3696,3697,3405,4146,4227,4228,3698,3411,4018] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1060,1063,1064,1469,1412,1285,1286,1507,1282,1471,1059,1068,1073,1288,1289,1292,1273,1369,1411,1394,1423,1372,1342,1371,1344,1844,1848] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1089,1091,1103,1104,1298,729,731,733,1105,1321,1333,1335,1320,1097,1611,1737,1738,1739,1746,1106,1808,1806,1807,1821,1813,1322] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1481,1450,1477,1491,1496,1498,1487,1489,1451,1452,1453,1522,2237,2243,975,962,964,2253,2249,2248,2246,2226,2260,2254,2259,2247] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3278,3280,3282,3885,3887,3888,3889,3279,3860,3921,3897,4610,4621,4627,4630,4631,4632,4633,4638,4642,3291,3293,4645,3895,3898,3859] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [760,794,761,874,876,1169,1171,834,840,842,864,798,809,704,1141] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [536,647,530,66,202,203,204,205,206,207,208,209,242] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [686,510,661,662,664,687,1192,491,509,461,469,471,1149,1150,1151] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2938,2940,2941,2937,2939,2961,2375,2378,2942,2944,2393,2374,2391,2392,2850,2851,2853] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [2783,2799,2973,2974,2975,2976,2977,2978,2999,3000,2997,2982,2785,3502,3458,3460,2812,2813,2775] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3239,4673,3259,3293,3264,2779,2781] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [497,505,508,504,655,1219,372,1196,1202,1206] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        