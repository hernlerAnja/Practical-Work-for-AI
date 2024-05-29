
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
        
        load "data/6Q2S.pdb", protein
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
 
        load "data/6Q2S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3415,3416,3395,2318,3534,3536,4065,4051,4055,3403,4067,3535,3537,3371,3373,3541,2316,2340,2342,2491,2493,2469,2367,2462,2466,3561,3545,3381,3382,3550,3576,2349,2346,2465] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [10133,10145,10146,10340,9113,9229,9226,9230,9233,10314,10325,10305,10309,9234,9114,9116,9110,9131,10831,10299,10300,10301,9255,9257,10298,10179,10135,10137,10813,10814,10815,10819,10829,9082,10180,9080,9104,9106,10159,10167] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [9650,9519,9521,9513,9516,9719,9400,9991,9692,9693,9617,9520,9518,9528,9530,9973,9148,9813,9814,9401] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3227,2928,2853,2886,2749,2752,2755,2757,2754,2756,2929,2955,3028,2384,2766,3049,3050,2636,2637,3026,3209] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [8366,9424,8404,9806,9807,9425,9417,9968,8375,8399,8400,8402,8419,8465,9441,9444,9445,9823,9437,9967,8373,9793,9797,9801,9805,8472,9423,9781,8463,8464,9419,8371,8367,8369,8401,8403,8370,8819,9948,9097,9947] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2358,3041,3042,2653,3202,3203,3204,3043,3059,1700,1701,1655,2655,2659,2660,2661,2673,2677,1609,1611,1708,1699,3037,3029,1635,1636,1637,1638,1639,1640,2055,1602,1603,1606,2680,2681,3183,3184] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2373,2374,2375,2376,2377,2395,2396,2369,2372,3347,3314,3350,3589,3590,3591,3598,3274,2368,3576,3377,3575,3573,3345,3346,2394,3282] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [10362,10109,10110,10111,10112,10078,10114,9132,10337,10354,10355,10353,9137,9138,9139,9140,9141,9133,9136,10141,10340,10339,9159,9160,10038,10046,10047,9158] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [8813,8816,8817,8818,8819,9092,9948,10185,9091,10186,9097,9096,8410,8872,8409,10171,10162,10166,9947,8403,8838,8840,9967,9118,9121,10161,8404,9968,8408] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2049,2051,2052,2053,2055,2054,1639,1640,2357,2129,1644,1645,1646,2075,2074,2076,2109,2108,3421,3422,3402,2354,3398,3407,1670,2327,2328] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [12254,12454,12658,12406,12408,12255,12253,12261,11973,12644,11974] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5489,5490,5644,5894,5880,5690,5639,5642,5491,5497,5499] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        