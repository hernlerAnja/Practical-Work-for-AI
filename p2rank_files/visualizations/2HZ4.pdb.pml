
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
        
        load "data/2HZ4.pdb", protein
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
 
        load "data/2HZ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [131,132,134,153,129,152,154,1178,431,634,635,1163,1164,406,277,275,263,271,504,1086,1087,1162,684,687,1088,653,656,659,505,639,661,1180,1068,1167,1168,1059,1069,1070,691,694] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2789,2413,3236,3238,2806,2810,3312,3313,3314,3317,3318,3218,3223,3320,2425,2427,2302,2304,2303,2279,2280,2283,2803,2278,2281,2284,3237,2834,2835,2837,2841,2801,2809,3209,2580,2581,2785,2556,2655,2784] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [5344,4413,4432,4409,5420,5418,5343,5419,5423,4943,5324,5329,4947,5315,4526,4527,4890,4761,4762,4895,4528,4907,4687,4433,4536,4540,4542,4662,4544,5424,5426,5425,4915,4939,4940] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1265,1269,1271,2828,2830,1270,1275,3249,3259,3260,3267,2958,3274,3276,2875,2877,2879,2823,2822,1283,1285,2870,2824,1249,1252,2872,2910,2913,2902,2904,2909,2907,2950] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [243,244,528,530,531,197,222,6374,6376,6377,224,225,226,228,229,5083,6365,6394,6370,6371,6372,5112,5113,5115,5116,5117,5118,5368,5379,5086,5090,5091,643,527,198,199] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [861,862,1113,1112,4771,4721,4899,828,2113,2115,2116,2124,827,4504,2125,4722,859,860,856,858,835,2055,883,4786,4787,490,884,885,889,911,912,880] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5100,5101,5106,5076,6094,5074,5077,6120,6081,6082,6095,6084,5094,5095,6119,5799,5829,5795,5832,5835,5096,5098,6073,5834,5132] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3000,2988,2968,2970,2971,2990,2989,2992,3692,3726,3728,3729,3732,3731,4016,3979,3991,3992,3985,3026,3696] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1123,1125,4501,4510,4502,827,4504,835,796,4478,4784,4786,4787,4522,4476,4513,4505,4507] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [850,818,820,840,842,838,839,844,845,1839,1826,1863,1864,1838,851,821,1543,1539,1573,1575,1576,1579] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4278,3033,2640,3061,3062,3008,3010,3012,3039,3041,4268,4266,3283,1232] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4084,4087,3927,3922,3925,3932,3787,3882,4089,3651,4082] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1495,1498,1728,1633,1634,1527,1931,1774] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        