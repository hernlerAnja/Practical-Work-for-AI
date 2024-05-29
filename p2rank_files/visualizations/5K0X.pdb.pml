
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
        
        load "data/5K0X.pdb", protein
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
 
        load "data/5K0X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [372,641,1338,2498,2497,312,314,370,371,315,613,1373,1371,337,352,2302,2502,2503,2501,310,311,328,329,334,2335,2336,1088,1391,2334,2491,1388,1446,1354,1385,1452,1457,1458,1456,2269] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [6488,6489,5496,5527,5530,4830,4509,4511,6487,5148,6644,4587,4588,4589,4858,4859,5478,5480,6650,6458,6463,6651,6654,6657,4524,4525,5594,5598,5600,6436,5588] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [5481,6650,6642,5004,5005,6226,6227,5056,5058,6311,6627,5147,5144,6630,5130,5188,5184,6346,6347,6348,6349,6350,6653,6651,6643,6652] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3091,3112,3116,3117,3118,3096,3090,7221,7222,7238,7241,7242,7243,7216,7217,1613,7226,3095,3100,5631,5633,5634,5703,5702,1560,1561,1491,1492] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2532,678,945,2512,2531,2530,899,641,642,850,852,848,1303,1339,1302,845,944,907,908,911,851] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [5759,5761,5763,3070,1609,1612,1613,7179,1610,3527,3528,3529,3511,3043,3526,3051,3052,3053,7653,7654,1608,7637,7655,5755,5757,5894,5896,7196,5753,7198,3069,3071,1597,1606,1728,3072,1727,1729] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4858,4860,5444,5480,5481,5004,5005,5445,4911,4912,4909,5190,5191,4905,4910,4971] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [641,642,1338,2498,2497,2532,945,2512,2531,1339,1302,2503,1087,2491,2517,2519] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [7302,7311,7332,2272,1560,7288,7301,1489,1491,1492,2270,1505,3117,7241,7242,7243,7244,6700] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        