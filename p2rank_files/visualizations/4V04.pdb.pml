
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
        
        load "data/4V04.pdb", protein
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
 
        load "data/4V04.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1244,1243,750,1328,1355,1357,1359,1361,1363,1365,206,208,1325,585,1326,1327,1329,1367,1335,1337,1314,1320,577,1113,1169,1171,1165,1167,1114,175,176,178,179,181,747,729,726,341,587,703,704,708,507,207,353,355,506,505,501,503,504,474,532,584,580,529,531,715,784,757] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3618,3621,3627,3631,3635,3663,3666,2854,3659,3660,3661,3610,3611,3614,2972,2973,2975,3620,3617,2717,2591,3649,3653,3655,3657,2589,2590,2731,3096,3547,3548,2537,3108,3110,3114,3117,3135,2533,2534,2539,2540,2535,2538,3425,3426,2920,3463,2968,3091,2729,3092,2716,2715,2885,2886,2887,2883,3475,3471,3142,3518,3145,3172] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4009,4227,4231,4234,4235,1941,4224,4228,4082,4084,4210,4077,4076,1934,1938,1939,1940,4093,4094,4241,4242,4248,4249,1945,4237,4236,1751,4238,1711,1714,1771,1796,1798,1799,1781,1782,1930,1931,1787,1952,1937,4066] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3780,3781,3951,3774,3804,4180,4230,4375,4377,3981,3779,4205,4181,4223,4213,4228,4085,4086,4144] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1773,1794,1797,1784,1800,1801,1802,1804,4135,4136,4173,4196,4197,4163,1807,1806,1811,1497,1460,1455,1457,1428,1429,1461,1473] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [894,852,847,4351,4316,4317,885,887,4243,4245,4314,4288,866,4232] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1933,1908,1916,1926,1790,1791,1882,1492,1653,1686,2080,1656,1515] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1215,1216,1217,1219,1434,1435,1436,757,773,1448,774,770,771,1462,1460,1725] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1119,1091,1610,1612,1614,1644,2148,2151,2153,2154,1609,1620,1621,1623] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        