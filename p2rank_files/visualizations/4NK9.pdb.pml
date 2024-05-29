
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
        
        load "data/4NK9.pdb", protein
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
 
        load "data/4NK9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [166,204,205,206,163,164,171,174,1118,682,703,328,700,704,167,1193,343,1198,344,453,455,1197,1199,178,181,340,342,1191,1192,486,559,677,561,678,1210,662,1089,1117,175,1103,728,1119,731,720,721] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3759,3891,3899,3900,3674,3742,3756,3741,3747,3749,3890,3894,3887,1758,1762,1763,1764,1765,3898,3905,1769,1541,1544,1761,1542,3901,1581,1626,1629,1612,1754,1755,1617,1776] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2713,3244,3245,3246,3317,2485,3323,3324,3325,3335,3336,3318,2605,2312,2313,2316,2317,2322,2358,2360,2305,2306,2309,2856,2874,2853,2830,2636,2637,2481,2483,2484,2604,2714,2835,2831,2469,2359,2308,2815,3216,2877,2884,3230] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3846,3868,3876,3750,3751,3809,3810,3893,3444,3445,3446,3439,3646,4026,4028,3616,3469] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1620,1621,1675,1740,1750,1755,1757,1904,1486,1708,1483,1345,1322,1516] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2889,2927,2928,2929,3043,3044,3077,3693] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        