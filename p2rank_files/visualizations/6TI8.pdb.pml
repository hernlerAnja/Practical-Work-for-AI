
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
        
        load "data/6TI8.pdb", protein
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
 
        load "data/6TI8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2522,2479,2480,3490,3492,2477,2520,2620,2622,3020,3021,3383,3391,3408,3484,3483,2992,2985,2989,2469,2470,2471,2472,2521,2608,2973,3012,3013,2993,3407,3016,3485,3486,2965,2967,2624,2966,2968,2847,2962,2963,2964,3092,2467,2468,2474,3042,3045,3084,3006,2424,2426,3054,3372,3373,3384,2486,2487,3392,3356,2490,2491,2494,2499,2500,2501,2503,3491,3514,2502,2504,2987,2543,3000] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3445,3447,7316,7317,7325,7977,7344,3449,7328,7332,3010,7360,7361,7478,7481,7482,7483,3153,7363,7362,7503,7083,3435,3436,3437,7309,3187,7314,7509,7510,7937,7938,7939,7940,7487,7493,7084,7087,7088,7089,7484,7491,7931,7962,7963,3448,3107,3125,3114,3160,3161,3162,3163,3052,3103,3127,3130,3131,3157,4160,4161,4162,5347,4154,3109,3110,4152,4153,3443,3442,3159,3185] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [239,1253,735,249,1257,1259,279,281,246,382,383,512,851,226,227,233,234,236,787,1175,788,1150,1158,1250,1251,1252,812,754,228,230,231,280,752,367,729,730,731,732,733,734,756,759,760,767,773,779,780,783,614,740,1174,544,821,859,183,185] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [876,874,881,930,892,929,1209,924,927,928,1213,1215,1216,1210,1214,894,897,898,1933,1934,1935,920,954,952,4827,5226,5247,5231,5227,5106,5108,5104,5053,956,5105,5107,5057,5678,5680,5711,5726,5075,5060,5061,5069,1202,1203,1204,5058,4828,4831,5228,875,5687,5688,5689,7603,7601,1906,1920,1925,1926,1927,1913,5253,5254,5677,5685,5235,5237,4832,5679,5690,5694,5088] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [6968,7015,7016,6973,6974,6980,6981,7523,7527,7528,7890,7915,7891,7879,7898,7880,7500,7513,7519,7520,7501,7914,6963,6965,7492,7490,7496,7499,6966,7102,7494,7354,7480,7470,7471,7473,7472,7474,7475,7992,7997,7999,7116,7990,7991,7561,7552,7507,6918,6920,7599,6961,6962] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [5243,5244,5257,5263,5264,5267,5271,5664,5272,5639,4709,4712,4705,4707,4711,4710,4758,4759,5739,5740,5741,5647,4862,5746,5748,5245,5663,4846,5214,5215,5217,5216,5218,5219,4995,4760,4860,4664,4706,5335,5343,5305,5296,4662,4718,4725,5251,5238,5240,5236] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4825,4826,4827,4801,4812,2231,2232,2230,2233,2235,1966,1967,2224,1947,1948,918,919,921,955,914,917,953,946,947,978,905,5121,5124,4495,4497,4517,5120,4840,5123,4499,4516,4802,4803] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [7638,7667,7668,7670,7660,7662,5404,5703,5704,5705,7952,7954,7956,5261,7517,7632,7614,7626,7633,7637,5684,5691,5693,5694,5701,5412,5414,5413,5406,5437,5438,7615,7616,7617,5686,7621,7935,7944,5360,5358,5376,5382,5411,5365,5377,5381,6418,5359,5361] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [7081,7083,7057,7058,7059,7096,7463,7379,7377,6771,6773,3152,3154,7380,3188,7376,6754,6756,6751,6752,6753,6755,4457,4459,4460,4451,3181,3186,3211,3180,3179,4462,7082,7065,7066,7067,3138,4174,3146,3147,3150,4193,4194,4175] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3001,3002,3003,3429,3430,3431,3432,3433,2975,2980,2595,2589,7760,7796,7798,8886,2578,2584,2588,7767,7769,7806,7323,7761,7765,7797,7739,8911,8909,7331,7736,7740] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7016,6980,6981,6984,7002,7891,7879,7898,7880,6985,7863,7997,7998,7999,8021,7214,6994,6996,7116,6988] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [768,769,343,347,348,1196,1198,1200,5067,1199,5076,5083,770,5481,5486,5514,5516,5509,5545,5546,6635,6660,5547,337] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5612,5858,4728,4729,4739,4741,4742,5770,5852,4732,5648,5864,5855,5640,5628,5629,4718,4725,5647,5746,5748,5747] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [250,261,1123,1281,1381,1280,1139,1140,249,1257,1258,1259,246,1159,1255,1158] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3886,3885,3899,3900,3901,3902,6394,6107,6115,6114,6168,6355,6357,6122,6142,6167] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3886,3851,3853,3866,3859,3858,4099,4101,6156,6158,3911,3912,6140,6141,6142] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [8407,1684,8410,8393,8406,1659,1631,1632,1685,1639,1624,1872,1874,8391,8392] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7175,8088,8087,8014,7853,8105,8016,8019,8020,8022,8104,7215] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        