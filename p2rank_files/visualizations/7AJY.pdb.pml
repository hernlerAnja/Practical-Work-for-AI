
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
        
        load "data/7AJY.pdb", protein
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
 
        load "data/7AJY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1181,1182,1183,1198,1200,1478,1482,1216,1514,2698,445,446,447,1360,1361,1339,1223,1340,443,1353,1356,477,1212,1213,1214,204,205,420,2715,3083,3100,2713,2714,2702,2703,2704,2691,190,197,200,213,215,418,210,415,1487,1491,1502,1503,1504,1792,2708,3099,3087,3097,2705,2707,3091,3124,3125,1448,1446,1447,1468,1470,1471,1483,1499,1500,1501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3847,4142,4143,4135,4136,399,401,4147,4148,3863,3880,4179,24,2890,2893,2897,2898,400,3864,3865,3877,3878,3879,394,15,388,398,4152,4156,392,736,4459,1,2,6,7,8,12,9,4164,4166,4167,4168,4169,4165,734,23,13,14,16,3881,3123,4004,3848,4019,4020,4021,3888,3889,4003,4005,3121,2899,2900,2903,2906,2908,3058,3846,4126,4133,4025,4026,4131,4096,4098,4112,4095,4097,4018,3151,3152,3155,3180,3147,3118,3146] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1223,1337,1340,1334,358,359,478,1330,1332,1333,357,784,786,787,1240,342,781,805,838,1238,1239,815,816,807,808,820,1211,1212,1331,184,187,216,236,178,234,180,182,235,190,215,355] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2908,3058,2909,2928,2929,3050,3054,3056,3905,3041,3480,3483,2875,3479,3888,3998,3999,3995,3997,4005,3996,3314,3462,3456,3457,3459,3461,3466,3181,3876,3877,3491,3904,2871,2877] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1487,1491,1490,3099,3097,3101,3114,1448,1449,1450,3105,1814,1446,1447,1525,1471,1478,1482,3100] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4281,4284,5244,5234,5235,5237,5243,3774,3775,4279,4285,4280,4286] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [845,1693,1011,1702] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        