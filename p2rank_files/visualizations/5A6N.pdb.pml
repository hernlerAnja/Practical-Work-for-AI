
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
        
        load "data/5A6N.pdb", protein
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
 
        load "data/5A6N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [100,103,104,106,97,98,727,724,728,1259,1260,1263,1264,1265,1266,1255,1258,1257,108,109,112,113,1107,1135,1136,753,272,273,154,155,260,705,706,575,274,464,494,116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3484,3487,3488,3489,3490,3482,3479,3481,3483,2309,2951,2929,2799,2311,2365,2366,2471,2934,2678,3491,2485,2798,2952,2317,2320,2308,2314,2319,2323,2324,3359,3360,3358,2483,2913,2708,2709,2930] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1500,1501,1502,1503,1363,1365,3714,3545,3708,3711,3712,3295,3527,3507,3509,3510,3512,3294,3523,3524,3525,1392,1403,3290,3291,3292,1521,1526,3689,3690,1327,1328,1329,1330,1362,1361,1518,3528,2641,3526,1525,1527] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1527,1064,1065,1066,1067,1068,1289,3664,3558,3660,3663,3567,3568,3635,3577,3578,1077,1078,1285,1286,1300,1301,1303,1070,1288,3684,3685,3687,3689] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3580,3584,3591,113,1077,1119,1264,1265,1266,1078,1079,1111,3592,1095,1096,3567,3573,1289,116,120,124,1279,1288] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2612,2608,2611,2613,1305,1309,1310,1311,2531,2571,2529,1312,1313,2628,2631,2641,2638,2624,479,515,478,448,476,477,444] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3505,3512,2484,2678,3503,3504,2485,3484,3489,3490,2331,2324,2327,2643,2647,2677,2504,2330,2503,2605,2606] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [427,3526,3532,3533,397,398,424,415,418,2664,3529,320,345,3534,3535,393,318] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1537,1005,1006,1008,1539,1542,1568,2105,2096,2098,2099,2097,2111,1546] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3736,3724,3726,3228,3229,3230,3236,3237,3232,4285,4280,4283,4284,4286,4292,4294,4298,3733,3734,3722,3723,3755] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [771,1642,1644,1670,3616,769,1101,1102,3626,3628,1109,1112,3617,752] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1439,1441,3325,3327,3831,3326,3830,2993,3867,1430,3857] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        