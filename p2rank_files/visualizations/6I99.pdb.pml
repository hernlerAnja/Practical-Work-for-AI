
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
        
        load "data/6I99.pdb", protein
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
 
        load "data/6I99.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4850,4645,4646,4647,4877,4541,4539,4540,5702,5703,6387,4559,4557,4565,4566,4574,4878,4879,4880,6630,4602,4605,4876,4586,6657,6414,4621,4575,4598,5330,6439,6604,6605,6438,6440,5331,5614,5602,5603,5329,6611,6623,6626,5174,6627,6617,5650,5692,5632,5647,4543,4544,5698,5753] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [339,340,324,1467,1468,305,1518,351,370,346,641,386,410,411,412,308,306,309,367,323,322,2369,2370,1417,2203,2204,2205,1463,1412,1415,1457,2391,645,2422,1367,1379,615,2179,2152,2190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4606,4977,4986,4990,6884,6889,799,5044,5045,5046,5048,5120,6670,6317,725,783,784,786,785,753,6646,4608,6645] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [5102,5159,6263,5208,5141,5209,5210,6261,6262,6711,6713,5144,865,866,868,925,6715,6709,2474,2475,2476,2477,2479,2480,2478,924,2028,5140,5155,5230,5206] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4320,4325,5418,5064,4328,5191,5192,5131,2608,5142,2604,5145,2609,2632] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [84,49,50,78,974,829,1183,91,903,895,896,6792,6805,907,908,909,6828,846,6827] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        