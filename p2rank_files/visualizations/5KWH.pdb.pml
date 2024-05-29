
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
        
        load "data/5KWH.pdb", protein
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
 
        load "data/5KWH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4146,4246,4243,4144,4145,3756,3759,3344,3343,3345,3721,3176,3178,3179,3740,4121,4122,4123,4254,3225,3239,3241,3174,3175,3181,3187,3195,3196,3240,3358,3714,3716,3711,3712,3579,3581,3360,4247,4248] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [542,376,541,543,934,938,935,438,439,1315,1328,1344,1444,1441,1443,1452,1342,1343,385,393,394,423,555,909,910,911,912,913,914,915,777,919,779,556,557,558,1445,1446,778,1316,1317,1318,957,382,377,954,380,373,374] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1631,1910,1917,1629,1911,3068,983,1310,1912,1915,981,3064,3065,3070,3071,3069,1644,1300,1609,1610,1643,1301,1302,1304,1311,982,989,991,992,1312,1317,1318,1319,1320,1321,1918,1921,3082] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3199,3203,3205,3207,3224,3225,3187,3195,3196,3197,4120,4122,4130,4254,4090,4106,3361,3472,4270,4252,4253,4272,3211,3210,3212,3215,3431,3432,3400,4278,4280,4279,3217,3377] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3115,3114,3297,3600,3601,1968,1969,3282,3305,3322,3321,3295,3296,3126,1959,1951,1953,1954,1955,1950,1904,1905,1906,1907,1949,2036,2038,1966,1911,1908] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1328,1452,397,401,385,394,423,1468,1469,1470,558,559,670,1450,1451,411,413,415,410,598,575,574,629,1316,1318,3047,402,3063,1287,1606,1610,1288,1303,1304,3064,1476,1477] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1985,1618,1983,1984,1971,1974,2970,3490,2965,2966,1963,3038,3040,3512,1619,1977,3033,3042,3045] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1756,1758,1761,1766,71,2642,2640,2641,1767,1793,2637,2643,1222,2652,81,1196,1220] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4707,4708,4709,4729,4743,4735,4736,4836,4835,4871,5191] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3014,3015,4293,3003,3022,3023,3025,3005,2986,4327,4325,4346,2993,2995] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [220,221,222,211,212,213,1545,1523,1525,184,201,191,193,1544] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1841,1130,1159,1868,1115] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        