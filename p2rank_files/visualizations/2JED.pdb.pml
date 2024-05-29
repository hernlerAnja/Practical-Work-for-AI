
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
        
        load "data/2JED.pdb", protein
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
 
        load "data/2JED.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1100,1101,1205,1111,1206,1207,1210,1211,1213,435,469,1126,1128,717,720,1127,699,554,695,470,1087,1088,1103,104,102,106,157,158,100,159,107,113,137,138,139,134,135,136,272,285,133,287,693,2399,2400,2401,2406,2410,2402,101,2409,2440,2438,741,746,747,748,771,738,739] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3813,3923,3919,3920,3824,3926,3924,3841,3840,3267,3918,2985,3433,3412,3430,3436,2846,3148,3000,3407,3406,3927,3933,3183,3408,3182,2849,2851,2813,2814,2815,2819,2820,2871,2870,2872,2817,3426,2847,2848,2850,2852,3461] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3290,3291,3303,5277,5278,5305,5303,5304,5341,3294,2720,2911,2978,2913,2915,2980,2729,2730,2957,2912,2916,2914,2766,3399,2728,5283] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [267,582,266,579,686,578,581,2693,590,249,242,245,244,2711,2712,198,200,202,7,8,199,201,203,583,584] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4341,4358,2273,1175,2281,2262,2244,2268,3545,3547,1159,1161,1158,1157,3532,3533,4578,4573,4575,4576] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3905,3275,3417,3277,4960,3857,4962,3855,3856,3864,3863,3874,3237,3240] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4347,4348,4349,4350,4351,4090,3477,3506,3817,3476,4317,4319,4320,4318,4321,4352,4364,3507,3808] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2050,1493,1494,2054,974,977,973,972,970,1003,999,1000,1001,1007,1008,1491,1492,1272] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3610,4978,4983,5000,3576,3578,3603,3605,3608,3579,3580,4885,4883,4871,4872,4876,4873,4979] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2247,2248,2249,524,527,1191,1192,526,1141,1144,704,562,564] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2265,4564,895,897,888,890,865,2159,2172,2264,863,866] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5102,5112,3363,5113,5109,3382,3335,2737,3337] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        