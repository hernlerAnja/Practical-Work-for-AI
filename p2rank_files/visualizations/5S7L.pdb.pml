
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
        
        load "data/5S7L.pdb", protein
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
 
        load "data/5S7L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1113,1124,1125,1097,1233,1236,1309,1310,1136,726,135,137,139,140,134,305,307,1316,1114,1329,718,721,1157,725,761,512,644,1229,1230,264,248,663,682,676,685,678,658,659,1155,1228,256,159,160,161,108,109,111,113,110,260,262,640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3467,2470,2519,2520,2521,2467,2472,2468,2469,2491,2494,2495,2496,2497,2498,2499,2500,2630,2634,3014,3468,3470,3756,3440,3572,3573,3574,3575,3736,3737,2682,3568,3569,3456,3457,3479,2638,2750,2751,3018,2636,3751,3752,3735,3743,2785,2705,2706,2489,2490,3734,2680,3496,3567,2875,2876,3495,3087,3056,3032,3033,3037,2622,2786,3091,3092,3120,3059,3084,3052,3050] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [931,933,951,2328,4301,4302,4303,4304,4305,480,902,901,903,904,871,875,864,865,866,1203,470,469,471,472,487,477,905,479,1202,873,960,1004,454,950,958,986,2300,949,1002,4300,4326,4333,4367,4293,4295,4328,4329,4330,3835,4327,4368,2354,3848,3849,3850,4296,3829] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3825,3791,3795,3824,3781,3747,3748,3425,3957,3426,3429,3430,3602,3699,3928,3930,3698,3701,3864,3865,3717,3848,3849,3822,3847,4296,3876,3797,4294,3744,3745,3741,3732] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1401,1403,1404,1443,1444,1370,1374,1459,1376,1875,1426,1086,1087,1508,1510,1546,1082,1096,1320,1321,1324,1314,1317,1318,1305,1091] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4279,3774,3775,3107,3109,3111,4195,4196,3469,3470,3464,3471,3472,2497,2499,4278,3758,3767,3773,3786,3757,3756,3455,3457,3463,4069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1114,1365,1367,1112,1330,1642,1785,1352,1776,1777,1113,1120,1126,1127,1128,1129,741,743,745,137,139,1353,1354,1860,1846,1847] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3972,3948,4672,4683,3936,3911,3332,3334,3938,3939,3940,3330,3331,4699,4704,3343,3345,4689,4692,4693,4694,4695,4707,3946,3949,3909,3910] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [974,976,1526,1528,2285,2298,2299,2286,2293,2288,1520,1489,1516,1530,1535,1537,2287,1518,2276,2282,1561,2265,984,987] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [495,514,665,666,668,690,1172,475,1174,465,473] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [43,202,206,652,66,651,534,204,208,242,540] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1194,852,854,888,821,810,1192,1164,772,773,806] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3005,3006,2394,2422,2425,3008,2418,2421,3002,3004,3007,3009,2438,2915,2916,2918] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3291,4735,3311,2845,3309,2844,2846,3316] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        