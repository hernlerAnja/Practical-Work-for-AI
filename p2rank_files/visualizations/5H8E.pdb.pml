
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
        
        load "data/5H8E.pdb", protein
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
 
        load "data/5H8E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3232,3167,4138,3748,4136,4137,3751,3168,3337,3170,3171,3252,3732,3728,4109,3178,3179,3187,3188,3231,3233,3166,3173,4246,4238,4239,4240,4235,4237,3336,3703,3704,3706,3708,3335,3571,3713,3573,4122,3351,3217,3352] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1344,1444,909,910,1441,1342,1343,1443,939,777,779,423,437,439,555,438,559,912,376,543,932,935,938,934,541,919,542,914,915,1316,1328,1315,1445,1446,1449,1452,385,379,378,1319,372,373,957,950,954,382,374,377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1287,1300,1606,1609,1610,1301,1302,1303,1304,1476,1477,1288,415,3039,3055,3054,3056,3044,1644,1643,983,1310,1311,3057,3062,3063,3065,3060,3061,1911,1912,1913,1915,981,1316,1328,1450,1451,1452,397,401,411,412,413,406,410,385,393,394,629,1468,1470,670,598,630,597,384,423,558,559,418,575,1317,1318,1320,1321,992,990,1631,1921,1629,1910,1917,1918,3074] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1966,3590,3592,3593,1968,1969,3274,3297,3288,1953,3107,3106,3289,1904,3287,1955,3118,3601,3329,3310,3311,3714,3711,1949,2034,2036,2037,2038,2060,2062,2033,1906,1927,2389,2058,1961,1959,1954,1946,1950,1907,3507,1619,1963,3051] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3207,3209,4270,4271,3369,3204,3217,3352,3353,3200,4122,4080,4081,4082,4246,4238,4244,4245,3191,3179,3188,4110,4098,4262] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3482,2962,1618,1971,1983,1984,1974,1978,1993,1995,3504,3030,3032,1619,1963,1977,1985,2960,2961,3025,3034,3037,3021,2957,2958,3020,3023] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [71,1758,1761,2640,2642,1752,69,54,70,59,1756,1757,1766,1793,2643,1767,1770,2595,2620,79,81,1222,1220,82,2648,2652,1196] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [341,566,567,340,342,549,317,318,836,294,295,297,822,292,874,875,889,839] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4701,4740,4830,4735,4700,4721,4699,4727,4728,4828,4829,4827,5181,5183,4863] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2997,3014,2991,2995,3015,3017,2990,2978,2985,2987,4319,4286,4291,4317,3418,4338,3006,3007,4284,4285] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4560,4546,4564,2865,5435,5436,5389,2855,4550,4551,4017,4552,2875,5446,4587,2848,2859] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [612,613,651,274,831,271,253,883,639,641,830,611,615,614,616] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [221,223,193,201,1523,1525,184,211,213,210,212,203,208,209,215,1544,1545] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1159,1868,1115,1352] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        