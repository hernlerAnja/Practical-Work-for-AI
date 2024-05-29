
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
        
        load "data/5ORH.pdb", protein
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
 
        load "data/5ORH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4101,3752,4104,3705,3859,3828,3872,3788,4078,4079,4053,4593,4052,4077,3873,3903,4618,4619,4620,3718,3721,3831,4054,4612,4667,3723,3725] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4059,4091,4093,4095,4196,3116,3117,3118,3122,3123,3181,4072,4198,4201,4202,4204,3167,3183,3126,3128,3129,3137,3138,3121,3700,3698,3521,3522,3523,4193,4195,4197,3653,3286,3654,3655,3656,3657,3658,3659,3301,3302,3303,3299,3300,3182,3287,3679,3682,3120,3663,3685] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1859,1029,1860,1861,1113,1072,1100,1345,991,993,961,962,1291,1295,1834,1830,1853,1114,1320,1144,1318,1293,1294,965,967] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [423,361,363,364,365,424,359,527,528,1434,1436,1437,1332,1334,1336,1300,895,897,904,762,764,939,941,920,923,924,926,542,543,544,1438,1442,1443,1445,379,898,900,899,378] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [235,237,259,260,236,3486,3529,636,238,814,3476,3477,3479,3480,3485,624,626,627,594,596,597,598,599,633,867,868,869,600,848,601,574] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4032,4362,4072,4202,4203,4204,4048,3167,3129,3138,3141,4060,3302,3319,4228,4229,3157,3159,3378,3147,3154,3145,3146,3150,3384,3414,4355,3148] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3084,3086,3293,3633,3085,3309,3311,3580,3581,3583,3618,3621,3619,3566,3036,3037,3062,3061,3576,3577] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3393,3395,3015,3016,3018,2995,2996,2997,3383,3385,3626,3627,3628,3333,3607,3392,3356,3357,3358,3359] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [821,824,822,823,325,326,859,817,874,807,862,550,551,552,534,327,278,277,810,811,302,303] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5401,2820,5395,5400,5378,4545,2830,3940,2803,5347,5357,4504,4510,4518,4519,4522] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [560,655,397,399,619,395,582,616,617,1461,1462,543,544,1444,408,1445,379,382,1273,625,564] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1207,61,2636,2639,2641,2630,1751,1759,1745,1763,1760,44,48,50] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2928,4243,2966,2956,2935,2937,4277,4275,4249,4244,2940,2945] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [465,488,783,784,504,520,902,905] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        