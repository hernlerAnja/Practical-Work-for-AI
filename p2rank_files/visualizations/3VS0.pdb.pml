
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
        
        load "data/3VS0.pdb", protein
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
 
        load "data/3VS0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3290,3291,3292,3313,3314,3316,3318,3322,3323,3343,3374,6880,6885,6886,3095,3125,3128,3134,3159,3126,3158,3315,6625,3344,3347,3412,3413,786,777,778,779,598,599,3429,6787,6788,6789,6811,6812,6813,6815,6819,6820,3161,6778,3383,3388,6840,3389,6871,6908,6910,6841,6844,3127,4250,6909,6656,6631,6592,6809,4242,4062,4063] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5533,5556,5560,5947,5561,5552,5553,5946,5922,6014,6019,6022,5175,5176,5930,5585,5388,5509,5534,5001,5002,5003,5005,5158,5160,5161,5508,5058,5008,5059,5163,5168,5172,5174,5493,5527,5529,5530,5006,5541] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2035,2053,2054,2447,2448,2515,2523,1675,1558,1559,1661,1560,1507,2028,2034,2042,1506,1673,1504,1502,1503,1508,1509,2057,2061,2062,2086,2423,1677,2009,2010,1660,2031,1889] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [609,610,3327,3335,3346,630,631,632,667,3376,937,916,936,925,952,940,945,960,962,949,599,2218,2219,2220,634,638,665,2211,3359,3363,3364,3366,3368,2213,2214,2217,2184,2185,2189,2192,2193,3403,3377,3402,3408,951,3362,917] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5260,5310,5280,5287,5290,5281,5279,5405,6038,6039,6042,6044,5262,5263,6060,6019,6018,6026,6036,6037,5311,5282,5493,5190,5492,5494,5174] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2540,2543,2544,1764,2545,1762,2561,2527,2538,2519,2520,1675,1993,1905,1906,1812,1813,1788,1791,1994,1763,1995] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4074,4379,4380,4381,6860,6863,4095,4400,6824,6832,4131,4129,4389,5713,5716,5717,5718,5719,4073,4102,4098,4094,4096,4401,4395,5685,5684,5682,5683,5687,5688,6849,5712,5710,5693,6873] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3150,3116,3118,3119,3152,3086,3041,3042,3087,4461,4462,4463,3043,4464,3122,3038,3039,4257,4457,4460,4247,4255,4256,4445,4446,4447,4443] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4018,4024,4026,4786,4789,4031,4048,4028,3965,3961,3962,4009,3977,3984,3985,3986,3515,3517,3528,3529,3514,3990,3889,4796,4794,4791,4811] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [53,51,63,65,497,520,1290,1291,526,545,554,560,562,521,522,561,563,513,564,567,501,498,652,1295] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1730,1736,1973,1960,1692,1689,2542,2544,2545,1760,1762,2561,1722,1725,1726,1696,2560] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [6510,6613,6615,6616,6647,6649,6538,6584,1000,6539,999,6583,6536,783,788,791,792,793,794,983,987,998] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3577,3578,3579,3580,3581,3582,4857,3597,3606,3746,3748,3750,3752,4861,4865,3857,3858,3860,4867] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [6674,6676,6512,6272,6380] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        