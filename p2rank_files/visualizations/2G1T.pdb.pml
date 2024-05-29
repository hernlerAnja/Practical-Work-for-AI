
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
        
        load "data/2G1T.pdb", protein
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
 
        load "data/2G1T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6936,6883,7474,7477,6881,6884,7952,7856,7950,7951,7953,7945,7946,7857,7842,7843,7845,7846,6891,6892,6893,6894,6880,6886,6889,7818,7817,7819,6914,9169,6935,6937,7061,7062,6879,6885,6887,6916,6912,7046,7399,7417,7402,7418,7058,7422,7434,7439,7436,7438,7871,7442,7869,7870,7470,7450,7466,7467,7287,7288,7449,6901,9178,9180,6897] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5150,5577,5660,5125,5124,5659,5653,5658,5652,5550,5177,5181,5184,5549,5578,5563,5564,4597,4598,4599,4600,4601,4628,4644,4768,4604,4769,4619,4621,5552,5553,4594,4596,4587,4588,4642,4643,4591,4590,4753,5143,5145,5146,5149,5173,5174,5157] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [150,151,153,154,159,160,161,162,720,736,737,712,738,740,744,1139,1140,1141,1215,1112,1126,1216,1223,163,164,167,182,184,316,687,205,206,207,314,324,328,331,332,688,1222,709,557,558,708,669,770,747,1113,1115] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2963,2377,2966,2973,3365,3366,3367,2970,3338,2375,2376,2381,3339,2382,2383,2385,2387,2388,2389,2390,2938,2946,2962,3352,2379,2432,2431,2433,2380,2934,2935,2932,2542,3449,2895,3448,2554,2557,2558,3443,3441,3442,2913,2914] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [164,167,182,184,8969,1088,185,186,1089,170,171,172,174,8968,1360,1295,1078,1080,1251,1496,1498,1477,1357,1358,1293,1294,1297,1112,1126,1127,1223,1086,1084,1087,183,1250,1275,1291,1300,1282,1283,1288,1304,332,1116,1117,8967,1380,1370,1115] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [4604,4607,4608,4609,4619,4620,4621,4622,4623,5526,5527,5524,5525,5935,5516,5517,5688,5933,5512,4601,5732,5734,5731,5739,5913,5915,5914,4611,5797,5794,5817,5801,9102,9111,9112,9113,5552,5553,5554,5807,5791,5687,5737,5741,5742,5564,5523] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [697,567,695,696,7107,7108,7109,8013,8044,8015,7150,7151,7152,296,8046,715,716,1186,7125,7126,7127,1150,722,1153,1158,723,693,694,701,583,584,297,717] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [7810,8100,8206,8207,8208,8087,8228,8110,6901,6902,9179,9180,7980,6915,8024,7820,8227,7805,7819,8109,6914,8147,7981,6916] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [688,1217,1244,687,1227,556,557,558,1233,1232,1234,573,576,672,673,575,481,483,1270,1215,1216] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [3303,3478,2412,2408,2410,3502,3476,3477,3501,3521,3525,3526,3528,3530,3531,3524,2397,2398,2400,3606,9040,9041,3305,3306,3583,3590,3587,3588,3584,3580,3315,3702,3703,3720,3722,3724,3700,3704] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [5653,5654,4920,4993,5010,5012,5670,5671,4918,5669,5109,5125,5659,5013,5681,5707] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2898,3448,2554,2710,3443,3470,3450,3441,2782,3442,3459,3460,2913,2914,2799,3458] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [6799,6700,6701,6727,6728,6729,6782,6778,6786,6780,6781,6688,6689,7343,7347,6692,6695,6699,6690,6691,7335,7337,7332,7339,7133,2169,2178,2180,2202,2171] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7954,7952,7946,7947,7973,7975,7214,7402,7418,7962,7963,7964,7286,7287,7288] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [895,1881,1882,1883,1884,1895,1919,1920,871,873,874,1894,1629,891,892,897,893,898,903,929,1631,1632,1595,1635] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [7623,7601,7604,7625,8649,7633,8624,8625,8603,8611,8612,8613,7621,8359,8329,7659,7622,7628,7627,8325,8362,8364,8365] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [4120,4121,4146,3861,4108,4110,3121,3858,3860,3100,3855,3155,3119,3821,3857,3099,3128,3130,4145,4361] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3008,3078,3079,3080,3402,3044,3004,3006,3042,3039,2999,3031,3032,3033,3036,2955,2957,2958,3378,2953,3388,3387,3396,2959,2960] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [5310,5328,5329,5330,5311,5340,6332,6331,6357,6069,6066,5332,6032,6356,6071,6072,6310,6319,6321] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5348,5350,5352,5379,6608,6606,5373,6580,6549,4980] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [2988,2989,3884,3635,3847,3888,3894,3897,3898,3905,3636,9030,9012,9028,9014,9017,3887,3339,3340,3341,3343] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [8139,8140,8409,8398,8401,8402,9167,9169,8351,7493,7492,7530,8388,8392,7843,9152,9147,9149] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [8187,8190,8191,8192,8201,8205,9208,281,282,8075,8076,8078,8077,8054,8179,8208,270,271] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        