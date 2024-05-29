
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
        
        load "data/4USF.pdb", protein
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
 
        load "data/4USF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [767,235,761,763,206,258,204,207,237,1169,1170,787,1146,778,779,780,783,741,764,358,1246,743,768,814,807,836,234,238,208,239,209,233,1270,1273,368,371,372,361,364,259,1250,1267,773,2203] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2451,3021,3369,3493,3496,3014,3017,3393,2450,2452,2453,2454,2455,2456,2457,3490,2475,2474,3392,2590,2592,2593,2594,2975,2977,2580,3489,3469,3473,2427,2428,2429,3041,3035,3039,3042,3048,3043,3002,3013,3001,2998,2995,2997,3011,3012,3007,4477] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3516,994,3517,3867,3518,960,961,962,968,971,2099,2113,2114,2117,2118,2121,574,1214,1215,1216,2122,2124,2106,3087,1023,569,991,992,993,1017,1020,555,1025,568,575,576,583,567,584,3871,3895,3870,3866,3898,3899,3900,3901,2034,2085,2090,2094,3862,3845,3846,2095,2109,3906,1015,2038,1057,3919,3920,3923,3903,3905,3933,3876,3882,3875,3879,3909,2050,2052,3848,3849,4049,4055] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1087,1095,1082,525,1034,1035,1239,1241,1099,527,528,531,533,497,523,1245,1254,498,499,1237,591] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3310,2757,3305,3318,3322,3316,3464,3262,3263,2731,2734,2760,2765,3477,3468,3474] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3519,3520,3523,3504,3505,3515,3867,3896,3571,3895,3874,3828,3567,3569,3553,3584,3585,3932] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1453,1995,1998,2000,1039,1040,1441,1442,1443,1445,1446,1042,1440,2006] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        