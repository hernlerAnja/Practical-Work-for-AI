
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
        
        load "data/5OQ4.pdb", protein
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
 
        load "data/5OQ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4949,3337,3340,3371,3373,491,3341,3374,1056,1057,1058,1084,1092,1095,3106,3108,6236,3372,3385,4950,3348,3347,3349,477,3093,3109,4988,489,490,513,4979,4980,4981,1086,542,6212,3102,3100,476,3089,3360,4892,3643,3644,3678,461,462,3361,4445,3364,4430,3674,3675,3676,3677,3679,4444,3721,3723,4912,4943,5037,4940,4942,4944,4945,4946,4939,5018,1097,1120,1122,1123,4948,4952,4956,5007,532,534,5019,5017,6210,4915,4916,4917,5053,4913,4914,5056,4891,5070,5076,4855,4857,3402] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5720,5721,4556,4765,5169,5193,4623,5806,5807,5808,5809,4807,5798,5800,5801,4557,4601,4555,4783,4785,4542,5705,5693,5207,5230,5229,5849,4561,4568,4567,5064,5066,5147,5152,5148,5172,5166,5159,5163,5164,4851] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4408,4409,4410,4450,4473,4474,441,948,950,3991,3629,3630,3663,3965,3631,4454,4455,4451,4452,4449,3633,3635,3964,423,3957,1257,1249,970,1220,1221,3990,946,959,440,442,3642,3637] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2596,2604,2610,2613,2616,2620,2619,2600,2594,2589,2590,2595,6285,6316,6317,6373,1569,6404,6405,6371,6375,2859,2860,2660,2661,6258,3140,3143,2824,2832,2833,2834,2827,2621,2622,1560,1564,3181,3179,3180,3182,3178,1578,3166,3167,3168,3174] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5647,5821,5822,5830,5836,5840,5632,5638,5640,6424,6421,6422,6301,6309,6277,6279,6308,6395,4873,4875,4842,6333,6334,6335,6336,6360,4838,4839] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2273,2274,2275,2278,3800,3505,229,205,222,183,186,187,3834,3835,3836,177,2270,197,198,2271,206,2049,3837,230,2017,2043,2036] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5221,5220,5256,5686,5681,6768,5680,5697,6766,4577,5253,5284,5290,5295,6765,6776,6741,5241,5248,6737,6739,5243,5306,5308,5310,5694] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2243,2241,2242,3803,3805,4830,3756,4831,4832,3774,3781,6321,6313,2236,2228,2229,6326,4815,6327,6328,6332,6337,6338,6343,6340,3456,3784,3785] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1515,1528,1529,1608,2212,2248,2251,1568,1909,2252,1910,2218,2220,1545,1544,1893,2001,2247,1546,1891,1892,1876,1527,1584] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3644,462,4445,940,1069,959,4430,4444,4454,4446] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3611,3620,3333,3613,3614,434,446,448,403,404,406,3624,3626,456,3330,464,467,468,470] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3206,3215,3224,2974,2971,2973,2941,2433,1840,2911,2918,2940,2942,1846,1852,2073,1856,1858] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1445,1444,1945,1936,1674,1676,1677,1422,1442,1433,1438,1973,1962,1963,1974,2193] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1100,1143,1142,1144,939,925,4707,1070,1071,1148] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2188,2207,6339,6340,6351,6338,6341,2243,2240,3803,3805,3806,1985,2249,2229,2230] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4336,4494,4495,4368,4651,4049,4483,4485,4372,4379,4367,4074] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1099,4433,4435,5070,5069,5155,5157,5156,4446,4445,940,4430,4443,4444] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5818,5604,5605,5608,5609,4908] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        