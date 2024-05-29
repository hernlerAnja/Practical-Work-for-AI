
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
        
        load "data/3Q4Z.pdb", protein
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
 
        load "data/3Q4Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [187,193,198,200,1121,1123,1148,361,363,1122,1018,1029,694,1046,1117,1120,1116,1045,217,288,663,672,646,651,429,1113,1114,1115,644,303,304,305,216,218,324,367,368,372,398,399,623,170,172,174,175,176,687,665,1007,3479,3474,3477,3478,3495,1149] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2701,3252,2700,2726,2727,2729,2733,2730,3234,2804,3203,2760,2761,2703,2705,3415,3422,3424,3425,2808,3414,3429,3430,3431,3432,3251,3212,3233,2704,2601,2602,2603,2735,2944,2945,2820,2736,3420,3412,2811] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2493,3420,3412,2492,2810,2962,2964,2811,2949,3344,2586,2944,2945,2601,2602,3316,3343,3413,3421,2443,2965,2445,2447,2449,3414,3332] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1609,1610,3445,3597,3598,3595,3487,3488,3875,3851,3579,3471,3481,3485,3486,3433,3434,3437,3546,3547,3512,3574,3874,3572,3577] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [294,614,616,631,124,123,295,558,557,282,296,283,246,255,256,257,630,242,243,142,144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2909,2629,2873,2678,2680,2286,2287,2252,2250,2620,2622] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1404,1403,1405,921,1947,1949,1411,1413,946,918,919] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3881,3882,3884,3885,3886,1366,3860,1347,1365,1641,1640,1644,1676,1350,1645,1648,1256,1255] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1909,1411,1412,1908,1918,1413,1384,1395,1396,1398,1223,1224,1335,1404,1405] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3643,3644,3645,4179,4181,4186,4190,4180,3636,3637,3217,3635,3219,4185] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        