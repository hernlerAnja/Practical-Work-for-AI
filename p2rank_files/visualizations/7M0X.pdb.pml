
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
        
        load "data/7M0X.pdb", protein
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
 
        load "data/7M0X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [147,148,140,142,143,146,150,2721,1068,1067,149,281,282,1078,1182,1183,1184,164,729,730,732,697,702,1096,1098,1097,693,698,526,1174,1353,3648,1057,1055,1069,1070,1071,1346,1349,3656,155,1345,1040,1079,130,137,138,139,131,134,183,671,670,691,676,184,278,631,266,653,673,648,530,634,649,2714,2717,722,2718,2719,2720,2699,3654,3657,3665,3667,2702,2704,731,733,2722,3647,3649] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3638,3639,2693,2695,3457,2677,2678,2679,3561,2559,3448,3449,3091,3092,3094,3098,3099,3123,2539,2540,2535,2536,2537,2523,2526,2527,2530,2538,2542,2543,2544,2524,2541,2521,2557,2511,2512,2513,2516,2558,3418,3419,3420,3421,3450,3452,3614,3612,3616,3617,3636,1732,1733,3436,3437,3435,3712,1712,3408,3406,3870,1743,3703,3716,3723,3704,3706,3707,3710,1725,1729,1718,1722,3558,3574,3555,3556,3557,3564,3565,3607,3608,3588,3587,3618,3584,3610,3036,3559,3560,3550,3049,3050,3473,3474,3074,2659,2515,3066,3070,3073,3685,3676,3677,3680,3690,1742,3692,3695] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [758,1660,1664,1665,1666,3652,1655,1656,1652,3597,3627,3628,3625,3649,1688,1690,1691,2724,2727,2758,2756,2731,2739,2757,3631,2729,2717,722,3630,755,756,757,2759,3601] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3036,3552,3560,3035,3049,2925,3047,2854,3555,3562,3565,3554,2855,3570,2677] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2954,2643,2639,2328,2329,2327,2358,2359,3060,3063,3058,3536,3056,3059,3489,3504,3502,3503,2917,2929,2930,2312,2313,2335,2332,2333,2334,2298,2887,2892] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [549,649,525,648,1183,1177,1178,526,1174,1206,1193,1195] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1716,1709,1715,1721,1724,3792,3793,3794,3753,3754,3392,3411] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3510,3520,2910,2912,2271,2272,2273,2274,2247,3259,3289,3235,3524,3525,3527,3234,2265] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2479,2567,2569,2472,2475,2686,2687,3011,2432,2433,2434,2430,2455,2585,2471,2668] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [103,272,289,290,611,613,604,85,581,593,605,69,86,89,582,627] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        