
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
        
        load "data/5H8B.pdb", protein
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
 
        load "data/5H8B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3231,3232,3233,3168,3170,3336,3335,3337,3748,4136,4137,3713,3726,3728,3732,3176,4238,4109,4122,4246,4235,4138,3178,3187,3179,3188,4097,4098,3751,3166,3167,3349,3351,3704,3706,3708,3573,3571,3703,4239,4240] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [438,558,555,439,1444,1441,1342,1443,779,423,542,932,541,543,935,919,778,909,910,911,912,913,914,915,777,394,1328,1445,1446,1452,1316,373,1315,1344,957,1343,954,379,380,382,384,385,393,376,377,934,950,938,378,374] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3191,3195,3200,3217,3179,3188,3216,3189,3202,4122,4244,4246,4082,4396,4397,4399,4081,4097,4098,4400,3353,3464,4262,4263,4264,4245,3204,3207,3209,3423,3426,3392,4270,4271,4272,3352,3369,3368] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3274,3297,3314,3288,3590,3592,3593,1968,1969,3107,3118,3289,3287,1951,1953,1955,1949,1950,2036,2038,1904,1905,1906,1907,1927,1959,1966,1911] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3056,1610,1643,1644,1304,1626,1629,1317,1318,1320,1321,1319,3044,3063,3065,3061,992,983,991,1915,1910,1917,1918,1921,1911,1912,3057,3060,3074] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1476,1477,394,1287,1288,1303,1328,1450,1451,1452,397,401,402,410,411,413,415,629,1468,1469,1470,598,558,423,559,670,575,574,597,1603,1602,1605,1606,384,385,393,1316,1318,1609,1304] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3030,3032,3482,1618,1619,1983,1984,1974,1975,1977,1993,1995,1971,1978,3025,3034,3037,3038,1985,2962,2957,2958,3514,1963] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [341,566,567,340,342,549,550,317,836,874,889,822,294,297,318,839] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [71,2640,2641,2652,1222,81,82,1196,70,2642,1758,1761,1756,1757,1766,1793,2637,2643,1767] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2990,2997,2995,3013,3014,3017,2985,2987,4317,4319,2978,3006,3007,4284,4285,4286,4291,3418,3419,4338] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [5435,5436,5424,5425,5431,5414,4546,4560,4564,2853,2855,5437,2865,4550,4551,4017,4552,4587,2863,2864,2848,2875] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [193,191,184,220,221,222,201,211,213,212,1544,1545,1523,1525] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        