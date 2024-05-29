
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
        
        load "data/8OR4.pdb", protein
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
 
        load "data/8OR4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [13553,13415,13418,13419,13554,13337,13338,13530,13736,13666,13570,13634,13605,13569,13430,13262,13299,13472,13568,13604,13452,13471,13640,13636,13639,13414,13358,13360,13263,13710,13529,13531,13688,13369,13658,13664,13665,13655,13656] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [13913,13917,13921,13920,13947,13948,13945,13946,13789,13749,13750,13790,14204,14126,14129,14123,13915,13916,14122,14124,14018,14032,14037,14231,14232,14233,14234,14235,13932,14208,14092,14094,14096,14095,13803,14125,14090,14100,14121,14098,14061,14036,14035,14057,14058,14226,14229,14230,14103,14060,13901,13910,13911,13732,13735,13743,13747,13987,13981,13982,13952,13983,13984,13825,13826,13985,13990,13993,14152,13955,13957,13961,14153,13992,13888,13887,13889,13846,13848,13849,13845] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.506,0.902]
select surf_pocket3, protein and id [10178,10179,10174,10176,10177,10483,10187,10066,10513,10203,10205,10206,10510,10259,10257,10258,10238,10260,10541,10535,10042,10043,10018,10297,10292,10300,10251,10152,10153,10156,10158,10151,10199,10198,10200,10196,10226,10361,10362,10363,10330,10331,10338,10351,10068,10070,10071,10491,10305,10514,10515,10310,10542,10301,10350] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.365,0.702]
select surf_pocket4, protein and id [6086,6092,5871,6082,6069,6074,6323,6052,6070,5899,5750,5929,6047,5778,5779,6356,6325,6354,6132,6133,6066,6071,6349,6075,5755,5753,5756,5777,6155,6156,6157,6158,5939,5963,5905,5928,5930,5898,6187,6055] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.431,0.902]
select surf_pocket5, protein and id [7512,7681,7672,7647,7650,7646,7613,7615,7448,7490,7854,7476,7475,7365,7366,7396,7344,7373,7643,7645,7452,7670,7671,7673,7703,7394,7395,7644,7371,7669,7702,7537,7538,7504,7508,7507,7509,7600,7315,7312,7345,7343] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.310,0.702]
select surf_pocket6, protein and id [3756,3757,5245,4049,5244,4046,4048,4050,4044,4045,4047,3870,3873,3877,3881,5263,5262,5271,4039,3939,3941,3938,3962,3964,3965,3968,3970,3940,3943,3945,3667,3772,3771,3773,5275,3999,3630,3666,3983] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.361,0.902]
select surf_pocket7, protein and id [3891,3875,3883,3912,4064,4053,4043,4047,3855,3860,3859,3870,3871,5241,4078,4049,4222,4224,4227,4232,4374,4251,4249,4250,4257,4356,4355,4283,4057,4234,4236,4070] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.310,0.278,0.702]
select surf_pocket8, protein and id [3300,3303,3304,3305,4066,4067,5265,5266,4035,3829,4032,4055,3302,3777,5270,5276,4033,3792,3793,3763,3274,3279,4068,3844,3299,3831,3832,3834,3294,3293,3585,3588,3586,3780,3552,3778,3810,3789,3548,3550] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.431,0.361,0.902]
select surf_pocket9, protein and id [12063,12085,12563,12535,12532,12534,12178,12043,12556,12557,12083,12156,12212,12238,12246,11928,11929,12177,12207,12041,12044,12086,12157,12235,12204,12237,12035,12275,12508] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.365,0.278,0.702]
select surf_pocket10, protein and id [12430,12419,12421,12422,12447,12261,12262,12264,12255,12230,12231,12412,12434,12652,12623,12435,12599,12629,12511,12512,12519,12483,12233,12260] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.506,0.361,0.902]
select surf_pocket11, protein and id [12651,12652,12654,12653,12677,12678,12484,12464,12761,12465,12679,12680,12482,12772,12902,12770,12657,12659,12899,12517,12520,12483,12518] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.420,0.278,0.702]
select surf_pocket12, protein and id [12074,12075,12080,12082,12083,12084,12107,12108,227,229,12076,12077,12555,12556,12557,12111,12115,12085,12116,12117,12141,202,203,12157,12086,12156,193,164] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.576,0.361,0.902]
select surf_pocket13, protein and id [10469,10470,10490,10720,10633,10635,10728,10729,10797,11003,10523,10743,10741,10742,10582,10698,10700,10980,10634,10816,10818,10794,10795,10796,10637,10640,10817,10829,10610,10614,10615,10616,10612,10636] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.475,0.278,0.702]
select surf_pocket14, protein and id [9895,9897,9899,9900,10171,10172,10198,9764,9765,9768,9755,9757,9734,10013,10016,9978,9896,9770,10066,10036,9798,10174,10176,10177,10043,10015,10018,10034,10035,10008] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.647,0.361,0.902]
select surf_pocket15, protein and id [13132,13096,13135,12995,13130,13133,12687,13134,12688,12769,12771,12741,12779,13131] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.533,0.278,0.702]
select surf_pocket16, protein and id [4103,4198,4098,4101,4246,4242,4243,4118,4116,4266,4091,4509,4179,4531,4176,4137,4195,4196,4197,4507,4508,4500,4501,4498] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.722,0.361,0.902]
select surf_pocket17, protein and id [13221,13351,13361,12844,12847,12838,12835,13061,13063,13084,13085,13383,13384,13178,13140,13143,13145,13147,13172,13146,13177] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.588,0.278,0.702]
select surf_pocket18, protein and id [7657,7658,7689,7983,7619,7621,7629,7630,7687,7688,8018,7665,7982,7984,7949,7975,7981,8011,8012,8024,8020,8010,7927,7626,7946,7947,7624,7902] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.792,0.361,0.902]
select surf_pocket19, protein and id [3337,3338,3296,3297,3298,3354,3355,3356,3357,3555,3556,3587,3583,3589,3588,3584,3586,3590,3288,3323,3384,3377,3378,3558,3560,3562,3353,3375,3376,6552,6851,6852,6853,6854,3557,3554] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.643,0.278,0.702]
select surf_pocket20, protein and id [9922,9959,9726,9729,9732,9705,9758,9760,9761,9763,9923,9900,9734,9978,9626,9627,9628] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.863,0.361,0.902]
select surf_pocket21, protein and id [665,377,404,667,433,435,699,700,728,89,91,698,434,436,438,660,658,888,412,883,413,414,856,376,857] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.702]
select surf_pocket22, protein and id [7882,7679,7657,7654,7873,7875,7876,7874,7652,7651,7653,7871,7872,7546,7547,7548,7549,7544,7545,7900,7901,7902,7543,7514,7510,7511,7513] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.863]
select surf_pocket23, protein and id [4407,4436,4060,4233,4235,4405,4217,4218,4074,4216,4237,4625,4428,4459,4624,4460] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.643]
select surf_pocket24, protein and id [11741,11742,11743,11499,11500,11501,11473,11714,11715,11475,11476,11615,11740,11517,11519,11647,11640,11642,11638,11639,11441,11650,11684,11689,11691,11410] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.792]
select surf_pocket25, protein and id [14351,14321,14658,14669,14684,14219,14220,14026,14025,14027,14028,14349,14654,14655,13927,13928,13929,13937,13938,13931,14209,14024,14341,14348,13756,13757,13758,13759,14350] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.588]
select surf_pocket26, protein and id [12636,12630,12657,12659,12517,12520,12483,12518,12956,12516,12957,12539,12543,12607,12952,12955,12958] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.722]
select surf_pocket27, protein and id [350,352,376,855,857,340,344,345,813,776,779,814,816,819,821,841,845,781,812,343] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.533]
select surf_pocket28, protein and id [12931,12934,12938,803,805,807,12947,12950,817,294,313,308,770,12545,293,12932,292] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.647]
select surf_pocket29, protein and id [10926,10934,10961,11185,10828,10817,11183,11184,11186,11187,11190,10937,10938,10927,10940,10902,10866,10846,10845,10840,10842,10936,10958,10962,10963,10980] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.475]
select surf_pocket30, protein and id [12578,12275,12268,12579,12589,12590,12591,12335,12336,12339,12058,12298,12300,12302,12327,12323,12297,12296,12299] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.576]
select surf_pocket31, protein and id [2115,2080,2112,2598,2109,2141,1986,2217,2216] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.420]
select surf_pocket32, protein and id [5049,5051,5052,3201,3202,3203,3455,3459,3460,3478,3487,5043,6063,6064,6035,5050,5030] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.506]
select surf_pocket33, protein and id [4373,4374,4232,4436,4234,4236,4406] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.365]
select surf_pocket34, protein and id [7991,7993,8317,8314,8322,8195,8197,8343,8344,8347,8220,8030] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.431]
select surf_pocket35, protein and id [4839,4842,4862,5030,6009,6010,6011,4835,4836,4837,4814,5052,5673,5664,5663,5022,5704,5706,5707,5018] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.310]
select surf_pocket36, protein and id [255,281,343,283,342,4,36,22,27,30,20,21,243,251,256,242,62,285,284] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.361]
select surf_pocket37, protein and id [5780,5833,5832,5899,5745,5748,5751,5595,5570,5596,5768,5769,5747,5811,5898,5603,5897,5604] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.310,0.278]
select surf_pocket38, protein and id [12944,12945,12951,12952,12955,808,12946,12608,12546,12607,12956,12957,12606,12636,12976] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.431,0.361]
select surf_pocket39, protein and id [10435,10436,10679,10681,10467,10468,10389,10632,10634,10677,10699,10635,10660,10408,10409,10412,10396,10397,10402,10643,10644] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.365,0.278]
select surf_pocket40, protein and id [9255,9256,9258,9257,9343,9341,9335,9363,9366,9402] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.506,0.361]
select surf_pocket41, protein and id [7452,7703,7394,7451,7821,7721,7699,7735] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.420,0.278]
select surf_pocket42, protein and id [6581,3407,3404,3405,3560,3562,3408,3411,3438,6590,3533,6554,6854] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.576,0.361]
select surf_pocket43, protein and id [11647,11649,11640,11642,11839,11862,11614,11869,11890,11648,11650,11616,11745,11615,11749,11750,11748,11743,11699] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.475,0.278]
select surf_pocket44, protein and id [3310,3311,3312,3314,3315,4068,4206,4083,4603,4082,4072,4207,4602] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.647,0.361]
select surf_pocket45, protein and id [14704,14613,14631,14634,14612,14614,14661,14664,14708,14710,14713,14703,14668,14682,14685,14689,14658,14665] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.533,0.278]
select surf_pocket46, protein and id [11234,11008,11049,11084,11051,11070,10985,11207,11215,11080,11077,11079,11189,11078] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.722,0.361]
select surf_pocket47, protein and id [760,761,764,230,231,263,265,12078,229,12550,12548,12570,12542,795,796] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.588,0.278]
select surf_pocket48, protein and id [886,887,888,889,890,915,668,866,868,895,1249,636,639,916,704] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.792,0.361]
select surf_pocket49, protein and id [14222,14025,14028,14029,14030,14046,14034,14035,14039,14044,14223,14225,14226,14229,14019,14020,14023,14032,14021,14735] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.643,0.278]
select surf_pocket50, protein and id [2448,2447,2834,2486,2455,2451,2456,2726,3102,3140,3101,2865,2832] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.863,0.361]
select surf_pocket51, protein and id [6320,3456,6063,6034,3433,3500,3463,3464,3467,6054,6321,3468] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.702,0.278]
select surf_pocket52, protein and id [3913,3933,3884,3934,5240,5243,5245,5244,4050,3742,5237,5238] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.863,0.902,0.361]
select surf_pocket53, protein and id [2501,2469,2479,2340,2342,2334,2316] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.643,0.702,0.278]
select surf_pocket54, protein and id [1757,1388,1789,1758,1353,1355] 
set surface_color,  pcol54, surf_pocket54 
   
        
        deselect
        
        orient
        