
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
        
        load "data/6HMB.pdb", protein
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
 
        load "data/6HMB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3075,3056,2782,2785,2787,2836,2838,2840,3053,3055,2006,2012,3072,3073,1382,3074,3068,1960,1958,1639,1640,1641,1956,1973,2721,2722,2751,3117,3116,3362,3370,774,3363,3360,3105,1296,3118,854,856,735,1117,1118,728,730,713,715,855,1069,1071,1993,1073,1954,1955,1957,760,814,736,737,738,759,790,813,791,1158,1155,766,771,772,773,792,795,711,712,729,716,2780,2786,2788,2066,2093,2065,3371] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1334,1337,1317,1314,1316,1896,1765,1838,511,1764,472,514,456,473,1195,1248,1249,1250,1251,1252,1245,1247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3665,3696,3666,77,84,3692,3675,3678,105,106,107,5564,5586,5559,5562,5563,5572,5582,2587,2543,131,135] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [355,397,398,417,1273,1274,377,382,362,364,3147,3148,3203,3205,3244,3245] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3414,3375,3412,3435,4048,2779,2109,4035,4034,2751,2749] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        