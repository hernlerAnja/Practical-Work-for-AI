
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
        
        load "data/4OR5.pdb", protein
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
 
        load "data/4OR5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8310,10363,10396,10436,10445,10446,10447,8343,8344,4596,4597,4598,4599,8841,8846,8848,8874,4600,10450,10449,10251,10252,8373,8374,10224,4595,4644,4645,10247,8371,4571,4572,10393,10421,10422,10426,10394,10395,10435,9980,4570,5020,4552,4569,4553,4554,5021,5022,4881,10267,10282,10284,10404,10256,10402,4610,4608] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [4856,5004,2956,4851,4852,4963,4970,2935,2962,2963,2964,2965,10005,4861,4867,10004,10017,10019,10053,10054,3435,4882,4884,10281,4847,4850,2934,5044,5045,5046,5047,10007,10008,10009,3439,5037,5049,5050,3432,3437,3440,3441,2901,3465,10006,5035,5036,9978,9981,9976,4993,4994,4995,4996] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [759,1166,1242,1143,1167,784,786,1244,578,729,730,732,734,735,1243,199,192,141,200,324,320,322,323,144,145,758,764,307,755,1151,1247,1248,1249] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [3745,3746,517,519,520,3741,3311,485,3300,483,484,486,487,488,1059,493,1080,456,3320,482,3750,3761,3763,3795,3790,3770,3036,3007,3012,3312,3784,3747,4739,4758,4759,1072,4752,1294,1067,1068,1071,4751,1290,3013,3318,4709,4789,4706,4707,4791,4792,4719,4723,4721,3001,2997,3006,3951] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [5555,5562,5563,5510,5504,5507,5508,6566,6567,6184,6543,6185,6186,6155,6158,6164,6650,5684,5685,5687,5833,6132,6134,6135,6643,5670,6644,6647,6648,5941,6642] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [402,404,405,3627,3659,3658,695,3722,377,375,379,380,381,382,355,356,353,657,3691,3692,676,680,681,682,683,675,640,684,687,401,3630,3632,3635,677,678,679,3634] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [6694,10158,10159,10172,10151,10152,5845,5847,5848,5849,5850,6459,5880,5882,5883,8709,8729,8727,5819,5856,6467,6480,9159,9155,8720,8721] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [4157,4159,4187,4188,4238,4302,4332,4237,4314,4402,4403,4178,4220,4240,4243,4176,4177,4239] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [9596,9595,9597,9646,9647,9648,9812,9844,9566,9568,9587,9721,9723,9741,9811,9711,9713,9585,9586,9588,9629,9641,9649,9652] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [8244,8245,8246,8113,8210,9922,9924,9478,9479,9480,9886,9888,8086,9883,9455,9884,9949,9950,9445,9446,8114,8116,9440] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [9204,9205,10121,10192,9156,9159,9170,9155,8720,8421,8721,9179,10191,10139,10119,10158,10159,5850,9193] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [4070,2675,2677,2801,2836,2837,4513,4019,4515,4046,4036,2705,2707,4071,2703,2704,4541,4475,4476,4478] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [8410,8406,8415,8419,8421,9204,10192,10106,10107,10109,10189,10191,10119,8445,9193,9195,9191,9199,9360] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [8004,9140,8011,8012,9157,9164,9167,9168,9152,8511,9162,8060,8061,9505,9506,9461] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [8802,8829,8800,8857,8994,8996,8997,8998,8619,8620,8626,8630,8629,8827,8647,8648,8866,8868,8805,8804,8867] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [1572,1582,1583,1599,1598,2373,2375,2372,1565,1038,1039,1590,1591,2381,1622,2376,1319,1302,1304,1305,1592] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [6983,6973,6732,6730,7775,6998,6999,6446,6439,6409,6411,7781,7789,7772,6438,6702,6704,6441,6990,6991,6992,6719,6709] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [2664,38,40,2622,2620,2737,3131,3143,2662,2695,2721,2660,2700,2738,2764] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [4859,4914,5323,4937,4840,4938,4940,5342,4845,4906,4841,4908,4909] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [7739,7387,6947,6950,6966,6965,7338,7335,7389,7733,7726,7351,7344,6909,6910] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [2333,1935,2326,2339,1944,1550,1547,1548,1549,1988,1989,1950,1951] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [10260,10077,10272,10257,4661,4872,4857,4859,4868,4860,10273,4672,10075,4667,4664,4671] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [3753,3748,3755,3758,3743,3102,2632,2634,2595,2628,2651,2602,2603,3731,4050,4052,4053,4096,4075,4097,2650,2652,3759] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [340,716,328,335,324,469,322,323,421,344,339,341,345,346,347,439,442,420,436,437,1263,1264,1265,1249] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [6864,6866,6539,7086,7138,6200,6226,7139,6877,6533,6534,6544] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [8069,8071,8073,8109,8147,8540,8104,8130,8544,8146,5391,5403,8552,8546,8550,8029] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [10077,10315,10259,10304,10311,10303,10305,10310,10723,10724,10726,10076,10240,10241,10337,10340,10742] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [9546,9547,9577,9895,9897,9544,9551] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        