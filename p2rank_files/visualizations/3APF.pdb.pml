
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
        
        load "data/3APF.pdb", protein
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
 
        load "data/3APF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3625,3627,4733,4758,4734,4755,4756,4757,4759,4912,4915,4282,4292,4295,4296,4297,1084,1082,1085,1086,1055,926,4298,3268,3265,449,3548,3578,3579,3580,3581,3582,3583,4304,448,450,944,942,4306,4307,924,3295,3264,3298,3626,3274,4701,4918,4928,4283,4897,4898,4879,4895,4901,4911,4995,4754,4782,4791,4783,4784,4785,4786,4821,4822,4859,1078,1081,1113,526,1105,1106,4861,1068,1069,518,501,516,1042,1044,4823,1070,1043,1072,3275,3276,3277,3278,478,3245,4871,4860,4870] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5618,5621,5622,5624,4627,4649,5616,4406,4606,5536,4607,4467,4469,5032,4391,4692,4665,4907,4986,4985,4987,4991,5005,4447,4404,4390,4625,5597,5033,5535,5008,5613,5615,4909,5039,5047,5519,5508,5512,4417] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3288,3289,3276,3277,3278,478,479,480,3251,3252,3253,3220,3008,3010,3014,3016,3001,2997,4791,4792,4790,4822,4768,4798,6054,6030,4830,6028,3274] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4302,3869,3893,3894,3895,4261,4262,3884,4323,936,1227,1229,3859,3860,3862,3867,1238,3539,3858,3861,427,428,429,430,932,934,935,4301,3533,3534,3541,4303,4304,411,412,1200,3535,3537] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1543,1544,1545,3088,3090,2182,3076,3082,3089,6103,6134,2512,2178,6187,6190,6191,6212,2506,2501,2507,2508,2516,6078,3049,3052] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1970,2237,2238,2239,198,1976,1983,189,190,188,181,197,1989,1987,221,222,180,169,175,3738,3739,3740,2241,2244,214,3409] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [6489,6488,6490,6493,5504,5057,5503,5085,5083,5059,5082,5495,5496,6552,5060,6472,5126,5132,6529,6532,6531,5123,5131,6464,6470,5136,5137,5140,5134,5135,6495,6496,6499,5509,5510] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5528,5736,5587,5779,5406,5392,5608,5391,5401,5377,5402] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6138,6143,2195,2208,2207,2209,6139,6144,3360,4674,3678,3689,3698,3707,6160] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1173,651,889,867,868,871,650,648,649,633,772,804,805,778,815,809,807,811,812,784] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [925,926,4298,4317,4546,4554,4541,4542,911,923,915,4508,4316,4585,4572,4567,4576] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2184,2186,2188,2213,2214,2217,2218,2226,1872,1521,1522,1873,1505,1544,2183,2185,2187,1557] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [387,388,393,971,395,880,420,1194,1193,973,974,985] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3086,3092,3102,3098,2800,2802,2797,2799,2755,2764,2768] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1946,2159,1944,1934,1935,1423,1643,1644,1418,1408,1411,1417] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3953,4252,3961,4617,4599] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5425,5463,5633,5395,5397,4750] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        