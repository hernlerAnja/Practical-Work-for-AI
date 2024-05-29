
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
        
        load "data/8OVZ.pdb", protein
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
 
        load "data/8OVZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2752,2754,2805,2896,2988,2807,2808,3544,3344,3548,3550,3342,3353,3355,2774,2775,2776,2781,2782,3534,3540,3543,2662,2833,2835,3303,2893,2915,3504,3505,3506,3507,3508,3511,3512,3513,3515,3357,3359,3361,3358,3360,2895,2987,3002,3003,2649,2873,2879,3499,2878] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1256,1257,1258,1259,1261,1262,1162,1163,779,219,221,1255,782,788,188,189,186,754,778,756,180,238,358,177,183,184,735,751,745,747,749] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [536,1270,1276,1279,1280,1284,1286,373,374,1247,1241,1244,1248,1249,1250,532,561,563,533,535,1074,1076,606,601,1235,1240,621,510,624,618,617,613,614,731,643,387,480,716,372,715,1091,1087,1093,1035,509,504] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2464,2467,3007,3012,3017,3023,3028,2633,3430,3431,3402,3026,3047,3056,3019,3021,2461,3521,3520,3525,3523,2516] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3379,3528,3531,3687,2483,3683,3702,3518,3519,2479,2485,2476,3406,3514,3416,3378,3377,3417,3534,3535,3536,3542,3610,3612,3649,3650,3380] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1148,1249,1251,1263,1264,1267,1254,217,219,1255,1270,1278,1281,1415,201,205,206,207,198,1138,1149,1137,1112,1110,1111,1346,1348,1385,1386,1416,1419] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3518,3519,3405,3406,3407,3379,3528,3687,3417,3416,3403] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3693,3695,3802,3623,3625,4056,4058,3777,4082,3773,3709,4046] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1041,1009,2128,2132,1572,2126,1579,2143,1011,1578,1580,1040,1570,1571] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1614,1751,1894,2049,1889,1611] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        