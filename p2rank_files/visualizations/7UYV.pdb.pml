
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
        
        load "data/7UYV.pdb", protein
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
 
        load "data/7UYV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5857,5858,5859,5860,4786,4787,5749,5750,5760,5746,5755,4802,4809,4790,4794,4798,4805,4769,4767,4768,4774,4775,4777,5380,5383,5387,5777,4772,5881,5882,6044,5724,6034,5883,6052,5113,5335,5336,4964,5853,5854,5861,4950,4823,4824,4825,5218,5776,5852,5340,5358,4983,5112,4965,4966,4771,5352,5361,5074,5070,5073,5875,5873,5874,5032,5033] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2430,2431,2479,2480,2481,3013,2606,3017,3056,3462,3461,3038,3035,3064,3423,3057,3060,3545,3432,3538,3542,3543,3539,3546,3537,3012,3434,2873,3544,2428,3029,3031,3046,2423,2424,2425,2429,2427] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [763,767,140,760,136,137,138,141,1257,1248,1249,1250,1253,1254,1256,1172,1173,319,720,734,738,741,732,715,716,1134,1148,768,795,192,193,194,142,143,1255,144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2451,2452,2453,2622,2717,2720,2621,2716,2722,2639,2715,2721,2463,2692,2685,2688,2689,2687,3713,3401,3566,3568,3544,3558,3559,3562,3560,2620,2759,3729,3737,3581,3391,3699,3712,3683,3582,3545,3437,3542,3543,3539,3427,2442,2443,2430,2431,2470,2471,2481,2446,2456,2465,2466,2469] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [7077,7079,7204,7571,7078,7572,7594,7597,7576,8020,7463,7022,7028,7623,7616,8021,7023,7025,7026,7590,7021,7990,7999,8004,8098,8101,8102,8103,8104,8096,8097,7218,7219,7358,8105] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [5977,5979,5978,5980,5983,5985,5919,7446,7447,7448,7841,7843,7845,7842,5918,5901,5915,5921,5897,5072,7865,5102,5989,7445,7429,7430,7840,7863,7864,7860,7861,7867,7868,7871,7904,6007,6008,6006,7873,7875,5062,7866,5026,5063,7903,5967,7435,7437,5942,5936,7822,8063,8065,8066,8067,5935,7434,7436] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [561,554,553,985,987,989,572,963,570,571,1216,966,1215,1218,1219,3668,3669,2749,986,988,984,3674,3665,3664,3652,3604,3627,3629,3630,3603,3600,3606,3620,3621,3586,3671,3662] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [1269,1270,1271,1255,333,334,335,481,183,184,194,1277,1278,1279,148,149,155,156,144,146,167,171,402,169,178,180,181,159,437,443,444,352,398,400,170,179,182,439,442,1254,1256,1112] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [7218,7219,7220,7357,7237,7056,7059,7287,8102,8103,8104,8119,8127,7315,7318,7968,8125,8126,8117,7319,7040,7041,7030,7066,7063,7064,7065,7079] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2926,2927,2777,2307,2978,2944,2767,2979,2739,2802,2300,2173,2176,2206,2097,2233,2234] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [5276,5278,5260,5153,5155,5261,5092,5302,5120,5301,9023,9051,5130,9050,5129,8914,8915,8993,8990] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [1694,1479,1480,1447,1752,1755,1135,1136,1137,1138,1139,782,783,1769,1772,1773,1785,1786,1751,1734,1735,1736,1737,1742,1748,821,822,823] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [9009,8387,8405,8433,8407,8388,8390,8391,7896,7897,7899,5017,8392,7898,5055,5056,5060,5061,5041,5016,8981,9006,8992,8997,9000,9002,5045,5093,8195,8196,8197,8411,7859,7853,7861] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3080,3081,3082,3120,4032,4033,4034,4035,4046,4049,4071,4050,4070,4040,3753,4084,4067,4078,3769,3768,3992,3426,3428,4083] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [6298,5403,5405,6341,6342,6338,6339,6340,6084,6083,6295,6384,6051,6389,6390,6373,6376,6377,6356,6346,5748,5749,5747,5751] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [2707,2708,1040,2183,1616,2180,1579,1592,1582,1594,1580,1042,1583,1584,2184,2185,2189,2192,1005,2672,2737,2740,2695,2696,2697,2702] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [7639,8551,8552,8553,8554,8555,7992,7993,8559,8565,8511,8287,8288,7995,8255,8589,8590,8597,8602,8603,7640,7641] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3669,1008,1009,2749,986,1007,984,1012,1015,3691,3665,3670,552,553,985,987,571,1017,1016,1010,2709] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [6018,6034,5883,5877,5881,5882,4790,4794,4798,4805,4807,5714,5896,5897,5070,5073,5875,5036,5033] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4449,4448,4450,3923,3956,4305,4109] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6064,6262,6720,6721,6723,6586,6581,6415,6414,6229,6230,6232,6719] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [1658,1625,1811,2112,2113,2114,1969] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [4208,3778,3780,3781,3858,3391,3706,3709,3712,3857,3839,3807,3568,3715] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        