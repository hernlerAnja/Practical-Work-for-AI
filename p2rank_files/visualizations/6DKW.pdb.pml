
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
        
        load "data/6DKW.pdb", protein
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
 
        load "data/6DKW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [458,460,301,1390,1391,8,37,38,1228,1230,46,48,1229,588,590,619,7,589,609,300,444,842,821,822,823,824,825,826,695,830,820,642,694,688,693,616,620,712,639,848,263,243,244,245,247,844,248,1402,1404,1405,1400,1384,1385,1387,1401,1403,1247,1386,1245,1392,1396,1241,1394,851,852,878,881,1319,1318,1378,887,913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3559,3541,3542,3544,3547,2891,3535,2896,2897,2898,3023,3024,3026,3056,2647,3033,3051,2504,2661,2663,2474,2503,2470,3548,3551,3348,3385,3387,3402,3404,3543,3536,3538,3349,2892,3055,3082,3084,3475,3476,3562,3081,3054,2468,2472,2473,2476,3561,3090,2814,2823,2845,3029,3027,2842,2790,2792,3028] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [587,588,590,805,807,472,552,557,559,7,17,586,589,277,279,466,467,482,454,455,457,463,470,276,278,458,459,460,1390,826,1398,1407,280,281,547] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1911,1939,1940,4035,4036,4037,4045,4009,4001,4008,4010,1915,1768,1778,1666,1703,3682,1767,1769,1726,1727,1728,1934,1928,1698] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1639,1904,1905,1606,2047,1609,1610,2044,2045,2043,2048,2049,1899,1891,1895,1882] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3608,3925,4028,3811,4077,3778,4219,3781,4071] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3409,3411,3408,3723,3724,3725,3702,1801,3701,3583,3589,3596,3595,3636,3587,3577] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        