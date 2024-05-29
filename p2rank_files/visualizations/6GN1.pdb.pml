
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
        
        load "data/6GN1.pdb", protein
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
 
        load "data/6GN1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3462,3463,3460,3233,4024,4025,4028,4022,4023,3087,2978,2922,2928,2976,2977,2957,3914,3925,3918,2959,2956,2958,2960,1776,1777,2929,3917,3513,3501,2923,3913,3942,3487,3306,3307,3941,2925,3074,2927,3478,3494,3493,4029,3089,3091,3200,2954,2955,4031] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [233,364,349,737,253,200,202,251,252,755,757,759,762,742,199,229,230,231,1303,1217,1298,582,1216,1297,1299,1300,738,1306,1190,1193,1188,1200,788,775,776,768,769,773,774,198,204,4501,232,234,235,508] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [383,696,238,240,245,246,370,373,214,374,375,4717,237,193,194,264,213,4257,4274,4264,4273,4265,218,4147,4143,4141,4142,4288,4276,680,698,387] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3389,3439,3100,3371,3372,3081,3082,2748,2880,2879,2747,2985,2987,2988,2989,2903] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [820,825,1235,1238,778,779,781,824,917,950,951,860,861,862,924,986,947,2476,949,987,1237] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2962,2963,2970,2971,2939,3421,1418,1422,1410,1424,2943,2938,3423,1563,1416,1417,1549,1412,3099,3098,3100] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3549,3550,3585,3586,3587,3671,3675,3962,3672,3674,3676,3963,3960,3712,3575] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [357,647,153,23,155,22,356,714,664,665,646,260,259,263,264,178,262,375] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4740,4741,4568,4570,4605,4533,4539,4270,4272,4656,4538,4609,4536,4611,4612,4718,4733,4734,4735,4717] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3900,3915,4178,4211,4212,4197,4199,3529,3531,3527,4414,4457,3909,3910] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1091,2317,1097,1065,1593,1597,1595,2618,2617,2305,2308,2310] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        