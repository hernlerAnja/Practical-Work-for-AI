
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
        
        load "data/2OFV.pdb", protein
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
 
        load "data/2OFV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2653,2656,2660,3036,3118,3119,3120,2630,3035,3037,2652,2661,2647,2631,3116,3117,2202,2315,2318,3105,3114,2604,3101,2379,2589,2484,2605,2483,2408,3102,2621,2623,2625,2149,2638,2627,2303,2586,2609,2146,2147,2684,2150] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1074,1155,1157,1160,689,1072,1073,664,686,186,1156,1158,717,343,656,658,660,663,242,185,187,189,190,519,714,410,438,342,619,622,638,637,358,359,346,351,355,243,347,1154,437,439,518,693,694,1146,1141,1142,1144,1145] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2475,2898,2433,2477,2945,2946,2400,3102,3106,3108,3098,3099,3162,3163,2481,2483,3092,2474,2406,2408,2402,3105,2379,2376] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [464,430,1132,1146,1138,1139,1140,1142,1145,1148,509,510,512,410,438,407,408,437,439,516,518,435,433,1135,982,1000,1002,983] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [289,291,292,286,287,288,543,544,542,546,548,337,95,555,631,322] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        