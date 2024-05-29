
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
        
        load "data/5K0K.pdb", protein
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
 
        load "data/5K0K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6435,6437,6436,6603,6604,6605,4853,6592,4581,4583,4514,4530,4531,4532,4515,4553,5525,5529,5519,4582,4824,5409,5411,4517,5078,5461,5458,5427,5444,5446,5079,6370,6403,5531] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [274,273,275,277,333,334,335,604,2528,2529,2534,278,576,1342,2333,1460,1461,1462,1450,2367,2279,2366,2522,1392,1358] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [5826,5828,7164,7166,7608,7625,7624,7626,3582,3580,3581,5681,5685,3564,3565,3102,3103,5687,5689,5693,5695,3101,1614,1615,1616,7147,7163,1613,7137,7145,7146,5671,3119,3120,3122,1732,1733,1734,1611] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3140,3141,3146,3167,7189,7190,7206,7210,7211,5564,5634,5635,7184,7185,3162,3166,3145,3150,1618,7194,1495,1496,1565,1566] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [5412,5075,5078,6620,4932,4935,4931,5119,5411,6603,6604,6605,4854,6592,6598,6610,6613] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [5598,5597,6520,6521,5912,5988,6517,5911,6518,6519,5800,5842,5787] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        