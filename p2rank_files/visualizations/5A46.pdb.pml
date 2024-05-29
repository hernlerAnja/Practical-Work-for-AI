
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
        
        load "data/5A46.pdb", protein
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
 
        load "data/5A46.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3946,3889,1837,1838,1839,1840,3956,3973,3974,3957,3971,1620,1830,1833,1836,1705,1688,1693,1702,1716,1844,1812,4102,3886,4104,4108,3962,3964,4107,4115,4120,4123,1677,1704,4083,4109,4110,4111] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [706,484,516,589,587,1260,363,364,365,366,705,173,350,710,728,717,171,175,215,217,216,177,170,176,182,179,1166,1165,731,732,749,1136,1150,1243,1249,1242,1250] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3008,3386,3495,3496,2420,2426,3416,2998,3001,3485,3488,3489,2588,2423,2966,2971,2980,2476,2601,2477,2475,2419,2425,2421,2424,2838,2955,3415,2959,2602,2604,2724] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3861,3659,3660,3661,3828,3831,3684,4103,4242,4244,4245,3965,3966,4020,4054,4078,4101,4096,4091] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2603,2604,3519,2695,2700,2723,2688,2689,2690,2694,2667,2477,2460,2462,2608,2701,2458,2459,2447,2449,2450,2620,2438,2439,2442,3518] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1825,1807,1820,1696,1784,1592,1562,1559,1398] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2757,2836,2838,2955,3415,2756,2602,2604,2724,3506,3507,2601,3485,3488,3489,3495] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3554,3361,3362,3363,3352,3770,3771,3349,3350,3687,3688,3648] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3678,3632,3633,3900,3629,3391,3024,3025,3617,3603,3604,3613,3387,3388,3389] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1341,1366,1368,1141,1340,1631,774,775,1354,1137,1139] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4194,4195,4228,4164,4201,4376,4377,4378,4403,4346,4308,4191,4190,4192] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        