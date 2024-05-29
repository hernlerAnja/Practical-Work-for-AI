
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
        
        load "data/6GQM.pdb", protein
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
 
        load "data/6GQM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3058,3563,3057,3571,3573,3574,384,389,311,3063,3067,2670,2966,374,377,380,346,370,373,371,375,3064,2674,3052,3055,3060,3609,2911,2912,2914,3610,2915,2916,2919,3059,2947,2900,2950,782,388,783,786,383,387,802,1303,3082,2675,2676,2667,2661,685,2629,2664,2671,1304,774,777,3083,3564,300,801,3592,3593] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [768,769,283,402,410,791,794,1288,773,1289,1358,1359,1360,1373,1374,661,1363,1369,284,417,418,547,548,549,414,581,580,825,231,232,816,819,1376,1377,1378,787,235,234] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3548,3623,3624,3642,3643,2567,3049,3625,2704,2705,3628,2941,2942,3050,2692,2697,2701,2830,2514,2518,3068,2515,2517,3072,3075,3070,2566,3054,2689,3100,3549,3106,3096,3097] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [653,1165,581,579,546,542,544,545,537,541,539,1200,1203,1199,571,572,573,606,24,40,1195,6,1215,1217,1364,1367,1209,1211,1356,1360,661,548] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [800,809,811,812,813,992,1321,1319,1320,899,900,806,888,889,857,859,861,3140,3138,3090,3092,3094,3085,995,3081,3087,3167,3168,3169,3170,3181,3255,3261,3208,887,886,3180,3178] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3462,3471,3463,3424,3425,3458,3459,2852,2853,2854,2823,2887,2942,3613,3614,3619,2934,2862,3620,3621,3625,3629,3632,2827,3469,3475,3477] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2664,2665,2671,2662,2660,2663,2595,2661,2594,2676,1308,2583,630,631,634,668,1345,1327,1328,1304,777,1344] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [994,995,3081,3087,3170,1321,1319,1320,812,813,2503,1310,1311,2502] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1234,1236,1222,1233,1366,1367,1381,1380,1382,1471,1539,1540,1421,1422,1518] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3934,3935,3970,3430,4497,4486,4491,4494,4496,4495,3937,3949,3939,4504,4508,3428,3431,3429] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3181,3207,3208,3209,926,927,928,887,884,886,3165,899,982,898,900,893,3167] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        