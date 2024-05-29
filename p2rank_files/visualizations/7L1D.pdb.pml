
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
        
        load "data/7L1D.pdb", protein
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
 
        load "data/7L1D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [238,224,226,227,235,239,1956,1957,215,209,210,211,213,251,255,1718,1937,1916,1917,1918,1925,2763,2766,2651,2647,2650,2788,2789,1926,1936,1927,2686,2689,2690,214,2673,2677,2747,2748,2749,2696,41,42,43,66,68,212,2698,1897,1889,2442,2444,2746,1892,2687,2691] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1664,2310,3058,2323,2318,2349,2337,2338,2346,2352,3027,3035,3018,1678,2350,2321,1663,1679,1964,1965,1665,1966,3059,1530,1531,1532] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3081,577,804,806,807,3078,3074,3088,3089,3077,919,921,3090,3091] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3867,3869,4883,3861,3864,3866,3870,4884,3768,3746,3748,3868,4851,4876,4877,3885,3143] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4235,5966,5967,5968,4422,4423,4424,5717,4057,4405,4403,5716,5718] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4473,4488,4491,4492,4519,4521,4529,4532,3994,4558,4559,4560,4095,4093,4547,4467] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5834,5833,5870,5871,5869,5885,6086,5886,6105,6134,6104] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2664,2666,2667,2757,188,2660,2758,164,167,2508,2511,2644,2645,2649,2495,2496,2494,2505] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3806,5361,5364,5367,5379,5373,5303,3358,3330,3440,3332,3333,3791] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [788,940,3098,599,3128,633] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        