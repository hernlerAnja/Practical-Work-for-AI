
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
        
        load "data/3CPC.pdb", protein
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
 
        load "data/3CPC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1348,1350,1352,586,1273,585,700,719,717,722,325,705,749,725,1274,1351,333,683,701,473,505,685,470,504,506,1354,1355,1356,1360,1361,1367,194,195,341,1365,1366,1370,176,178,179,337,340,471,759] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3585,3587,3588,3589,3590,3571,3586,2502,3575,2644,2647,2478,2479,2482,2501,3037,3044,3011,3494,2870,3493,3570,2985,2986,3002,3004,3006,3007,3010,2481,2632,2640,3033,3034,3572] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1348,1352,585,1341,1188,1194,1183,578,1147,532,1200,1344,1146,505,466,470,504,497,498,506,1356,1359] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2863,3561,3564,3567,3422,3572,3576,3366,3367,3420,2789,2791,2817,2753,2784,2790,2755,2782,2783,2758,3416,3579,3413,3414,3407,3400,3403,3405,3408,3404,2870,3575] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3058,3057,3464,3601,3907,3465,3466,3467,3638,3859,3900,3094] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3507,3509,2991,2993,2994,3508,3556,3557,2995,2610,2999,3513,3514,2878,3540,2611,2848] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        