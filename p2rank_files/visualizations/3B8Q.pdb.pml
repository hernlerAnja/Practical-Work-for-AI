
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
        
        load "data/3B8Q.pdb", protein
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
 
        load "data/3B8Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2539,2717,2577,2578,3703,2579,2721,3067,2541,2542,3700,3702,2535,2536,2537,2540,3607,3140,3124,3143,3132,3133,3136,3606,3683,2724,3685,2857,3069,2725,3688,2709,3089,2708,3084,3109,3110,3106,3103,3105,2969,2970,3085,2889] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1425,253,254,396,383,384,764,645,759,760,399,400,532,1414,644,564,196,198,199,778,392,742,744,201,195,200,811,815,818,1427,1429,808,1333,1410,1332,1409,781,1411,780,784,790,798,799,807] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [532,1415,1417,529,530,557,556,591,1243,563,565,1406,1407,1259,1403,1257,1400,1205,637,1206,1255,1244,1247,1253] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3685,2854,2857,3688,3689,3691,2852,3677,3680,3681,3533,2890,2888,2889,2962,2969,3674,3479,3480,3516,2916,2879,2881,3517,3520,3521,2882,3527,3529,3531,3526] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [804,805,806,1357,1345,1366,1372,1373,848,850,1341,1026,1029,1030,1031,1027,1028,884,885,1051,1085,802,1355] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3626,3627,2687,2688,167,2685,2686,174,175,2947,2977,3095,3620,3621,3098,2694,3669,3093,3670,3652] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3579,3580,3751,3156,3577,3972,3578,4009,4013,4016,4019,4020,4027,3157] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1057,1058,1084,1073,1074,1075,2286,2289,2260,956,957,959,955,951,954,2328] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1211,1212,1583,1582,1580,2141,2145,2130,2135,2138,2140,1589,2152,2157] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1731,831,832,1474,1473,1694,1303,1304,1305,1306,1460,1461,1738,1741,1742] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3304,3173,3175,3209,3210,3306,3310,3325,3357,3359,3640,3645,3646,3647,3615,3129,3130,3131] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2738,2740,2807,2809,2736,2737,3040,3042,3045,3048,2805,2767,2772] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1910,1900,1905,1625,1758,1760,1868] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        