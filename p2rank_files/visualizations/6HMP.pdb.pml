
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
        
        load "data/6HMP.pdb", protein
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
 
        load "data/6HMP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [383,209,112,113,114,115,116,1085,1086,2178,2193,2194,2197,138,1937,2181,2198,2200,244,247,249,1117,1049,381,382,208,210,389,412,391,392,408,1083,147,414,416,1130,1134,1135,1972,1136,1133,1152,1222,1174,1175,1922,1971,1923] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [6893,6894,6618,6877,4924,4926,6889,6896,4845,4925,4842,4843,4844,4941,6890,5140,5138,5315,5383,5734,5136,5107,5115,5132,5730,5105,5113,4867,4876,6667,6668,5834,5850,5832,5833,5831,5815,5828,5772,5774,5384,5872] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2399,2332,2396,2315,7244,7245,2401,1713,1714,1728,1729,2334,2875,2877,4025,4026,4027,4028,4029,1715,7230] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [8549,7098,7100,7578,8545,8547,8541,7009,7027,7135,7025,7097,7576,8520,6412,7029,7011] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [6684,5859,5860,5932,9018,9014,9016,9041,6700,6705,6775] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        