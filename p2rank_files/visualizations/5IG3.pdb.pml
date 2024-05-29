
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
        
        load "data/5IG3.pdb", protein
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
 
        load "data/5IG3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [266,267,269,603,605,608,609,843,981,273,328,570,434,435,420,524,1132,1149,1150,1131,997,330,876,878,948,859,860,874,663,664,841,436,1165,963,1151,962,592,594,595,596,635,646,632,633,629,554,556,557,877,879,880,875,648,882,885,6051,6050,6052] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1644,1645,1646,2196,2197,1884,1655,1656,1659,1658,1316,1905,1973,1988,2005,1867,1868,1987,1317,1470,2022,2153,2156,2157,2176,1574,2155,1380,1571,1619,1437,2128,1486,2175,2174,1604,1605,1606,1607,2199,1603,1687,1689,1899,1883,1885,1688,1323,1319,1903,1900,1901,1902,1904,1705,1910,1916] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3726,3728,3729,3727,3724,3725,3590,3695,4249,4248,4268,4097,4098,4114,3499,3501,3732,3692,3737,3739,3741,3742,3605,3606,3607,4284,4285,4267,3765,3767,3444,3960,3414,3415,3958,3959,3434,3437,3740,3438,3440,3412,3738,3976,3591] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2958,3062,3080,3248,3249,3250,2726,2672,2673,2674,2727,3266,2551,2552,2554,1949,2675,3267,3227,3230,2537,3231,2642,2942,2779,2384,2385,2721,2723,2724,2362,2359,2387,2390,2940,3203,2446,2448,2973,2974,2975,2977,2978,2979,3047,2957,2959,2714,2391,2763,2762] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4618,4620,4779,5281,5302,5279,4604,4707,4709,5127,5261,5262,4514,4973,5111,5110,4447,4448,4450,4451,4754,4755,4512,4421,5234,4427,4737,4738,4739,4740,4742,4705,4736,4776,4777] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [6285,5453,5454,5620,5621,5623,6301,6264,6266,5517,5977,5993,5976,6115,6082,6300,6302,6096,6097,6283,5994,5992,5707,5739,5740,5741,5742,5743,5757,5758,4041,5744,5708,5711] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3991,3992,3994,3996,3997,3993,3995,4065,3977,4011,3781,4289,4286,4288,4292,4285,3017] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4429,4824,4825,4393,4395,4939,4867,4847,4848,4371,4372,4954,4955] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2973,2974,2975,2976,2977,2978,2979,3047,2957,2959,2713,2714,1941,1942,1943,3266,2984] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2794,2795,2816,2817,2908,2306] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        