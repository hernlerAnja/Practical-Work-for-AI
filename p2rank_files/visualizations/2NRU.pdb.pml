
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
        
        load "data/2NRU.pdb", protein
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
 
        load "data/2NRU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7867,7241,7857,7897,7240,7905,7238,7256,7199,7231,7200,7203,7204,7829,7833,8196,8221,7825,7826,8197,7254,7255,7800,7813,7819,7805,7195,7197,7246,7292,7293,7294,7249,8220,7780,7781,8296,8297,8298,7396,7395,7252,7275,7276,8204,8302,8305,7778,7802,7243,7244,7380,7659,7660,7807,7661,7775,7776,7779,7797,7893] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [974,973,5456,5457,941,942,968,972,5339,5336,5337,5338,5670,5671,5905,5937,920,921,5914,919,912,918,925,5912,5913,5484,5915,2020,5462,5467,2019,5031,5034,5035,5036,5463,5465,2021,2029,5030,7909,7901,2018,2027,4984,7202,5307,821,914,863,5303,1258,1259,1260,1254,1256,1248,998,1246,1249,5477,5455,5938,5951,5299,5300,5952,5291,5292,5335,5284] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [3161,3164,2627,2628,3168,3169,3192,3534,2629,2995,3558,3559,3635,3112,3634,3636,2573,2574,2575,2576,2580,2581,2582,2584,2730,2747,2748,3113,3114,3115,3116,3097,2731,2858,2889,2893,3202,3190,3240,3232,2598,2601,2608,3640,3642,3643,2612,2615,2597,2605,2850,2851,2857,2852,2855,3656,3535,3542,3134,3137,2578,2579,2715,3110,3121,3142,3111,3148,3140,3154,3160,3141,3135] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [7668,7669,3302,7670,7788,3300,7787,7789,8282,8283,7666,7790,7793,7361,7365,7796,7362,7366,7367,8281,7650,3598,3596,3588,3340,7630,7622,7623,8236,8242,8243,8244,8245,8246,7798,7814,7815,7638,8268,8269,3313,3275,3278,3279,4367,3298,4369,4366,3308,3309,3311,3594,3305,3338,3258,3257,3600,3255,3262,3599,5578,4359,4360,4361,3158,4368,4347,4354,5576,3200] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [5495,4909,4908,4910,4914,4915,4961,4962,4963,4916,5489,5498,5536,5502,5503,5526,5527,5566,5574,5889,5890,5865,5966,5328,5329,5965,5967,5445,5447,5446,5065,5449,5450,5330,5873,4931,4932,4934,5974,5519,5863,5866,4918,4920,4921,5482,5494,5471,5474,5476,5466,4912,4913,5049,5444,5488,4865,4867] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [292,273,274,1194,1303,1294,1295,1202,1296,1300,1301,1183,243,244,245,247,803,378,773,804,1218,1219,805,237,238,239,241,242,291,290,797,800,784,827,831,832,855,823,824,825,865,1195,774,776,778,779,556,777,393,394] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [5929,8258,8260,8262,5493,5927,5910,7922,7923,5483,7920,7927,7938,7939,5634,5636,5637,5645,5669,9023,7943,9022,5919,7965,7974,7975,7963,7944,8248,8250,7824,8241,7823,8000,8002,5608,5609,5612,5613,6698,6700,5596,5590,3244,5589,5591,5643,5607,5931,5491,5492,5481,5482,5592,5632,6697,6692] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [7637,8020,8045,8046,7645,8044,8001,7638,8268,7997,8026,7646,8269,3581,3583,7628,8042,7627,7629,8071,8073,8023,3149,3150,2701,3128,3131,3133,2697,2702,9270,8066,9271,9273,2685,9247,9248,9272,8104,3123,3582,3584,8102,8103,2650,2665,2663,9307,2696,3148,3158] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [6976,6975,360,365,1244,5742,5744,354,359,5314,5315,5296,5298,5666,5668,5689,5933,5939,5715,5695,5692,811,812,813,1240,1241,1242,5305,5306,5307,796,1243,364,5670,5711,5712,6939,6940,6942,5735,5773,5771,5772,6916,6941,6917,348,5694] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [5352,4698,4697,2326,5354,965,5355,958,961,963,957,2324,2325,2327,2328,2329,949,991,2318,2060,5006,4699,4701,4719,4718,5030,5043,5028,5029,2025,5015,2042,2061,5351,5350] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [3298,3301,7335,7343,7359,7360,4666,4667,7345,3303,7682,7686,7336,7337,7049,7050,7030,7028,7029,7031,7033,7685,7361,7374,3286,4400,4382,4401,3330,4669,4365] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [7329,7118,7136,7134,4804,7135,7313,7327,7225,7226,7227,4984,7198,4983,4999,4998,7194,7213,7214,7215,7219,4787,4996,4805,7314,7315,4980,4895,4882,4863,4982,4866,4888,4884] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [4984,7197,7198,4983,4997,4999,7201,7202,7194,7213,7219,7314,7315,7798,7813,7814,7200,7367,7313,7328,7330,7329,7796,5483,5467,5036,5465,4871,4882,4864,4867,4863,4869,4870,4982,4888,5482,5469] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [9007,8713,8727,8728,8957,8968,8780,8789,8801,1767,1768,1770,8970,1752,1753,1766,8735,8781,8755,8720,8963,8965,8972,8849,1772,8998] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [1718,1726,1733,2005,1711,1725,1966,1753,1778,1779,8768,1968,8754,8755,1955,1961,8772,8774,1970,8769] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [6382,6396,6397,6389,6626,4093,6424,6449,6450,6458,6519,4108,4110,4112,4092,4107,6637,6639,6641] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [6037,6024,5789,6034,5762,6260,5759,6257,6258,6288,6897,6899,6066,6265,6267,6051,6049,6907,5765,5757,5758,6909] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1718,1726,2005,9007,8713,8728,8989,9004,9006,877,879,2004,9005,7880,7881,7879,7882,7873,8720,880] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [4058,4066,5551,6397,6389,6675,6676,6674,5542,5548,5550,4344,4345,4343,3216,3217,3214] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [4066,4065,4051,4295,4117,4118,4119,4139,6438,6439,6441,6442,6443,4127,4306,4308,4310,4267,6424,6423,4093,4345] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [1243,786,1280,1281,668,629,636,1232,1234,1244,5744,5746,5283,5287] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [1184,1164,1167,1183,1303,1202,1301,1302,271,268,518,519,1325] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [3123,3582,3584,3004,3574,3589,3583,3606,7614,8075,8077,3621] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [2227,2228,2223,2226,1091,1617,1584,1585,1586,1587,1597,2236,1086,1088,1089,1094,1087,1353,1378,1357,1365,1366] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [323,324,6973,322,133,213,224,325,327,328,217,223,225,326,195,6982] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [5270,5271,5800,5801,5777,5273,5244,6018,5243] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [7700,7701,7530,7565,7566,7699,7712,7713,7540] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        