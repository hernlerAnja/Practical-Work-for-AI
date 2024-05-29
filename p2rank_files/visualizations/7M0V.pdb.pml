
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
        
        load "data/7M0V.pdb", protein
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
 
        load "data/7M0V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2680,2681,2682,718,719,1054,128,129,132,133,123,124,125,134,117,120,656,716,677,1055,1056,1339,1369,3609,706,707,708,1057,1335,3608,3614,3616,1065,1053,1082,1083,1084,1160,1163,136,150,268,1168,1169,1170,267,168,169,170,252,264,634,620,635,633,659,662,663,657,516,639,512,1041,1042,1043,1023,1025,1064,140,1355,2659,2673,2674,2677,2678,3590,3617,3612,1652] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3568,3572,3598,3520,3521,3599,3396,3408,3410,3417,3418,3594,3595,3596,3601,2497,3397,2495,2496,3655,2638,2639,2522,2486,2487,2489,2490,2493,2501,2502,2505,2483,3576,3577,3366,3378,3379,3380,3381,1698,1704,1719,3604,1711,1715,1727,3659,1729,3664,3683,3670,3672,1708,1710,3525,3533,3518,3514,3515,3516,3517,3522,3567,3547,3537,3544,3578,3570,2791,2995,2996,3009,3010,3512,3530,3531,3532,2815,3542,2897,3007,2886,2885,2814,3621,2498,2500,1728,3636,3637,3640,3650,3654,3647,3649,3651] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2638,2639,2521,2522,2475,2486,2487,2489,2490,2482,2483,3051,3083,3084,2476,2478,2479,3408,3409,3410,3417,3058,3059,3521,3434,3433,3034,3014,3030,3033,3010,2619] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2689,2717,2718,2719,1652,741,742,744,1636,3590,3588,3612,3557,3587,3591,2677,2687,2684,1664,3585,1674,1677,1646,1638,3562,3584,3586,1676,1650,1651,1657,1356,3609,707,708] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2889,2890,3017,3018,3019,3496,3023,2303,3015,3449,3478,3479,3463,3464,2276,2301,2302,2304,2297,2298,2265,2266,2267,2268,2848,2296,3020,2914,2603,2598,2327,2294,2295,2328,2282,2852,2281,2877] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [264,634,620,635,633,537,535,512,511,1169,267,1164,1192,1163,1179,1181] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        