
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
        
        load "data/6EQ9.pdb", protein
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
 
        load "data/6EQ9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1927,1949,1948,1944,3672,1976,1978,3967,3968,3973,3976,3743,3744,1752,3979,1742,3975,3991,1475,3706,3707,3708,1736,1737,1478,1779,1481,1482,1483,1488,1489,1487,1491,3624,3654,3655,1942,3623,1973,1974,1975,1941,3961,3586,3962,3963,3964,3577,3578,1354,1349,1358,1468] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [844,208,209,204,202,841,206,816,820,819,253,251,252,797,363,364,365,798,348,802,213,214,217,218,221,211,212,235,837,833,834,832,234,1194,1295,1283,1284,1286,1287,517,1187,1211] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4039,2998,2999,3026,3027,3932,2994,2995,2992,2989,2990,3136,3137,3135,3957,3956,4028,4030,4031,2987,3120,2985,3584,3587,3594,2983,3591,3571,3566,3569,3377,3551,4027,3552,3556] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [234,1176,1194,1292,1293,1295,1156,1296,1318,233,480,1189,1308,1307,1310,218,221,365,225,1159] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1316,1317,1374,5179,5181,5165,5166,5168,470,471,440,5167,1356,1370,3698,3699,3697,1334,1335,1341,472,2678,2675,446,447,435,436,443,448,1373,1319,1323,1375] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3006,4039,4037,4038,3904,3921,4062,3011,3137,3243,3280,3281,3282,3283,3284,4036,4040,4053,4054,4027] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [857,858,856,887,1628,1174,1189,1173,1183,1429,1431,1389,1687,1689] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4618,4622,4623,4620,4613,4150,4153,4162,4661,4411,4448,4449,4410,4426,4650,4652,4647] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        