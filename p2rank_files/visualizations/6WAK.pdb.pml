
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
        
        load "data/6WAK.pdb", protein
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
 
        load "data/6WAK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5942,5913,5927,5150,5152,6029,6030,6031,4978,4980,5928,4976,4977,5541,5544,5548,5549,5943,4947,5573,4946,4948,4952,4953,4954,4997,4998,4955,4958,4959,4999,4962,4963,4971,5914,5915,5916,5917,5918,6202,6203,6204,5890,5891,5889,6172,6174,6169,4979,4981,6154,6155,6161,4966,4416,4970,5565,6164,6477,6478,5135,5500,5514,5493,5494,5495,5496,5497,4951,4949,4950,5523,5525,5517,5383,6023,5382,6022,5501,5387] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [8097,8098,8100,8129,8105,8128,7510,7509,8104,8469,8499,8470,8471,8073,8074,7512,8070,8075,8096,7553,7554,7555,7708,7694,7695,7700,7704,7525,7536,7689,7690,7691,7692,8032,7515,7518,7521,7524,8578,8579,8586,8587,8483,8049,8050,8051,8498] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [199,147,148,149,198,155,157,160,1123,1124,1203,1204,1094,1098,1108,1109,1097,700,336,693,695,151,722,723,725,729,730,754,699,698,1212,353,172,179,159,163,164,165,1208,1232,677,200,181,1072,167,171] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2980,3097,3510,3539,3540,3620,3524,3619,2732,2547,2548,2544,2545,2550,2596,2551,2552,2553,2555,2556,2559,3627,3628,2575,2749,3091,3092,3093,2595,2594,3138,3141,3145,3146,3170,3115,3116,3114,3111,3513,3514,2563,2567,3689,2560,3512,3488,3525,3515,3511] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [3364,3365,4937,4940,4941,4942,4443,4444,3362,3363,4943,4992,2950,3390,3385,4960,3392,3387,4785,4450,4412,4933,4935,4936,4923,4929,3340,3585,3586,3588,2955,2956,2957,2966,2967,3361,3360,4729,3333,3343,3574,3584,3306,4779,4772,4773,4947,4946,4953,4954,4956,4959] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [5122,5120,5121,5115,5123,9676,8082,8083,8084,5116,7671,7676,7677,7678,7679,7576,8065,8069,8062,8066,5020,5527,5528,5509,5510,5513,7672,7659,7202,7208,8058,8059,7231,8061,9666,9691,9692,9672,9673,9674,9679,5958,5505,9695,7211,5956,7209,7210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [5644,5643,7100,7102,7106,5646,7088,7109,5685,5971,5972,7180,7181,7143,7144,7600,7142,5982,7400,7145,7615,7618,7621,7639,7452,7622,5617,5618,5620,5645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [7874,8591,8610,7814,7817,7839,8035,7816,7818,7812,7936,8578,8580,8581,8586,7937,8595,8597,8588,8607,8609,7951,7952,8049,8050,8051,7955,7957,8033,7848,8036,7724,7708,7704,7706,7707] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [2307,4769,2299,2305,2308,2309,2713,2712,2720,2719,2306,707,708,709,3106,3124,2717,2718,3108,3110,2617,2327,3099,3100,3102,4748,3555,2303,4740,4746,4749,4750,4751,316,317,322,324,321,323,304,683,687,690,691,694,686,3123,3125] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [4634,4650,4624,4627,3241,39,4681,4682,4683,267,89,90,91,3579,3240,281,284,3217,266,3279,3280,3281,3282,3277,4719,245,4718,260,263,4653,3569,3181,3180] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [2242,2277,2278,2656,2659,2662,2664,2665,2666,2677,2208,2203,1163,2209,2212,864,2680,866,2193,861,862,863,865,801,828,2641,2435,2487,835,834,824,826,1153,763,903] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [8210,8198,8199,8200,9550,9553,9644,5065,8138,5080,8528,5083,8140,8174,8176,8527,8209,9645,8278,8538,8236,8238,8241,8240,9560,9552,9579] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7189,7191,7253,7254,7255,7256,5743,5744,5736,5746,5369,5370,5708,5710,7115,7116,7252,5768,5988,5989,7188,7222,5987,5977,7150,5979,5978] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [2360,2361,946,947,948,534,969,2003,2002,1969,1971,1972,1973,5092,1006,7502,7496,7497,7498,1974,944,541,522,945,8168,7509,7513] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2325,4774,4776,4777,4778,2941,2292,2328,3556,3098,3101,2940,2942,2418,2987,2988,2989,2295,3005,3006,3007,2291,2252,3605,2951,3604,2943,2945,2946,2971,2979,2980,3097,2936,2931,2985,2981,2984,3090] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5408,5391,5410,5384,5387,5388,5390,7236,9694,5501,5504,6008,7239,5349,5521,5383,5374,5379,5382,9619,9658,9659,9662,9661,9691,9692,9688,9690,5345,5339,5343,5344,7241,7244,5500,5493,5497] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [524,525,2336,527,530,555,1189,684,685,4768,563,565,702,590,682,4762,4766,4732,4733,4736,4735,2333,4765,22,571,572,573,569,568,591,4693,526] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5177,5178,3414,3848,3850,3852,3440,4395,3861,4396,4397,3859,4363,3409,3439,3844,6128,5201,4417,4969,6156,6157,5174,5184] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [562,499,1234,675,677,1205,1206,1211,1216,567,576,577,580,563,1203] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5044,4838,5059,9644,9607,9608,9609,5056,5062,5065,5066,4890,9645,5080,5083,9579,9606,8538] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6088,6093,6058,6086,6089,6174,4979,6155,6158,6166,6139,6140,6059,5879,5881,5876,6295,6297,6296,6272] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [2978,2983,2984,2992,2993,3093,2996,2916,3076,2913,3621,3629,3622,3627,3632,3651,3649,3638,2979,3619] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [5381,6024,6025,6032,5315,6035,5316,5318,5382,6022,5386,5387,5395,5396,5399,5493,5496,6053,5479] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        