
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
        
        load "data/6GIN.pdb", protein
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
 
        load "data/6GIN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1221,1490,1492,1223,1224,1482,1498,1501,1524,1526,1527,1528,917,919,1500,1534,1536,2246,2250,1560,1562,931,935,1239,1236,934,928,929,916,924,2251,997,1222,1483,1472,1232,1234,4593,4595,4590,1260,4562,3882,3883,4563,1249,1256,1257,1235,1238,4601,4584,3356,3580,3581,3582,3583,3836,3838,3872,3873,3874,3833,3841,3844,3845,3846,3847,3818,3824,3828,3829,3587,3591,2240,2243,2245,1537,3611,3609,3612,4596,3870,3272,3843,3880,3287,3288,3291,3310,3311,3594,3270,3268,3269,3281] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [490,149,148,236,681,76,78,365,615,248,611,630,653,656,649,651,629,634,244,364,250,252,123,124,126,128,717,127,75,80,83,1066,688,689,1068,1069,684,1094,1168,1171,1166,1167,1078,1095,1093] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3432,3433,3425,3452,3454,3453,3530,2707,3525,3526,3527,2832,2982,2983,2592,2489,2588,2590,2487,2584,2488,2576,3000,3069,3070,2415,2420,2418,3002,3004,3019,2416,2417,3041,3042,3068,3037,3034,3009,2706,2968,3437,3533,2463,2464,2466,2465,2468,3426,3427,3428] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3426,3427,3428,3429,3057,3059,3430,3690,4183,4182,4189,4184,4197,2426,3670,3398,3437,3533,2462,2463,2464,3414,3415,2466,3669,3689,3676,2452,2458,2459,2465,2436,2468,2444,2450,3667,2636,2638,3721,3987,3411,3412,3413,3421,3422,3685,3691,3704,3707,3708,3719,4113,4114,3682,3684,3425,3530,2592] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1337,1339,1343,1344,1373,1345,1767,1360,1361,1362,1768,1835,1330,1851,1830,706,1062,708,1069,1039,1078,1054,1056,1843,1071,1833,1837,1838,1323,1321,1324,1174,122,252,123,124,126,128,1070,93,96,118,104,127,1776,1375] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1024,1028,1029,1333,1334,1335,1285,1286,1319,1304,1411,1412,1452,1409,1466,1467,1451,1514,1516,1025,1545,1518,1287] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3864,3862,3384,3387,3388,3797,3798,3813,3758,3780,3728,3755,3757,3679,3891,3383,3680,3681,3637,3635,3636,3812,3650,3665] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [478,491,492,637,639,1152,1153,662,661,1109,461,1111,451] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [727,728,765,776,835,837,1129,1130,1132,803,804,726] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2820,2833,2990,2992,2997,3014,3468,3469,2803,3470,2801,2793] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        