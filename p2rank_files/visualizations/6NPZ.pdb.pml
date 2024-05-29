
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
        
        load "data/6NPZ.pdb", protein
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
 
        load "data/6NPZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5494,5500,3908,3923,2975,2976,3125,3089,3100,3924,3907,3766,3931,3933,3927,2991,2992,2974,5501,2830,2834,5495,3072,3092,3034,2836,5503] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5382,5387,5388,5381,168,1277,407,425,1251,1110,1252,1253,1254,1267,1268,1275,423,312,461,310,311,431,436,152,159,166,163,170,173,370,327,172,328,149,1278] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [751,755,783,786,2430,780,2450,2454,2455,2456,2457,2474,822,5355,5356,5378,5400,756,757,758,759,5354,2440,2446,2483,142,2485,2486,775,777,812,813] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2224,2225,2226,2236,2237,2145,978,981,982,2232,980,1003,1004,2119,2120,1038,2243,2270,2272,2269,2271,1045,1046,1048,1010,1012,1005,1008,539,537] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4899,4891,4892,4903,4904,4804,4893,3659,4934,4935,4936,4937,4939,4933,3666,3703,3636,3661,3664,3637,3638] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1533,1538,1335,1530,1347,1518,1529,1544,1540,1541,2082,2083,1332,1333,2075,2078,2079,2041,2043,2032] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4184,4185,4198,4202,4003,4192,4736,3989,3991,4737,4738,4700,4701,4734,4194,4742,4183,4691,4692,4172,4173] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5150,5152,5121,5117,5467,5468,5113,3450,5107,3423,5511,5513,3422,2794,3420,3421,3447] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1282,1272,1276,418,419,451,428,430,420,1291,1293,1100,1369,1371,1372,1274,1368] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1755,1796,1797,1385,1386,1409,1757,5419,5418,5437,5421] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [5190,5201,5194,3330,2845,2846,2758,2759,2760,2761,2762,2763,2764,2716,2861,2984] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4411,4409,4450,4451,4047,5531,5533,5535,5536,5549,4071,5532,4422] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        