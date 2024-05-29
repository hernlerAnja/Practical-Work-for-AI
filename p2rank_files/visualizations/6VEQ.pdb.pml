
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
        
        load "data/6VEQ.pdb", protein
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
 
        load "data/6VEQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3507,3508,3514,3515,3516,3517,4055,4056,4109,3484,3485,1882,1883,2084,2909,2952,2953,1974,1975,1967,2904,3469,3540,3550,3551,2741,1881,1959,1956,2109,4070,2085,1889,2092,1897,2108,2110,2106] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [7699,7700,7702,6173,6176,6177,6106,6099,6114,7693,6100,6098,8249,7701,7725,7654,6926,7734,7736,7692,7669,7137,7138,6191,6192,7136,6184,7089,7091,7094] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [6436,4526,4538,4519,4521,4523,4695,4696,6444,6446,4522,6269,6270,6271,6272,6273,6293,6294,6196,4940,4703,4932,6227,6232,6311,6223,6218,6212] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2219,486,712,714,723,2000,2001,1995,321,302,304,305,478,715,2229,2218,2225,2227,2053,2054,2055,2056,2052,2076,2077,1972,2094,1978,1979,1992,2235] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [5535,5536,5541,5542,5544,5832,5833,5677,5675,5676,5678,5537,5719,5634,5658,5633,5636,5672,5573,5661,5556,5575,5577,5583,5635,5569,79] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1615,1358,1441,1462,1458,1319,1356,1366,1350,1616,1416,1419,1417,1418,1444,1339] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        