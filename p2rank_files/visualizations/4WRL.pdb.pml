
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
        
        load "data/4WRL.pdb", protein
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
 
        load "data/4WRL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1382,1573,1575,1574,1590,5925,1341,5280,5279,1363,1359,1364,5937,5935,1153,1155,5926,5931,1346,1351,1354,1355,1358,1178,1339,1589] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3237,4770,4771,4772,4797,3057,4798,3050,4750,4716,4703,4706,4710,4744,4707,4708,3059,3056,3071,3073,3216,3217,4746,4743,4764,4742,4745,4807,3235,3236,3215] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4877,4531,4558,5198,5254,5215,5229,4897,4907,4909,5237,4916,4886,4884,4898,4899,4874,4556,4557,4559,4560,4563,4565,4567,4927] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [5870,5871,5872,1162,982,5897,977,5844,5803,5808,984,5810,5816,5850,981,996,1141,1142,1160,1161,5907,1140] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [5631,5970,5658,6357,5980,5985,5988,6311,5989,6325,6329,6318,6323,5992,6327,6331,6337,6326,6328,5657,5688,5660,5663,5665] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [5710,5711,5708,5709,5744,919,1186,1187,5919,1176,5929,5719,951,936,937,950,1188,928,5687] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1845,1861,1862,1932,2054,2056,2036,1928,1930,1931,2053,1843,2037,1524] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        