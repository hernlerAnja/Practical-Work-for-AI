
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
        
        load "data/2XYN.pdb", protein
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
 
        load "data/2XYN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2148,2201,2150,2202,2306,2613,2614,2175,2203,2320,2321,2318,2429,2430,2405,5426,2139,4703,2146,2149,2151,2152,2221,2177,2179,2671,2674,2698,2178,2180,2176,3131,3133,3132,3125,3126,3127,3134,5429,5422,5427,5434,2653,2654,2663,2664,2667,3050,3051,3052,2639,2636,2641,2632,2634,2618,4672,4673,5420,2647,2737,2695,2491,2492,5401,5421,4670,5419,5408] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4181,4178,4180,4617,4179,5035,5036,5037,4961,4962,4963,4176,4177,4302,4303,4301,4454,4455,4558,4559,4560,4370,4371,4372,4373,4374,4392,4545,4544,4546,4182,4153,4609,4610,4613,4585,4593,4582,4620,4644,4148,4203,4150,4151,4576,4287,4152,4295,4299,4543,4204,5029,5030,5031,5034,4944,5045,5047,5038,5042,4934] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [114,167,116,117,118,591,615,616,584,586,267,268,265,266,253,554,376,565,450,566,122,119,120,599,606,141,142,143,144,145,980,1009,1089,1007,1008,351,1082,1083,1081,1088,350,1097,375,449,650,146,623,626,619] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4801,4780,5389,5391,5338,5357,5361,5700,5670,5640,5644,5637,4808,5819,5812,5814,5815,5816,5772,4807,5794,5768,4803,4804,4779,4752,4754,4747,4751,4755,5625,5645,5639,5838,5818,5813,4729,4730,5615,5626,5393,5394,4749,5359,5397,5305,5311,5313,5314,5767,5775,5778,4823] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5259,1537,1520,1526,1529,1530,642,679,5246,5134,5138,5139,5260,5262,5137,1270,1271,981,982,983,985,5126,649,5145,5261,5233,1258,1557,1558,1564,1256,1257,1584] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1554,1555,5514,5515,1539,1553,1556,1524,5526,5517,1469,1701,3596,3605,3609,1709,5513,5516,5239,1523] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5064,4384,4386,4387,4402,4403,5061,5063,4848,5044,4411,4881,4882,4847,5065,5066,5069] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1554,1555,5514,5515,1552,1553,1524,1557,1558,1560,3590,3593,3594,5491,5513,5490,5170,5172,5482,5488,5516,5233,5234,5237,5239,5145,5157,5261,5236] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [748,766,770,774,776,777,802,1487,746,749,768,1489,1490,1493,1750,1751,1453,1773,1457,1774,1738] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3490,3524,3526,3527,3529,3530,2799,2819,2821,2797,2800,3494,3795,3796,3997,2829,2855,3764,3765,3766,3776,3777,3763] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2659,2657,2661,2733,2740,2745,2705,2707,2709,2780,2781,3088,4671,4672,4673,2652,2654,2734,2737,4643] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4936,4937,4939,5383,4636,5193,5194,2723,2735,2738,2722] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4077,4553,4490,4081,4238,4241,4242,4243,4106,4100,4240] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5250,5219,713,5252,5725,5739,5253,712,711,674] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4847,4820,4822,4823,4919,4920,4819,5023,5024] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3446,3449,3678,3584,3722,3717,3859,3862,3864] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        