
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
        
        load "data/5M56.pdb", protein
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
 
        load "data/5M56.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3706,4093,4094,4191,4092,4188,4190,4192,3521,3665,3658,3655,3656,3660,3729,4058,4063,4065,4197,4199,3304,3661,3731,3523,3133,3117,3119,3120,3124,3181,3131,3132,3182,3287,3286,3288,4069,4071,3147,3302,3303,3719,3720,3721,3715,3718,3722,344,3686,3699,3703,345,346,3679,3681,3738] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [360,361,362,364,426,365,532,533,931,948,924,926,3099,3100,3101,928,944,370,376,377,378,427,1444,1436,545,547,548,549,903,905,906,1438,1433,1437,1339,1308,1310,951,1303,1338,1435,934,768,1442,1441,960,963,964,965,966,3107,1314,1316,976,967,974,982,983] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3146,3147,3148,3301,3303,3314,3320,3317,3351,3352,3378,3348,3350,3377,3379,3344,3385,3165,3182,4197,4199,4038,4224,4223,4225,3304,4198,3415,4215,3376,3152,3324,3308,3321,3333,3162,3167] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1468,1469,1596,399,401,403,1282,1283,1299,1443,1599,1602,376,381,1444,549,660,382,385,394,398,565] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3396,3629,3578,3579,3016,3018,3019,3021,3354,3356,3358,3359,3386,3387,3393,3002,3003,3342,3360,3361] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3740,4070,3139,4068,4666,4052,4054,4390,4357,4358,4067,4665,4673,4377,4379] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1366,1367,1370,3254,3091,957,943,1360,1363,958,1032,3074,3081,3092,3212,3213,3215] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [336,337,3698,460,457,458,459,498,3712,326,318,319,322,3713,4121,4125,4126,4118,4115,3787] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2935,2947,2954,2963,2942,2944,2952,4290,4293,4312,4237,4239,4244,4246,2964,4272,4270] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1515,187,189,1517,1557,1488,1538,206,208,1482,1484,209,180,199,219,197] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1834,1860,1109,1329,1330,1124,1303,1328,1347,1012,1014,1039] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1313,1315,977,1603,1636,1622,1911,1624,986,1910,1297,1306] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [446,926,3100,3101,3201,942,3202,365,344,346,3697,447,3272,3679,3681,3120] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [603,605,606,824,261,263,240,245,248,640,641] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4084,3769,4589,3879,4102] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        