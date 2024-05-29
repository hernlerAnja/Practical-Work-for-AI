
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
        
        load "data/3Q32.pdb", protein
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
 
        load "data/3Q32.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3617,3631,2595,2602,2603,2606,2628,2627,2641,2592,2639,2590,2591,3622,3917,3758,3591,3592,3593,3929,3931,2613,3749,3733,3736,3734,3735,3728,2789,2790,2623,2624,2625,2626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3210,2587,2588,3235,2585,2589,2590,2583,2584,3201,3238,3242,2640,2774,2641,2639,3207,3189,3647,3617,3627,3628,3631,3646,3648,3270,3733,3735,3727,3728,3185,3040,3184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [194,195,196,1202,1203,329,737,140,142,143,756,758,1283,595,739,762,765,798,145,797,1172,138,139,825,1288,789,790,793] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1176,145,1172,1186,150,151,157,158,161,182,180,181,172,1288,1148,1289,1291,1304,179,175,177,178,1313,1283,1290,345,344,361,194,196,184,454,488,416,450,451] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3907,3908,3909,2610,2613,3757,2623,2624,2621,3753,3774,3775,3583,3893,3902,3897,3898,2892,2867,2894,3751] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [917,3829,3828,4059,4058,3827,4065,3515,3516,3517,3831,4748,4733,4737,4744,4066,3490,3480,4712,4723,4731,4732,4728,4071,4688] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [919,923,924,926,2415,2416,936,2414,4695,917,2412,4712,4722,4731,4732,4727,4762] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4104,4501,4652,4654,4656,4506,4294] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        