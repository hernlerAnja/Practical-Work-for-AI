
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
        
        load "data/6OYW.pdb", protein
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
 
        load "data/6OYW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2168,2171,2170,2322,3151,2573,2709,2716,2724,2727,2166,2705,2496,3237,2498,2704,3235,3236,2172,2224,2226,2337,2225,2339,2468,2750,3240,3241,3125,3136,3152,2173,2167,2179,2746,2743,2742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1106,1107,126,706,682,697,698,701,705,725,687,693,695,145,1080,1091,132,135,138,528,304,1191,1192,1195,1189,1190,1198,287,675,679,127,129,130,678,664,302,185,184,659,657,660] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [7122,6154,6208,6209,6151,6157,6730,6152,7204,6556,6688,6689,6557,6693,7121,6312,7205,7095,6734,6735,7206,6708,6711,6726,6727,6700,6704,6327,6329,6210,7207,7210,7211,6163] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [5063,5090,5173,5089,5172,4679,4653,4671,4656,4406,5174,5175,5178,5179,4160,4309,4310,4311,5181,4634,4294,4631,4633,4638,4145,4672,4157,4151,4146,4148,4197,4144,4149,4198,4502] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3547,3580,3582,3590,3545,3546,3592,3531,3533,3534,3529,3532,3735,3743,3749,3750,3753,3754,3593,3732,3736,1848,2853,2854,2836,1735,1737,1757,1849,1731,1736,1745,1746,1750,1753,1749,1725,1726,1728,1868,1890,3543,3544,2835] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2219,4937,4976,2163,2144,2235,2237,2139,4975,2660,2657,2659,2661,2677,2347,2348,2145,2146,2147,2678,4965,4459,4446,4939,4941] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4932,4937,2161,2163,2142,2139,2109,2157,2160,4929,4930,4968,4908,4904,4468,4931,4935,4939,4906,4907,4470,2125,4477,2135,2138] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5426,5930,5933,5938,5942,5936,5937,5947,5428,5430,4955,4967,5424,5425,5431,5432,5435,4957,5454] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [7426,7427,7430,7921,7419,7421,7423,7932,7935,7940,7938,6996,6998,6964,7944,7425,7008,7952] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3423,3419,3420,3928,3931,3933,3026,3028,3414,3415,3416,3418,3038,3937,3945,2994,2998,3894,3914] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1927,1941,1944,1945,1455,1950,1951,1429,1427,1432,1433,1436,981,983,1431,1958,993] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4747,4774,4823,4824,4749,4750,4751,4753,4799,4748,4857,4858] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [850,773,774,775,776,777,779,772,769,1150,883,884,1114,1125,1127,1119,849,825,800] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        