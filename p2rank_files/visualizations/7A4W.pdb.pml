
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
        
        load "data/7A4W.pdb", protein
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
 
        load "data/7A4W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [273,277,278,279,280,503,501,283,286,1425,1427,454,270,1440,1441,1442,1447,1448,1426,526,527,498,531,532,535,560,1260,1267,1555,1268,1269,1270,1557,1558,1564,1569,1287,1286,1310,1311,3275,3280,3263,3266,3267,3271,3257,3284,3268,1548,1551,1553,2873] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3319,4212,3068,3077,4234,4209,4056,4073,4211,4213,4072,3325,3244,3316,3073,3075,4089,4086,3063,3060,3321,4229,4233,3322,4084,4085,3227,3228,3350,4096,481,485,486,488,489,478,480,4348,4349,3291,490,3320,483] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3079,3099,3098,3211,4084,4112,4113,3682,3689,3711,3708,4085,3738,3050,3047,3044,3739,3045,3226,3227,3228,3351,4206,4096,4203,4205,3513,3655,3657,3512,3684,4204,3677,3678,3679,3680,3681,3664,3077,4073,4213,3060] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [288,289,436,437,438,1427,307,308,309,434,1419,255,421,1327,257,251,253,252,263,872,1418,1417,727,878,898,561,1421,1424,1420,869,871,873,874,868,1310,922,1298,1326,925,903] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [518,3342,4333,519,4328,4246,4272,4273,3310,3309,3308,3311,3320,520,487,489,3312,3340,4238,4232,4233,4048,4245,4234,551,552,517,550,521,4314,576,4300,4299,4280,4297] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3253,3270,2860,2861,2862,2863,3067,77,477,79,2883,3063,3064,3061,3062,463,67,69,461,68,65,505,504] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1555,1574,1269,1270,1557,1558,1564,1565,1569,1570,1287,2777,2778,278,1545,2795,2797,2871,2872,2873,2874,1544,2784,1548,1534,1539,3268,3269,2851,3263,3267,3257,1577,1578] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [541,544,842,841,567,773,775,4318,4320,4325,4306,4326,539,4296,4302,4310,4298] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4089,3726,3728,3730,4584,4629,4088,4381,4382,4370,4368] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1303,940,942,1302,1849,1804,1588,1590] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        