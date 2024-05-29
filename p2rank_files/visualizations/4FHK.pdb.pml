
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
        
        load "data/4FHK.pdb", protein
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
 
        load "data/4FHK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4669,4680,4681,4702,4703,4704,4705,4706,4842,4844,4845,4859,4858,4942,4226,1044,3561,3562,3513,3514,3515,3516,3517,3518,3199,3200,3203,3211,449,450,3482,3483,4241,3241,4671,4865,4862,4875,4227,4648,3213,1005,1003,4770,4768,4769,4701,4734,4738,4739,3212,4735,4737,1038,1039,1042,999,1000,1004,1031,1033,526,501,502,480,3179,464,476,478,1001,1006,465,4727,4729,4731,4732,4733,4728,1068,1069,1070,4807,4796,517,518] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5573,5576,4574,4949,4352,4415,4554,4932,4937,4933,4351,4393,4851,4951,4955,5487,4954,4640,5569,4852,4853,4854,4855,4856,5565,5567,5568,4363,4364,5471,5460,4987,4992,5488,4978] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [895,896,897,4206,3823,3824,3825,4205,3797,3799,3472,3789,3790,3792,1167,1196,3474,1205,3791,3502,4246,4247,4204,4268,4270,430,893,894,429,915,917,411,412,1168,3468,3469,3476,428,3470,906,4251,4248,4250] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2124,1482,1473,3017,3018,3019,3020,3021,3030,3013,6042,6011,6043,3007,6074,6102,2446,2681,2716,2717,2691,2692,2689,2478,2479,2715,2447,2982,5986,3032,2713,2457,2451,2453,2461,2467] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3155,3186,3187,3188,478,479,480,2945,2932,2941,2947,2928,4745,4738,4739,4735,4737,4777,4770,4768,4769,3224,5959,5962,2939,2948,2938,2940,5936,5938] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [5580,4664,6062,5602,5604,5605,5606,6035,6091,6005,6090,5399,5407,5414,6027,5405] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6054,4603,4604,6057,3617,6046,6047,3295,3595,4620,4621,3623,3624,2131,2145,2144,3637,3613,3620] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6421,5005,5034,6419,5036,5083,5006,5447,5448,5455] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2177,2181,187,189,2173,190,198,2011,169,3669,221,179,216,3344,214,211,1923] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [973,1025,595,708,711,968,1060,562,495,563] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [448,450,3483,4241,4250,906,885,887,1016,4251] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [922,420,928,931,932,842,395,767,828,821,824,387,1161,741,739,744,745,740,934,935,937,946] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3310,3319,3679,2174,2175,3343,3678,3648,3650,2168,2170,2176,3634,3671,2180] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        