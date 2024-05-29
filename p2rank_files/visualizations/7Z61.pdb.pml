
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
        
        load "data/7Z61.pdb", protein
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
 
        load "data/7Z61.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4908,5044,5050,5051,4905,4906,4907,5046,5047,1127,3349,3629,3663,968,4439,1097,469,472,473,3346,3348,967,1099,3345,4882,4883,3661,3664,3662,4422,4424,4425,5075,3659,3660,4438,4440,3708,4850,5061,5064,5067,4931,4932,4933,4934,4935,3359,4929,4930,4968,4970,4971,4972,5009,1125,1149,1150,1151,1110,1120,1123,1124,1158,1111,4941,4903,4936,4939,4940,1084,1085,1086,3325,3326,1081,1112,501,502,1114,3357,3322,3358,4965,4998,553,543,545] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5799,5803,5804,5805,5802,4617,4576,4577,4798,4774,4595,4550,4549,5138,5143,5155,4755,4756,4776,4842,5139,5053,5058,5794,5796,5054,5056,5797,5798,5716,5157,5163,5160,5184,5717,5700,5199,5689,5693,5191,5219,5221,4561,4562,5187,5193] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3616,3948,434,1285,3618,3620,3942,1275,1248,1277,4445,4402,4444,453,975,978,4404,976,977,3976,4467,4446,3950,3941,3965,3975,449,450,451,452,974,996,998,3625,3622,3621] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [6262,6292,6293,6294,6381,3159,3166,3167,6343,6346,6347,6345,3153,3164,3165,3163,1605,1597,1615,2574,2819,2579,2580,2581,2589,2595,2645,2575,6237,2585,2817,2807,2808,2809,2812,3177,3178,2813,2844,2845,3126,6333,6379] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3370,3369,3091,3093,3301,3332,3333,3334,3356,503,501,3078,3087,4941,4943,4947,6210,6213,4939,4940,4979,3074,6187,6189] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6286,5837,6285,6369,6370,6373,6311,4866,5643,5809,5833,6278,5636,5834,6313,6254,6256,5628,5635,5634] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2301,3489,3490,2299,233,216,3820,2305,2310,188,198,2297,207,208,209,2037,2298,217,2043] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3627,968,4439,987,1097,473,967,1099,449,450,451,452,974,3625,3622,3621,4445,4444,453,4448,4449,4446,4447] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [2269,3759,4823,3760,6296,6297,6298,6304,6305,6309,6290,4806,2268,3439,3441,2267,3769,3770,3766,3788,6308,6314,6315] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5675,5246,5677,6714,6716,5243,5279,5283,5676,5234,5211,5212,5691,5692,5693] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2269,3759,2010,2227,2214,6309,2256,2255,3778,3779,3766,3788,3790,2266,2232,2228,6315,6317] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1889,2956,2958,2959,3191,1883,2925,2926,2927,2898,2896,2900,1893,1877] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1912,1901,2286,1913,3445,2282,3462,3463,3466,3467,3468,2285,2283,3157,3184,1594,1598,1595] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [5560,5587,5768,5887,5930,5582,5583,5558,5574] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [2292,3785,2301,2304,2294,2300,3489,3490,2299,2298,3793,3818,3822,3800,2282,3456,3465,3830,2288,3829] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [4131,4788,4790,4133,4580,5109,5111,4783,4785,4786,4166] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2876,2877,2879,3169,3179,3174,3185,3163] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        