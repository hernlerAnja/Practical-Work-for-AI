
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
        
        load "data/7A22.pdb", protein
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
 
        load "data/7A22.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2598,2627,2965,2967,2663,2695,2964,748,2597,3255,3262,3263,3266,747,3009,2669,2671,2673,2948,2960,2729,2731,2945,2947,813,815,814,1024,788,740,745,762,711,712,733,734,704,686,702,703,687,1057,2961,1546,1836,1837,1838,1840,1841,1058,1059,1323,2966,2997,2998,3003,769,771,1237,3008,3010,1232,1096,1099,1055,765,766,1256,689,690,1023,1025,1874,1887,1890,1932,1854,1891,1892,1545,1547,1835,1934] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1188,1190,1191,1193,1278,1189,1255,1258,1257,486,489,458,459,1777,1668,1669,1275] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3554,3557,116,3571,3575,3544,3545,5326,2462,2418,133,135,5313,5316,5317,114,115,5318,93,86,5336,5340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [341,3096,3095,3097,348,350,3039,3040,3051,3137,3136,363,368,383,384] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3327,3267,3304,3306,2647,1984,3870,2001,3871,3884,2623,2625,2627,2655] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        