
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
        
        load "data/8GUY.pdb", protein
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
 
        load "data/8GUY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10867,3584,3585,3587,10844,10846,10863,10865,10637,10875,10877,10878,3623,10638,10368,4564,10570,10572,10623,10636,10624,10564,10622,3376,3605,3608,3609,3614,3616,3615,3575,3577,3586,3621,4557,4560,4561,11075,11076,11077,11078,11066,3081,11114,3386,3387,12052,12055,3374,3372,3146,3147,3353,3355,3131,3132,3133,2877,3073,3079,11096,11099,11100,11105,11107,11106,11068,11112,12048] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [783,785,770,904,769,863,1100,864,902,1436,982,874,876,961,962] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.482,0.902]
select surf_pocket3, protein and id [546,302,277,518,158,278,570,594,629,618,373,375,619] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.337,0.702]
select surf_pocket4, protein and id [13967,13753,13847,13969,13970,13578,13751,14042,14043,14193,13738,13739,13740,13741,13742,13743,13747,13954,13955,13963,13576,13579,13594,13596,13950,13597] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.388,0.902]
select surf_pocket5, protein and id [6260,6551,6552,6700,6702,6262,6478,6247,6249,6250,6252,6256,6356,6127,6103,6104,6106,6464,6476,6459,6460,6087,6248] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.298,0.278,0.702]
select surf_pocket6, protein and id [3668,3665,3673,3677,3433,3434,3431,3426,3435,4553,3612,3644,3687,3676,4607,4609,4610,3694,4612,4614,4549,4551,4557,4571,4588,4591,4602] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.427,0.361,0.902]
select surf_pocket7, protein and id [10924,12040,12042,12044,10925,11103,11135,11137,11139,12093,12098,12100,12082,12048,12062,12069,12079,11168,11167,11159,11164,11178,11156,12103,12101,12105] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.369,0.278,0.702]
select surf_pocket8, protein and id [8602,8399,8410,8607,8993,9031,9029,9030,9037,8997,8603,8402,9146,8983,8985,8998,8980,8397,8398,8400] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.522,0.361,0.902]
select surf_pocket9, protein and id [1111,918,919,1538,1539,1540,1546,1548,908,906,911,907,909,1655,917,1654,1651,1112,1115,1116,1506,1502,1489,1494,1507] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.443,0.278,0.702]
select surf_pocket10, protein and id [2692,12852,2679,12851,12853,745,754,2701,2718,742,743,2717,2513,737,1166,1169,756,2690,2674] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.620,0.361,0.902]
select surf_pocket11, protein and id [10209,10014,8233,8234,8236,10004,10192,8657,8660,8245,8247,5360,5361,5362,10170,8228,8677,10165,10167,10181,10183] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.518,0.278,0.702]
select surf_pocket12, protein and id [4847,5635,5655,5894,5707,4861,4844,5636,4792,5729,5704,5019,5020,5637,5705,5730] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.714,0.361,0.902]
select surf_pocket13, protein and id [4546,4559,10379,10378,4540,5320,3624,3625,5350,10644,10645,10646,10660,10663,5329,5330,10175,10377,5294,5351] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.592,0.278,0.702]
select surf_pocket14, protein and id [12352,13221,12335,12338,13196,13198,13146,13128,13126,13127,12510,12511,12513,12283,13385,13195] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.808,0.361,0.902]
select surf_pocket15, protein and id [11780,11786,11788,6910,6911,6958,6959,6960,6961,6962,6930,6922,6934,11769,11393,11395,11423,11427,11429,11391,11411,6906,11416,11404,6907,6908,6909,6902,11794,11799,11800] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.667,0.278,0.702]
select surf_pocket16, protein and id [11452,12870,12872,11421,11422,6793,12908,6755,6785,6942,12907,12873,12050,11419,11420,11449,12096,12065,12066,12067,6784] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.898]
select surf_pocket17, protein and id [10866,3584,3587,10845,3583,11074,11075,11078,3104,3375,3354] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.663]
select surf_pocket18, protein and id [3580,10845,3572,10574,10576,10594,10595,3583,3563,3564,3568,11071,11074,11075,11054,3104,3354,11055,11056,11059] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.804]
select surf_pocket19, protein and id [4278,7339,3902,3904,7286,7283,7284,7299,4289,7336,7337,7338,4307,4308,4297,4298,4303,4304,4295,3913,3920,3900,3936] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.588]
select surf_pocket20, protein and id [6952,6976,12937,12938,527,529,795,802,803,805,804,1000,12900] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.706]
select surf_pocket21, protein and id [5332,5335,8683,8687,5356,5357,5359,5361,5362,10192,8657,8660,8667,8650,10183,10182] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.514]
select surf_pocket22, protein and id [13610,13719,13612,13478,13479,13480,13469,13623,14147,13481,14061,14062] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.612]
select surf_pocket23, protein and id [11509,11510,12004,11643,11644,11490,11614,11163,11615,11625] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.439]
select surf_pocket24, protein and id [1961,1960,1795,1797,1969,1971,41,23,22,221,55,56,44,51,1986] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.518]
select surf_pocket25, protein and id [785,770,904,769,594,875,652,502,863,874,876] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.365]
select surf_pocket26, protein and id [742,2706,1172,950,2717,2735,2736,2737,2734,2529,744,1164,1147,1163,1148,1160,1162,2702,1170,947,948,714,941,2728] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.424]
select surf_pocket27, protein and id [3959,3961,4605,4574,4575,4576,7161,3929,3930,3931,3928,4558,5379,5381,4541,4559,4566] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.294]
select surf_pocket28, protein and id [5416,7133,7163,7319,5382,7320,5408,7346,5406] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.392,0.361]
select surf_pocket29, protein and id [6121,5978,6132,5987,6228,6571,6119,6570,6656] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.341,0.278]
select surf_pocket30, protein and id [5379,7170,5416,7132,7319,5381,5382,5415,5417,7161,3929,3930,3931,3928,7162] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.486,0.361]
select surf_pocket31, protein and id [8638,8639,8441,10226,10227,10228,8433,10225,8233,8235,10020,10208,10193,8661,8663,8423,8428,8432,8438,8439,8205,10197] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.416,0.278]
select surf_pocket32, protein and id [3671,3672,4513,4635,4121,4123,4117,4511,4512] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.580,0.361]
select surf_pocket33, protein and id [8083,8085,7768,7769,8009,8120,8061,8109] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.490,0.278]
select surf_pocket34, protein and id [6942,6756,12907,6943,12936] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.675,0.361]
select surf_pocket35, protein and id [7407,7411,7412,7413,7385,7805,7813,7448,7383,7435,7602,7604,7605,7608,7794,7447] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.561,0.278]
select surf_pocket36, protein and id [1192,1196,1168,1176,1167,12826,2691,2692,12850,12852,12853,2701] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.773,0.361]
select surf_pocket37, protein and id [5446,5447,7329,8018,8020,8293,8294,8286] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.635,0.278]
select surf_pocket38, protein and id [7934,8143,7956,7958] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.867,0.361]
select surf_pocket39, protein and id [10983,11005,11006,11017,10834,10602,10798,10809,10832,10607,10975,10819,10820,10828,10817,10818] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.690,0.702,0.278]
select surf_pocket40, protein and id [7006,7008,309,314,303,311,7030,7035,7036,7070,113,114,117] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.839,0.902,0.361]
select surf_pocket41, protein and id [6853,6969,6968,6999,6997,6936,6856] 
set surface_color,  pcol41, surf_pocket41 
   
        
        deselect
        
        orient
        