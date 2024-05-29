
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
        
        load "data/6XVB.pdb", protein
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
 
        load "data/6XVB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [374,377,380,384,312,375,371,373,326,3072,3073,3064,3067,2683,3076,3572,3573,3574,3577,3578,3600,3601,389,3581,3602,311,346,370,367,2679,1312,1314,774,2673,2680,2684,2685,779,387,685,383,2670,3582,782,3583,3091,2959,2907,361,2906,2912,2913,2921,3618,3619,2924,2925,777] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2527,3077,2524,2526,2575,3063,3081,3075,3079,2698,3105,3106,3109,2523,3115,3085,3084,3090,2512,2511,3558,3633,3634,3651,3652,3637,3557,3632,2950,2951,3059,3058,3041,2576,2713,2701,2706,2710,2712,2838] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [235,402,232,234,231,283,794,815,816,819,1289,791,1288,1382,284,1364,1383,661,1363,768,773,660,769,580,400,401,405,410,414,751,753,1365,1368,417,548,825,787,789,800] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3190,3270,3149,3151,3189,3594,3147,220,3593,3595,992,900,3176,3177,3178,982,3175,3179,3216,3217,3218,800,3099,3101,3103,809,811,3580,788,789,219,300,299,812,813,993,995,1319,1326,1315,3102,3094,3575,3578,3584,3585,3588,3096,886,887,889,859,861,898,899,884,927,924,925,1297,1325] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1360,1361,1211,1365,1369,1370,1372,542,546,547,548,1357,1164,1209,1212,1215,1217,1203,660,579,581,580,1354,653,1199,26,572,24,573,40,1195,1200,6,1165,606] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2673,2674,2680,2685,1313,2592,2501,2603,2670,2671,2672,2604,2598,2595,1332,1334,1333,631,633,634,777,668,1349,1350,619] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2869,2871,2862,2834,2896,2838,2836,2870,3433,3626,3486,3478,3484,3631,3480,3641,3638,3622,3623,3629,3630,2943,3634,3468,3472,2863] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [812,813,993,994,995,1319,1326,2512,1306,1309,1315,2511,811,3096,3090,3095,2527,3079,3178,3179,1325] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3943,3944,3946,3958,3948,3439,4521,3437,3438,3440,4503,4505,4495,4504,3979,4500,4506,4517] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [609,610,611,612,616,111,673,674,123,577,585,670,666,2657] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        