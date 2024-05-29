
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
        
        load "data/6LVL.pdb", protein
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
 
        load "data/6LVL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [381,512,1290,1294,1295,1297,625,1212,1213,1289,746,741,1183,1198,795,788,785,379,220,221,222,201,767,167,365,760,742,200,202,170,173,164,165,168,169,171,163] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3497,3496,3498,2914,3574,3057,3047,3056,3035,3053,2515,2670,2672,3030,3031,2658,3470,3483,3468,3469,3477,3478,3575,3579,2674,2805,3576,3582,2493,2466,2513,2457,2463,3077,3074,2490,2491,2492,2494,2495,3084,2514,2461,2460,3049,3471] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2484,2713,2715,1186,1188,1198,511,1310,380,1296,1297,479,482,1312,1461,477,483,478,1456,1477,1478,2711,2727,1505,1160,1161,1174,1504,1197,1502,1319,1318,1320,1311,2699,2714,1507,2712,1506,190,183,186,198,200,193,195,194,196,197,199,489,487,456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2482,2486,2489,2804,3581,3595,3596,3597,3582,3446,3472,3483,434,3741,3603,3604,3605,3763,3473,3762,189,191,406,422,3471,418,2479,2481,2485,2492,2494,2775,3746,2772] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3744,2744,2745,2774,3619,3745,3746,3618,3743,3715,3716,3720,3723,3724,3649,3652,3655,3662,3666,2796,450,451,3742,3605,3738,3726,3727,3728,3734,3436,3661,3732,3725] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1435,1453,1457,1442,1449,1441,1440,1471,1320,1151,1376,1334,1333,1364,451,452,481,1460,1461,1429,1430,1439] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [434,3741,3742,3604,3605,3762,433,2482,2483,191,459,460,418,2479,2481,2485,2484,2775,3744,3746,3743] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1622,1623,1625,2146,2149,2151,2167,1611,1614,1094,2152,2156,2163,1066,1092,1093] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3896,3899,3901,4452,3910,3907,4442,4443,4444,4445,3347,3349,4449,4460,3378,3379,3380,3381,3384] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2484,2752,1459,1458,2726,2741,2727,2775,3744,3746,2483,190,191,2482] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [916,834,934,1249,1250,1252,966,967,968,996,963,965,989,990,933] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        