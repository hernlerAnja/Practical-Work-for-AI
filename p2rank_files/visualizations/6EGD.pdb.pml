
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
        
        load "data/6EGD.pdb", protein
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
 
        load "data/6EGD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1193,1269,806,1194,798,799,828,830,867,870,249,840,878,775,778,786,1169,1170,807,1177,1270,247,248,254,255,301,302,303,250,253,252,773,205,204,206,634,404,405,751,754,750,748,749,389,258,261,271,1275,1278,1276,753] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [2949,2359,2401,2404,2405,2406,2407,2897,2891,2997,2358,2360,2441,2528,2867,2870,2878,2894,2868,2872,3312,3313,2899,2917,2918,2919,2947,2921,2959,2462,2463,2892,2905,2428,2440,2403,2409,2412,2413,2414,2415,2421,2442,2540,2543,3296,3389,3390,3394,3388,3397,3288,3289,2925,2926] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1660,1661,1686,1650,1646,1655,3514,3515,3516,1476,1675,1677,2014,4140,4142,1684,1685,1712,2012,2013,1674,3512,3486,3483,3493,3531,3490,4128,4143,4151,4148,4159,3527] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [2425,2426,2561,2542,2543,2669,2423,2422,3395,3396,3397,3410,3261,3278,3419,2632,3418,2606,2629] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        