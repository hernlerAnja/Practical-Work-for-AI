
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
        
        load "data/7AY9.pdb", protein
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
 
        load "data/7AY9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4185,4186,4187,4182,4184,3299,3300,3301,3661,3662,3664,3666,3535,3671,3537,4069,4191,4192,4193,4029,3184,3315,3316,3317,3185,3201,3180,3168,3172,4217,4218,3173,3175,3177,4056,4085,3146,3147,3156,3159,4044,4045,3199,3200,3135,3136,3138,3139,3684,3686,4084,3705,3706,3709,4083,3690,3142,3667,4209,3428,3387,3388,4210,4211,3356,3390,4219,3333] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [419,434,547,548,550,433,906,435,534,901,902,904,1332,1330,1331,1431,930,931,771,533,535,927,926,911,770,903,905,1303,1440,1429,1432,1433,1434,551,949,946,375,374,369,368,370,372,373] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3024,1632,973,975,1306,974,1845,1598,1290,1292,1631,1299,1308,1899,1902,1844,1617,1619,3025,3031,3029,3030,1896,3028,3041,3042,3047,1897,3044,3048,3050,980,1895,1898] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [411,1457,1458,1464,1465,1466,1275,1276,1594,1597,1593,1292,1291,409,402,406,407,1316,1438,1440,1439,589,590,1456,621,662,567,419,550,566,1304] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3075,3084,3086,3565,3242,3256,3554,3556,3557,3265,1904,1934,1930,1931,1892,1949,1950,2017,2019,1896,3293,3278,3669,3672] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [337,558,559,869,541,336,338,542,312,313,314,828,290,293,829,814,288,867,881,866,831] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1843,1849,1874,1879,1002,1897,968,977,1010,1845,1842,1005,1847,974,972,1844] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [69,71,1749,70,1744,1754,1781,2605,2611,1746,2608,1755,1758,2599,1740,2610,2616,2588,79,81,2620,1208,82,1184,1210] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4499,4511,4534,5359,5354,5357,5360,5369,5358,4493,2843,2827,2831,2832,2833,2823,2816,2821] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2998,3000,3446,2929,2930,1958,1944,1966,1606,1607,1964,1965,1952,1955,2925,2926,2993,3002,3005] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2982,2963,2983,2985,2955,4264,4266,2958,2965,2946,2953,2974,4232,4285,2975,4231,4233,4238] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2357,2359,2017,1891,1892,1917,1927,2012,2014,2015,1908,1915,2050,1914,2039] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        