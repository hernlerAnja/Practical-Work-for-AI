
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
        
        load "data/1JST.pdb", protein
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
 
        load "data/1JST.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5127,5122,5123,5568,4746,5124,5126,5128,4629,4745,4747,4608,4578,4579,4589,4592,5132,5149,5152,5569,5160,4574,4576,4577,5640,5641,5642,5645,5646,5648,5552,5567,5540,5182,5545,4730,4628,4575,5146] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [524,535,7900,7481,7490,186,7491,25,7922,7924,7925,7932,7921,550,536,551,1,35,36,17,223,222,533,534,525] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [257,256,258,634,635,636,637,639,502,644,1080,140,242,681,1081,661,664,672,87,658,104,101,102,89,90,91,94,95,141,88,680,688,692,695,86,1059,1064,1152,1153,1154,1157,1158,1160,1052,103,110,259,1159,429,501] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [5024,4523,4524,5039,4522,5038,3002,3444,4674,5022,5012,5021,2993,5013,5116,4710,5015,4489,4504,3412,4513,555,3433,3434,3435,3436,3437,569] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [2869,2872,3525,2868,2860,3524,1207,1208,1216,1217,3531,3560,1230,2856,2861,2854,3165,1246,1247,1245,3557,3558,3559,3591,1232,1233,1237,3705,2863,3704,4376,4378,3675,3681,3685,4364,3678,3164,2904,3155,976,1202,1203,1204,3533,3534,3527,3532,3495,978] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [2342,2343,648,1139,1097,1122,1109,508,528,645,647,227,1110,223,220,1094,653,650,677,477,883,7496,7125,7146,7144,7145,7497,510,475,478,7123] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [5947,5948,5954,5960,6670,6680,6675,6904,6906,6913,6921,6714,5981,6694,6705,6711,6898,6932,6934,6892,5716,5719,5722,5726,5702,5728,5955,6960,5714] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [3829,2583,2584,3815,3800,3810,3801,3873,2950,2953,3750,3752,2541,3845,3846,3852,3517,3847,3851,2566,2570,2895,3511,3754,3760,3505,3500,2922,2925,2918,2919,2891,2916,2892,2577,3812] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5720,5721,8045,8074,8077,8079,8166,8163,8165,8167,8161,8168,8173,8169,8852,7342,8193,8192,8856,8864,8866,8047,8048,8012,8013,7352,7356,7348,7349,7351,7350,5735,5737,5733,5734] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [1431,1420,1422,1868,1869,1435,1438,2184,2177,1824,1826,1829,1835,1842,1840,1841,1434,2183] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [8288,8298,8317,8289,8297,8303,7053,7055,7413,7988,7054,7407,7379,7406,7404,8242,8248,8237,8238,7058,7071,7072,7441,8339,8340,7993,7999,8005,7383,7996,7998,8361] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [4997,5136,5137,2637,2633,2638,2639,5598,5601,5582,5141,5156,4965,4966,5626,5627,5585,5610,6830,6831,2657] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [8021,7358,7360,8019,8020,8022,7357,7356,8047,8048,8013,5464,5691,5692,5696,5704,5705,7652,5757,7653,5735,5737,5755,5733,7643,7393,7983] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [5908,5922,5905,5910,6357,5872,6672,6671,6323,6328,6358,6314,6330,6356,6678,6665,5919,5914] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [1815,1817,1812,1816,1764,1972,2166,2157,1814,2158,2144,2150,2155,2159,2121,2122,2123,1973,1974] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [8095,8097,8545,8546,8053,8094,8096,8098,8085,8087,8542,8543,6897,6930,6933,5713,6940,6942,6943,6928,6936,6937,6944,8057] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [7125,512,7481,461,462,463,464,465,466,510,474,475,480,7475,7128,7129,7130,7126,7127,528] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [3596,3597,3599,2415,2445,2442,3609,3610,3608,4058,2454,2456,2447] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [4257,4259,4258,3774,3785,3776,3775,4224,4194,4198,3796,4228] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1234,1238,1459,2408,2410,1460,1226,2446,1212,1214,1219,2407,2409,1228,1231,2404] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [5841,6054,5830,5842,5828,5823,5825,5824,5826,5827,5829,5809,5544,5199] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [4935,7056,7977,7978,7979,7975,7025,7046,7044,7051,7964,7965,7045,7963,7961,4932,4899] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [4874,4846,4847,4876,7666,5663,5666,5675,4849,5665,5671,7628,5763,5767,5762,5667,5670] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [3477,447,3476,3475,3474,3478,2568,3489,3490,2537,2558,2557,3487] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [6806,6808,6798,6800,5326,5294,6568,6549,6551] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        