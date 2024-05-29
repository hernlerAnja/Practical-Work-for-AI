
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
        
        load "data/3DPD.pdb", protein
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
 
        load "data/3DPD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4993,4995,3431,4971,4972,472,3715,473,948,949,950,1079,1081,1108,1109,1110,1107,4994,4996,4997,5133,5136,3432,3714,967,969,3747,3748,3749,3750,5166,4510,4513,4524,4526,4525,3745,3746,3793,3794,5156,5150,5149,5237,4935,4936,4937,4992,5017,5018,5020,5021,5025,5029,5022,5023,5024,5019,5026,5028,5057,5049,5059,5060,5100,1131,1132,1133,5109,5117,1130,1140,1106,5097,5098,5099,5058,5087,543,545,3441,3442,3443,3444,3445,3412,1068,1064,1067,1105,1063,5061,487,501,1094,1096,553] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4647,4635,5778,5805,5806,5287,5273,4666,5894,4648,5790,5886,5780,5781,5782,5309,5310,5145,5147,5883,5884,5885,5228,4845,5246,5244,5249,4703,5887,5888,5891,5892,5893,4865,4863,4844,4681,4636,4887,5146,5144,5252,5227,5232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [434,452,1268,435,1236,1259,978,979,980,1230,1211,4036,4062,3702,3705,3706,4034,4028,1266,1267,4529,4534,4535,453,4530,958,959,4061,4489,4490,4553,960,4759,922,4554,4531,4532,3700,3701,3707,3708,3734,3736,4098,4025,4027,4059,969,451,3713] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2019,2279,6406,2222,2236,3850,4912,6407,6393,6396,6397,6402,6378,6385,6403,6404,2259,2260,6405,2020,2273,3874,3877,3856,3857,3861,2209,3876,3855,3845,3852,2270,2271,2272,3527,6386,3827,2240] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3160,3170,3171,3172,3173,501,502,503,3179,3454,3456,3177,3180,3441,3443,3418,3419,3387,3420,5036,5029,5030,5028,6300,6299,6275,6277,5066,5068] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6350,6472,6349,6381,6444,3251,3252,3253,3245,1599,3239,6356,6382,2245,6429,2665,2667,2671,2659,2660,6325,2661,3214,6443,6435,6440] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [4955,5732,5733,5717,5725,5723,6342,6344,6460,6461,6463,6486,6487,6489,6462,5898,4922,6399,6416,6374,6366,6400,6401] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [217,233,208,209,216,3908,240,241,3575,3576,230,2296,3871,2301,2303,2304,3905,2305,2308,2309,3906,198,188,2314,2298,2051,2049,2045] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6831,5766,5779,5780,5781,5333,5334,5335,5336,5301,5300,5323,5771,5764,5765,5360,6807,6841,6840,5394,5395,6805,5321,5328,5329] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [930,935,1176,1178,4787,1172,947,948,949,950,1080,1081,1110,1152,1154,1175,4545,4779,4780,4792,1158] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2675,2659,2660,2905,6325,2661,2894,2927,2930,2931,3264,3214,2893,2895,2904,3251,3252,3253,3249,3239] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [950,1109,1110,5236,5234,5241,5260,4819,4824,4826,4814,4810,4515,5150,5149,5237,4510,4513,4524,4526,4544,4823] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2242,2249,2251,2282,1989,2281,1939,1545,1613,1923,1940,1559,1573,1574,1575,1576,1615,1596,1597,1598,2278,2277,1599] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3401,3402,3403,3404,3691,445,457,3695,3697,458,460,3682,3685,415,417,462,467,3686,475,478,481,3392,3397,3396] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3011,3043,3045,1346,2510,2490,2496,2502,2507,1879,3013,2982,2985,1343,3294,2486,1887,2107,1886,2105,1876,1882,1870] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2296,3871,2302,2303,2304,2305,2308,3908,3575,3576,3542,3915,2298,3887,3916] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5649,5672,5676,5857,5878,5975,5671] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        