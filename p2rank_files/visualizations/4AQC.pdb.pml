
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
        
        load "data/4AQC.pdb", protein
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
 
        load "data/4AQC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3875,3865,3742,3704,3852,2665,4022,2671,2679,2685,2701,2705,2687,3874,3733,4047,3732,4023,4026,4029,4030,4031,2657,3867,2994,4020,2881,2882,3850,3851,2725,2663,2695,2709,2710,2899,2653,2656,2953,2991,2956,3033,3001] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3336,3338,3764,2866,3307,3310,2644,2645,2650,2651,2724,2646,2648,2723,3301,3335,2649,3843,3844,3849,3763,3851,3140,3285,2725,3289,3728,3342,3370,3742] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [125,128,1310,1315,179,181,1317,782,783,1221,1222,737,180,314,749,751,755,758,127,588,730,733,1186,124,130,790,791,786,826] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [920,924,925,926,2144,2454,2456,2453,2450,916,4815,3943,3944,4174,4175,4806,935,937,919,4828,4843,4844,4847,4848,4849,4839,4804,4183,4187,4877,4878,928,4811,4180,4181,3618,3619,3620,4182,4176,3906,2452,3947,4860,4853,4856,3583,4864] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [442,1333,1357,439,440,405,165,347,330,329,401,481,162,1341,1476,1477,1478,1480,150,154,160] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [337,338,708,709,189,190,45,88,70] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        