
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
        
        load "data/5C03.pdb", protein
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
 
        load "data/5C03.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [313,314,315,298,662,1229,297,685,667,168,165,166,167,1233,1234,1239,1245,201,147,148,141,199,200,139,140,145,146,143,681,682,683,159,162,185,152,186,1069,1070,1071,1072,1081,720,1067,1221,1222,721,1097,1098,712,688,1046] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3309,2245,2373,2375,2732,2211,2212,2218,2219,2207,2206,2201,2200,2259,2260,2261,2357,2358,2752,2203,2204,2225,2226,2227,3304,3315,3115,2222,2246,3140,2790,2791,3137,3139,3168,3151,3292,3167,2751,2753,2758,2765,2782,2755,3141,3142,3152,2612] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3415,3446,3129,3142,3448,3138,3140,3134,3404,3424,3691,3657,3667,3694,3447,3620,3671,2807,2845,3688,2227,3417] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3323,3327,3331,3332,3093,3507,3320,3091,3092,3098,2503,3306,2530,2499,2465,2496,2498,3333,3335,3339] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1307,1335,1347,1348,1045,1338,1068,1070,1071,1072,159,160,161,162,168,167,1276,1334,1624,737,1377,1550,1058,1059,1341,1333,1340,1344,1345,1376,1378] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [443,1236,434,435,436,463,1250,1253,1261,1262,1263,1265,1269,437,404,1257,1437,1028,1021,1023] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3108,3109,3117,3107,3106,3540,3451,3456,3458,3439,3529,3530,3531,3566,3330] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        