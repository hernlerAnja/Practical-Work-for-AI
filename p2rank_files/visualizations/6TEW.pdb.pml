
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
        
        load "data/6TEW.pdb", protein
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
 
        load "data/6TEW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2623,2625,2639,2875,2624,2670,761,762,763,633,634,635,650,651,657,659,660,681,682,2669,637,1823,1835,1838,1824,1860,1868,1876,638,2668,1882,1839,1840,1874,2891,2892,2894,2872,2887,2888,1007,1788,1789,1787,736,1005,1006,972,1786,971,973,2874,1493,1494,1495,1784,1785,1802] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2924,2925,2930,2935,2936,2937,1184,1185,2894,2893,1007,1271,1180,712,713,710,714,736,735,1006,1047,2559,2588,2623,2625,682,688,692,693,659,660,681,2558,3189,3190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1203,1205,1206,1725,1223,1136,1140,1141,407,1226,437,406,434,1616,1617] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3063,3064,2965,2966,2967,2978,3022,3023,3024,289,296,298,311,315,316,350,330,332,1162,1163] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [74,75,5237,5238,5239,73,49,52,45,50,5142,5234,2424,3481,5247,3498,3502,3471,2380,94,39] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3797,3798,3811,3231,3233,1944,1946,2586,3254,3194,2584,2585,2616,2588,2620] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        