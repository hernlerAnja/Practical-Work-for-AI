
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
        
        load "data/5CNN.pdb", protein
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
 
        load "data/5CNN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [176,1112,1126,1127,1222,164,170,171,1229,1230,368,369,175,179,180,747,748,772,165,167,168,215,352,1141,1142,713,580,582,1221,711,699,214,216,365,694,693,695,716,740,1089,1113,1115,1116,1117,183,187,1090,1298] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3576,3177,3181,3182,3546,2580,2581,3206,2784,2785,2786,3664,2612,3560,2633,2605,2590,2591,2592,2593,2596,2619,3174,3656,3655,3657,3658,3665,3668,3662,3663,3686,3133,3151,3575,3145,3147,2769,2782,2632,3035,3129,2778,3110,3128,3111,3113,3134,3130,2582,2584,2585,2631,3016,3017,3015,3033,2953,3150,3158,3173,3549,3524,3550,3551,2597,2600,3523] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [254,255,256,257,258,259,260,261,262,72,50,52,605,606,607,609,611,112,347,346,687,71,73,612,697] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3400,4462,4463,3394,3397,3398,3399,3421,3458,3396,3426,164,153,4819,4820,4821,2993,4814,3002,3004,150,152,3428,2987,2994,158,157,163,4429,4432,4433] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2763,2764,3043,3039,3041,3121,2672,2674,2675,2676,2677,2678,2679,2489,3046,2469,2490,2749,2529,3040] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4434,1115,1116,1117,1327,1283,1284,764,1548,763,1598,1600,4447,1606,1312,1313,1328,1609,1311,1293,1599,1591,176,180] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [160,226,3430,3432,3465,3466,3467,2976,2962,2964,135,227,207,209,375,376,377,378,131,132,2963,3460,3461,3462,208] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [595,601,695,512,579,1239,1241,677,679,516,513,1221,1229,1223] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3217,3254,3604,3605,3314,3316,3318,3317,3614,3215,3355,3282,3286,3252,3313,3315,3276,3277] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [782,783,1170,1171,880,883,884,1180,879,881,817,818,820,852,848,842,843] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1598,1600,1602,4447,1606,1313,1328,1315,1623,1630,1636,1637,1642,1314,4379,4380,1643,1649,1653,1601,1628] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3512,3514,3691,3692,3721,3509,2613,2615,3743,3782,3744,3844,3736,3845,3865,3866,3867] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1704,1747,1897,1899,1620,1752,1512,1478,1703,1481] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3958,4066,3924,4338,4339,4341,4342,4340,3927] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        