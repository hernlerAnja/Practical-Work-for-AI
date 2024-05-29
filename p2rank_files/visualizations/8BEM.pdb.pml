
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
        
        load "data/8BEM.pdb", protein
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
 
        load "data/8BEM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3305,2464,3312,3313,2338,3314,3316,3317,2356,3319,2311,2340,2341,3301,3302,3227,3204,3318,3228,3320,2862,2855,2858,2875,2876,2882,2462,2460,2479,2450,2448,2449,2306,2308,2309,2305,2822,2839,2834,2836,2842,2848,3322,3306,3321,3202,3203,2877,2575,2576,2577,2609,2573,2585,2818,2816,2817,2801,2673,2800,2548,2550,2854] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4460,4972,4591,4455,4456,4457,4459,4461,4462,4463,4490,4491,4465,4590,4950,4951,4955,4988,5456,4991,4995,5009,5015,5454,4975,5360,5437,5361,4601,4603,4476,4931,4934,5446,5447,5451,5452,5453,5455,5337,5438,5441,5440] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [508,509,3910,912,502,503,517,909,910,518,889,1125,911,4088,4081,4102,4103,3912,1114,1126,1124,507,1143,4030,3945,3946,880,3935,3947,3969,4006,4027,3936,879,1992,1995,4007,1978,1989,1983,4031,4094,4096,4060,4082,4059] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [319,689,691,673,671,193,194,196,197,1175,1174,1156,1157,1160,1171,1173,1170,1172,329,331,226,317,318,225,198,199,710,713,737,1083,717,1082,697,677,694,703,709] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [7084,7080,6596,6620,6621,6719,7583,6592,6593,6594,6598,6599,7079,7063,7489,7488,7565,7582,7584,7120,7124,7144,7566,6729,6718,7060,6732,6731,7568,7569,7574,7575,7096,7101,6597,7110,7104,7117] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4040,3105,4034,4037,3490,3491,3495,3496,4039,3493,3101,3102,3109,3115,3103,4045,3503,3504,2003,3505,3473,3475,3476,4330,3131,3132,2024,2026,4051,4052] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4935,4933,4934,4603,4604,5438,5441,2121,5442,4741,4742,4739,4710,2118,5443,5445,5444,5457,5458,4709,4620,4685,4682,4716,4950,4951,4806,5437] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [6732,6733,6748,6847,7062,11,7569,7570,7571,7572,7573,6837,6838,6814,6839,6815,6817,1,7080,7079,6871,7063,6935,7566,6870,6729] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1282,1283,1253,1211,1255,1016,1018,1019,1032,1237,1370,1406,1236,1248,1249,1378,1371] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3422,3423,3376,3377,3351,3388,3389,3393,3395,3511,3162,3163,3177,3546,3378,3161,3518,3164,3510] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3194,3195,2874,2877,3598,3637,3643,3644,3385,3386,2904,3624] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1049,1050,1246,732,1458,1484,759,1497,1245,1504,1503,1495,1496] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7776,7423,7681,7769,7680,7422,7424,7804,7635,7636,7634,7647,7651,7652,7653,7654,7425,7426,7427,7438,7609] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5536,5534,5564,5563,5294,5296,5687,5298,5299,5652,5518,5492,5529,5530,5310] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [7643,7901,7895,7902,7455,7456,7644,7136,7139,7463,7882,7856,7166] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        