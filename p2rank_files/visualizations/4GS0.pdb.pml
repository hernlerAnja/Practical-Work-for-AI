
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
        
        load "data/4GS0.pdb", protein
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
 
        load "data/4GS0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [702,703,704,738,739,445,446,447,494,492,495,479,695,718,245,279,280,478,491,269,270,277,268,724,727,728,729,731,730,1088,1089,1098,1097,772,438,720,2626,1074,2845,2876,2593,2594,2875,3247,3246,2429,2846,697,700,2422,2423,2420,2421,2843,705,2836,2840,2860,2861,2865,2866,2867,2868,3237,3238,3217,3223,2431,2432,2639,2625,2630,2638,2642,2592,2641,2397,1068] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3612,3623,3625,3627,3906,3907,3628,3630,3605,4436,4218,4437,4438,4439,4449,4252,4228,4229,4440,4448,4221,3905,3088,3107,3086,3106,3061,3071,3073,3065] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3985,3987,4345,4347,4349,4021,4372,4373,4406,4407,3991,3992,3718,3719,3720,3721,3998,3990,3744,3747,3785,3684,3686,3685,4371] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [964,1473,1475,1474,1761,2123,2084,2100,1471,1747,1739,1743,340,310,309,1741,1760,2086,2092] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1603,1544,1606,1579,1885,1580,1850,1851,1855,1886,2216,2218,2220,1856,1857] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [710,711,668,524,522,275,525,673,712] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        