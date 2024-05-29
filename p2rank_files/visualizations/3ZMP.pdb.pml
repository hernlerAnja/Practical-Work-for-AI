
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
        
        load "data/3ZMP.pdb", protein
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
 
        load "data/3ZMP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1472,4203,4200,4205,4215,4216,4219,1510,1511,3603,3604,4207,3850,3854,3879,3880,3885,4224,1499,1501,3599,3601,2118,2120,1465,1466,1469,2115,2116,2117,2111,2091,1438,1436,1439,1461,1463,3565,4201,3541,2112,2119,2121,3600,3602,3629] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1506,1533,1535,1538,1539,1540,1543,1303,1323,1157,1158,1159,1156,3862,3891,3892,3893,3894,1104,1509,1510,1511,1536,1537,1143,1144,1508,3856,3881,3885,3886,3887,3882,1105,1107,3888,1304,2657,2676,3625,3626,3629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1957,1958,338,1915,176,172,153,154,155,150,1984,1985,4333,4335,1950,1953,1955,185] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4160,4187,3958,3956,4194,4164,4196,3939,3878,3877] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2076,1775,1776,2078,2105,1852,2081,2085,1833,1850,2057,4,5,6,2055] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3423,3424,3608,3645,3197,1784,3606,3611,3257,3258,3256,3194,3255,3402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2261,2269,2270,2256,2257,2235,4303,2237,4056,4059,4061,4062,4021,4063,4064,4278] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1498,1500,1525,2129,1527,3639,3612,3613,3598,3573,3596,3605,3611,3597] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        