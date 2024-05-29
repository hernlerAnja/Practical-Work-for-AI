
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
        
        load "data/7KIA.pdb", protein
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
 
        load "data/7KIA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2498,2505,2506,2507,2508,2509,2510,2511,2513,2514,2522,2783,3476,3633,3634,3512,3513,3609,3635,3793,3771,3772,3774,3776,2700,2698,2699,2524,2525,3624,3625,3628,2806,2543,2545,3113,3498,3610,3611,3612,3527,3528,2544,3069,2684,3064,3065,3067,3074,2949,3604,3066,3068,3070,3095,3086,3092,2497,2492,2493,2494,2495,2486,2487,2488,2490,2491,429,430,431,3501,3502,413,3792,427,203,204,433,443,468,469,411,190,198,3123] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [785,764,1233,782,1234,638,639,173,803,172,174,802,176,177,790,810,1316,1317,1318,1204,1218,813,231,388,390,184,191,180,181,182,183,757,758,374,754,755,756,178,229,230,192,193,194,200] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [192,193,194,195,196,197,199,200,201,208,210,206,207,211,1330,1313,209,389,390,491,1207,1208,1182,1315,1316,1317,1318,1218,1314,2723,2742,2744,2746,2784,1340,1477,1498,1499,2758,2783,1339,1341,1478,1480,1482,2512] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1341,1478,1479,1481,1482,1474,1172,1397,1354,1355,1385,1391,1398,461,1451,1456,1462,1463,1464,1470,1460,1461,1402,490] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4480,4478,4481,4492,3409,4485,3407,3408,3926,3945,3929] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3138,3139,3140,3495,3499,3500,4048,431,3501,3503,3821] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        