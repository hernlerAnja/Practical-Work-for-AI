
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
        
        load "data/7JHH.pdb", protein
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
 
        load "data/7JHH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6545,6546,6685,6299,6300,6321,6684,6686,6688,6692,8240,6543,6718,6666,6527,6528,6529,8000,7068,7071,7073,8224,8234,8235,8238,6312,7847,7848,7849,7850,7852,6309,6310,7999,7403,7404,7419,7436,7422,7437,7420,7421,7414,7415,7405,7406,7407,8871,6710,8830,8832,8834,8754,8835,8837,606,6719,8829,8845,8843,8839,7085,7424,7075,7423,7425,7381] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [4978,4979,3450,4952,4956,4958,4961,4954,3435,3455,3969,3981,3457,4848,4852,4853,4854,4855,4962,4964,4963,4965,5004,5006,5008,4160,4162,4168,4172,4173,4165,4166,4171,4307,4308,4309,4315,4179,4182,5586,4323,5585,5587,4842,4843,4844,4845,4176,6034,4174,4175,4856,4997,4998,4999,2202,3436,3438,6036,4980,5000,5001,5592,5593,5594,5595,5597,5596,4314,5579,5453,5455,6046,6032,6015,6035,6033,3993,4005] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [1089,1077,712,715,1187,1184,1185,1209,258,259,663,244,675,686,1104,680,682,689,704,243,661,668,105,106,130,96,97,144,256,260,146,248,90,145,92,124,126,1049,1066,109,114,115,1205,1206,1207,1240,1179,535,1105,1090] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [606,613,6719,8806,8807,6766,8808,8782,9062,8813,9050,9058,9053,8849,604,609,610,614,621,622,6,268,9061,154,641,283,284,6772,301,304,605,612,6581,6541,6717,6749,6747,6738,6739,6740,281,282] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [1006,11063,11065,11062,11064,10928,10929,10910,10911,11450,11451,11432,11433,9738,9736,9742,9748,9754,9767,9769,11103,11116,11048,11093,11101,11061,11544,11546,11528,11529] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [3680,3705,4918,4896,4911,4908,4917,2857,2860,2864,2861,2853,2942,4930,3671,3672,3673,3537,2844,2935,2937,2841,2842,2845,2846,2847,3538,3694,3696,3689,4945] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [2191,2193,6022,6025,6028,6010,6026,5819,5791,5793,5828,6046,5577,5578,5605,5606,6041,6044,5559,5855,5847,5861,5860,5560,5592,5593,5595,5597] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [3466,3401,2217,2226,2234,3996,4155,3766,3465,2258,2260,3383,3384,3385,3386,3654,3765,3767,2255,2259,3752,3561,3562,3564,3351,2213,4145,2211,3998,3402] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [4123,4148,4155,4156,3786,2217,2238,4089,4090,4122,4126,3602,3604,3581,3600,3625,3585,3596,3624,3640,3639,2259,4147] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [4331,4665,4666,4613,4614,4621,4622,4646,4836,4848,4852,4291,4292,4851,4837,4687,4308,4309,4290,4332,4324,5439,4824,5440,4322,4838,4679,4284,4661,4670,4675,4623,4685,4682,4585] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [6157,6158,6171,6042,5450,5454,5456,5459,6045,6043,5248,6141,6142,6144,6145,5444,5447,5448,5435,5249,5250,4846,4847,6172] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [3594,3595,3577,3631,3030,3034,3069,3633,3036,3037,3634,3637,3033,3035,3573,2283,3031,3068] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [587,592,9066,9068,23,11,18,25,9038,28,9009,9008,8907,8908,8948,8879,8880,8881,8882,8846,8852,9005,9006,9007] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [6897,6916,6918,8535,6898,8531,8683,8684,8686,7060,7062,8678,8708,8680,8716,8675,7077] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [4427,4428,1133,671,672,691,1165,1166,1118,1121,4480,4482,4454,4429,543,544,222,223,4455,669,677,504,507,506,1152] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [5168,5962,5963,5090,6217,5024,5026,5051,5052] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [10511,10635,10637,10648,10658,10485,9949,9951,9952,9943,10457,9989,10456,9988,10652,10653,10454,10455] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [9447,1251,1254,11489,11490,11511,11499,11501,1226,1229,1228,11513,9442,345,337,338,333,317,9417,9419,11482,1434] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [11816,12142,11944,12224,12226,12223,11815,11821,11822,11817,12362,11830,12244] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [202,5342,5343,194,35,37,9009,9008,16,9001,5326,8977,8979,8999,9000,8976,8972,8975] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [8241,7050,7049,6357,8407,8408,6292,6668,6670,6672,6673] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [452,453,552,1208,664,549,1201,1232,1196,1198,1178,531,1199,1200] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [8892,7481,7704,7705,8992,7480,8861,8885,8862,7457,7648,7647,7679,9014,7505] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [4272,4887,4888,4265,4268,4269,4694,4677,4681,4260,2918,4264,2921,2919] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [10349,10076,10077,10078,12013,12014,10337,11994,10313,10312,10314,12001,11995,12149,12003] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [7216,7218,7245,7244,7354,7753,7471] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [478,967,475,526,957,959] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [2371,2538,2562,2535,2393,2563,2700,2703,2698,2704,2807,2699,2366,2367,2370,2720,2364,2719,2394] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [11420,11565,11567,11576,11577,11578,11564,1431,1420,1424,1427] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [4501,4119,4341] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [8651,8635,8661,8477,8480,8513,8512,8481,8612,8479] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [573,29,36,5716,5713,48,49,26,4448,4440,4446] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        