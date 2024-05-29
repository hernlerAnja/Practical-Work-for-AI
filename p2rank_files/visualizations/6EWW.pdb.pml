
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
        
        load "data/6EWW.pdb", protein
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
 
        load "data/6EWW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3827,3836,3855,3826,3854,3824,3835,3834,3884,417,445,446,415,418,452,3188,3187,3189,3192,3346,3347,3348,3156,3159,3160,3158,3546,3162,3165,3167,3168,3164,3195,6954,6957,3544,3545,3565,3567,3800,3803,3798,3820,3821,3822,3823,3843,3791,3847,3576,3536,3542,3541,3552,3558,6991,6990,6992,3793,3796,6996,6975,394,133,136,137,158,159,109,111,6935,3265,3266,114,3322,6939,6940,6934,132,139,156,127,3861,390,391,167,397,427,3170,3315,3287,3288,3290,3311,3289] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [7053,7054,7051,7069,3306,2028,2568,2027,2921,2029,7052,2627,2983,7045,7055,2597,2596,2598,2920,2919,2925,2929,2931,2930,2050,2051,2567,2569,2562,2603,2604,2605,2023,2025,2026,2082,2637,2672,2600,3277] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [6400,6390,6047,6389,6394,6396,6399,6398,7121,7125,5551,7109,7111,5526,7123,7124,5496,6015,6017,6019,6012,6049,5487,5519,5549,5550,6054,6087,6077,6048,6050,5516,5517,5518,5548] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [434,438,6909,1407,6908,411,413,6891,3323,6940,3379,3380,3381,3345,441,475,473,474,6874,6884,6887,6888,6892,3357,6875,3382,3352,3354] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [172,194,200,4020,78,4008,4009,175,4022,4054,4051,4050,196,223,56,17,18,47,3987] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [7063,7064,1650,2083,7060,7074,1614,1616,1613,1615,7068,2084,7026,7029,7046,7025,2172,1673,1638,1639,2171,2108,2109,2110,2111,2134,2135,2131,2079,2086,2090,2091,2143,2142] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3423,3486,3487,3483,3485,3462,3609,615,647,3584,3603] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3546,3162,3165,3166,3167,3168,3164,3565,3567,3800,3803,3798,7003,7005,3136,3827,3824,3187,3189,3156,3158] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3298,3331,3358,3330,3320,1591,6922,1589,1590,3296,3297,3294,6876,6878,6887,1623,6905,1624,1622,1651,7061,7056,7060,1612,7028] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [6981,6982,6983,4696,5074,4697,6999,7000,4337,4305,4307,4336,3740,4335,4705,4707,3731,6997,6998,6987,6994] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6296,6436,6408,6409,6596,6614,6298,6330,6618,6619,6615,6616,6365,6643] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4711,4713,4903,4930,4933,4672,4673,4715,4716,4960,4901,4926,4927,4928,4597,4599,4601,4630,4631] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5241,5242,5243,5218,5337,5365,5359,2317,2319,5335] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        