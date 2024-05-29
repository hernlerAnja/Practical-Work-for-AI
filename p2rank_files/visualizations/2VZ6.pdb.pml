
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
        
        load "data/2VZ6.pdb", protein
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
 
        load "data/2VZ6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3401,3046,3429,3430,2446,2443,2445,2497,2498,2442,2448,2499,2485,2453,2460,3523,3526,2599,3025,3030,3033,2611,3007,3009,2869,3518,3519,2454,2461,3045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1053,1178,118,120,121,657,1170,1171,1172,1175,1176,661,685,698,1081,1082,697,682,679,666,522,266,110,149,150,254,108,109,115,151,656,659,264,112,113,677] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2668,2628,2469,2471,2473,2476,3370,3547,3548,3549,2697,2696,2698,2695,3353,3414,3389,3390,3402,3373,3524,3525,3526,2485,2453,2460,2484,3401,2612,2613,2627,3539,2721,2727,2734,2762,3540,3541,2720,2694,3542,2464,2454,2461] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1331,2311,2305,2306,2309,2310,2296,2298,2300,2297,1056,1058,1057,1605,1606,1607,2276,2278,2280,1632,1634,1635,1637,1352,1353,1340,1643,1339,1702,1336,1618] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3700,3701,4622,4624,3405,4648,4649,3689,3679,3684,3685,3687,3688,3953,3690,4620,3982,4642,4643,4644,4617,3985,3966,3980,4046,3991,3954,3955] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3212,3092,3093,3119,3121,3122,3064,2143,2142,2144,3184,2137,3181,2117,2119,2120,3238,3483,3476,3480,3462,3468,3472,3438,3437] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4394,4400,4402,4448,4451,4452,4461,4462,4404,969,970,910,912,4450,477,490,492,940,942,944,935,2055] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3163,3184,3143,4508,2133,2135,2136,829,2168,3177,3144,3140,3142,2128,2129,2126,2124,827,828,855,857,831,836,4509,4510,853] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [855,857,773,774,831,834,772,789,835,836,1131,1124,1128,1129,1132,745,1148,1090,1135,716,1089,890,853,833,864] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1251,1455,1457,1245,1248,1460,1465,1466,1247,1270,2030,934,2029,1488,2025,2024,2002,1980,2034,2022,2023,2013,2019,958,956] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2117,2119,2120,3238,3212,3120,3122,3064,2143,2144,3181,3182,3183,3184,2137] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4364,4366,4367,4372,3306,3836,3801,3803,3282,3315,3805,3807,4376,3808,3813,3814,3599,3304,4365] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        