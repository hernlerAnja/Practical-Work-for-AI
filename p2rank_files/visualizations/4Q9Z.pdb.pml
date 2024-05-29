
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
        
        load "data/4Q9Z.pdb", protein
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
 
        load "data/4Q9Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [138,139,135,136,137,1136,1135,104,157,158,159,728,272,725,288,289,1220,1221,443,562,563,703,701,707,700,285,107,2449,2414,2421,101,2409,2404,2407,2411,2398,779,113,2450,102,1108,1119,1213,1214,1112,755,756,769,770,1109,773,774,777] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3062,3345,3482,3483,3917,3918,3995,2948,2949,3537,5154,5156,5152,2892,2894,5147,2891,2897,5157,5162,5164,2924,2925,2926,2927,2928,2929,2900,2903,3996,3997,3078,3079,4002,4003,3890,3536,3538,3559,3551,3552,3891,3510,5153,5155,3489,3501,3507,3511,3344,3485,3225,3259,3343] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3032,3033,3035,3373,3490,3493,3352,3354,3374,3372,5353,3053,3055,3487,365,3495,3498,3499,3036,3039,3040,3942,353,357,359,361,346,3940,3935] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2916,3169,3172,3170,3171,4026,4000,3077,3079,4001,4002,3091,3092,2920,2923,3902,3861,3193,3194,3200,4017,4018,3191,3192,4024,3999,4019,3224,4015,4016] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [128,389,1244,411,412,1235,1079,1218,1233,1234,1237,301,132,442,1220,126,388,390,387,418,125,127,130,133] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [5038,5039,3493,3352,3354,3314,3317,3981,3982,3942,3498,3951,3940,3934,3931] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2958,2960,5199,5205,5206,5208,5209,2940,3084,3439,3440,3457,3459,2814,2813,2859,2959,3100] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [141,143,149,150,151,2519,142,144,2511,2514,119,120,122,307,308,293,303,334,126,333,114,116,118,2518,5096,5097,5131,5132,3950,5098,335] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [711,1199,571,573,1200,2257,515,1149,1152,1169,1158,532,535] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3681,3682,3685,3680,3653,3655,3678,3656,5060,3687,5078,5077,5056,4949,4960,4962,4950,4919,5055] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3359,3283,3284,3290,5305,3292,5315,3350,3351,3352,3354,3374,3372,3370] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3666,3570,3571,3605,3598,3599,3604,5087,5089,3564,3573,3575,3565,5123,5117,5112,5108] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3763,3764,3789,3791,3797,3790,4078,4281,4282,4283,4284,4840,4844,3767] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1385,1659,1394,1396,1616,1370,1111,772,1094] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [5136,5138,2549,2551,5149,5169,2556,2560,2557,2584,2879,5170] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        