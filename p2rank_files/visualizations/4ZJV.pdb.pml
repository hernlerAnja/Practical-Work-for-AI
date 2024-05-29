
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
        
        load "data/4ZJV.pdb", protein
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
 
        load "data/4ZJV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2564,3329,3299,3427,3428,3301,3303,3313,3277,2903,2927,2393,2442,2911,3439,3589,2422,2402,2405,3302,5106,5094,5116,2406,2407,2409,2413,5115,5117,3570,5090,5095,5093,2391,2441,2390,2396,2399,3328,2886,2900,5107,2959,2935,2930,2934,2418,2420,2414,2415,2881,2547] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [722,746,134,146,1086,1087,1100,1089,4754,4766,1090,4774,4775,4776,4777,140,141,143,186,184,185,1214,150,166,1064,153,157,158,162,164,1226,136,138,135,717,721,714,1116,690,687,1115,313,669,1215,329,330,673,685] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1219,436,1240,1241,427,1341,1342,1330,1334,1335,1313,346,363,375,402,1221,1224,1226,1227,1054,1344,1347,1350,1361,156,158,159,1343,1329,1049,1369,1355] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3553,3564,3549,3550,3554,3440,2581,2415,3267,3453,3525,3526,2640,3454,3432,3434,2647,2649,2615,3626,3439,3262,3711,3712,3589,3570,3577,3581] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3769,3803,4044,3624,4033,3911,3994,4187,4186] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        