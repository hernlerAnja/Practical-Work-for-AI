
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
        
        load "data/3EQR.pdb", protein
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
 
        load "data/3EQR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [178,526,643,127,648,298,299,123,125,130,660,128,179,644,311,627,524,131,136,177,133,314,315,422,1167,449,629,630,142,124,690,1045,683,686,1150,1151,1055,1056,1074,1075,1076,527,662,665,666,1153,1156,1158,1054,1059] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2300,2292,2293,2299,2897,3290,2296,2347,2468,2469,2466,2467,2874,2294,2346,2297,3365,3367,3372,2480,2483,2484,2476,2840,2302,2304,2305,2310,2311,2348,2904,3259,3268,3273,3363,3364,3381,2738,3383,3289,2740,2663,2664,2858,2857,2876,2879] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4006,4013,4012,3832,3863,3865,1708,1709,1711,1712,3845,3829,1420,1735,1737,3828,3866,3766,3827,4025,4026,4010,4011,1710,1742,1743,1745,1780,1781,1772,4016,4017,4032,3991,3986,3939,3940,3855,3857] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1323,1332,1337,1340,1449,1343,3836,1344,1290,1446,1469,1360,1362,1424,1414,1418,1389,1420,3866,1304] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4152,4153,3853,3856,4151,3707,3999,4004,4005,3739] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1763,1672,1669,1815,1523,1965,1820,1821,1968,1969,1967,1555] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        