
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
        
        load "data/5D7V.pdb", protein
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
 
        load "data/5D7V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [744,1095,728,752,1326,156,1325,147,1097,1099,1098,137,131,132,135,143,1393,1394,1362,1399,1361,1085,1396,1400,1401,1607,1359,1332,1333,1334,784,1658,1663,1358,1360,1072,158,1109,1094,1202,1125,561,701,1123,1124,719,720,723,727,170,172,196,197,198,316,317,300,678,696,700,708,134,697,1071] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4520,4549,4567,4568,4569,5462,5474,5567,5460,5461,4687,4524,4547,4533,4535,5590,5697,5698,5699,5723,5724,5725,5463,5690,5691,6028,5464,4688,5049,5050,4509,4511,5099,5098,5459,5488,5489,5490,5094,5079,5091,5071,5123,5114,5115,5155,4671,4932,5068,4514,4508,5564,5450,5456,5759,5761,5763,5764,5765,5766,5972,5437,5436,5727] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3524,3522,3530,2362,2357,2358,2361,2526,3401,2525,3271,2371,2373,2375,2385,2387,3397,3421,3400,3424,3293,3294,3302,2936,2937,3323,3295,3307,3308,3296,3803,3297,3298,3322,3324,3284,3269,3270,3589,3590,3592,3594,3596,3554,3556,3595,3597,3858,3859,3525,3555,3557,3562,3558,2932,2961,2962,2346,2347,2348,2349,2350,2406,2887,2770,2509,2905,2909,2352,2405,2407,2355,2353,2917,2928,2929] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6674,6675,6677,6678,6734,6733,6735,6854,6853,6837,7215,6713,6715,6686,7634,7726,7727,7622,7649,7650,7234,7264,7619,7620,7237,7245,7257,7289,7290] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [7596,7597,7622,7633,7884,7924,7634,7727,7885,7883,7926,7850,7851,6699,6701,7623,7624,6853,6686,7857,7858,6690,6713,6715,7315,7281,8126,8177,8180,8181,8182,7925,7610,7919,7921,8189] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3572,3921,3925,5804,5742,5743,5741,5805,6121,5674,5810,5813,5814,3635,6090,6094,3950,3917,3634,3636,3953,3952,5812,3641,3644,3645,3574,3548,3508] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2785,2897,2779,2791,2793,2787,8371,2722,8368,8174,8150,8364,2896,8175,8207,8173,8347,8349,8354,8358,8361,2487,2488,8205,8208,8350,8191,8341,8116,8117,2723] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1195,1196,478,1203,1206,1212,557,1209,1211,1213,567,1222,1224,1201,679,571,572,568,663] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2722,8368,7348,8149,8174,8377,8380,8155,8156,8158,2785,2779,2791,2787,2216,2219,2229,2233,2221,8175,2723,2775,2692,2693,2697] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1981,1990,2001,2002,2003,2011,4332,4291,4303,4327,4328,1994,1996,1469,1470,1471,1473,4309,1426,1427,1430,1468,1492] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [5637,5640,5427,5849,5850,5597,5601,5845,5847,5674,5593,5594,5663,5665,5423,5424,5425,5848,5618,5660,5635,5633] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [929,533,534,544,545,535,930,931,932,1157,2164,896,2154,2160,2161,2162,920,922] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2754,3116,3123,3124,3126,4362,4363,4364,4366,3090,2743,2744,3115,2753] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2457,2458,2460,2461,8398,8399,8430,8431,8351,2477,2478,8355,8420,8422,8456,2475,2452,8356,2462] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [7720,7721,7722,7726,7731,7216,7738,7737,7015,7110,7200,7747] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        