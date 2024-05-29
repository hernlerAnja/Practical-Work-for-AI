
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
        
        load "data/7P7H.pdb", protein
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
 
        load "data/7P7H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1884,2034,2037,2038,2010,2011,2012,4433,1877,1881,1882,1871,1874,1885,2033,2050,2046,1524,4282,1435,1434,1853,1854,1856,4241,1850,1852,1866,3856,1442,1443,1467,1875,1889,1891,1892,3824,4423,4425,4426,4427,3821,3823,4422,4239,4243,4232,4439,4273,4435,4400,4270,4271,4255,4260,4263,4266,4280,4281,3832,3831,3913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [108,120,123,114,119,110,653,657,1056,683,637,645,1025,1026,1036,132,1014,615,616,620,112,162,254,160,161,163,640,634,638,639,998,1154,1155,1158,1159,1161,1152,1153,124,127,133,137,270,271] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3042,3072,3443,3444,3445,3539,3541,3542,3414,3029,2776,2658,2660,2552,3005,2513,2550,2506,2508,2509,2643,3023,3026,3027,2497,2503,2551,2499,2501,2504,3028,3009,2549,3003,3034,3543,3544,3547,3549,3425,3548] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1402,1774,1775,1815,1398,1399,1401,1414,1388,1700,1701] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [124,127,133,137,998,1161,132,1014,1183,1374,1379,1387] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3839,3841,3810,3846,3848,4170,4171,4173,3760,3753,3756,3836,4172,3771,3782,3779,3769,3770,3762,3767,3768] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4271,4255,4273,4297,3824,3975,3977,4424,4425,4427] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        