
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
        
        load "data/7A5N.pdb", protein
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
 
        load "data/7A5N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [213,449,448,216,218,1346,1347,361,362,480,1206,1207,1220,1223,446,2722,200,203,209,421,208,207,1360,1363,1368,1367,1190,1189,1205,1230,1489,1490,1494,3108,3109,1498,1508,1510,1511,2702,1507,1509,1454,1457,1477,1478,1484,1485,1488,1506,1521,1501,2712,2717,2723,3096,2711,2713] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [845,184,823,185,218,1345,1347,360,793,219,237,239,238,345,791,182,1245,1246,1247,1338,812,816,818,1218,1230,1339,842,1337,647,788,789,481,794,1344,1341,1340] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2883,3505,3513,3050,3502,2884,3500,2916,2918,3066,2888,2937,2938,3898,3910,4014,4007,4009,4017,3927,3926,4008,3064,3065,3483,3484,3478,3479,3481,3482,3337,4010,3190,3336,3488,2898,2899,2886,2887,2880,3528,3535] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [15,4158,3887,3885,4159,2,6,8,9,12,3901,3902,3903,404,391,392,395,2907,13,14,23,24,4134,4155,4160,4164,4168,4177,4176,4178,4190,4469,4179,4180,4181,3131,3133,2906,4038,2902,2914,3870,3910,4016,4017,2912,2916,3128,3067,4032,3156,3189,4030,3155,3125,3127,4154,4145,4147,4148,3868,3869] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2733,2892,2901,196,198,2896,2897,197,232,30,2721,2731,194,201,202,203,195,386,387,204,3092,2903] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        