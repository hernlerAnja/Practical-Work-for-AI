
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
        
        load "data/2UZL.pdb", protein
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
 
        load "data/2UZL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [140,242,84,87,1080,661,688,664,672,680,636,638,258,259,640,141,139,639,635,695,94,95,101,102,92,83,89,1052,1057,1081,1064,1160,1152,1153,1157] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2183,2184,2187,2193,2389,2390,2392,2181,2182,2189,2206,2399,1455,1459,1460,1466,1468,1472,2407,2400,2404,2223,1384,1444,1228,1231,1234,1240,2418,2420,2421,1435,1433,1434,1239,1214] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5676,5702,5701,5917,5921,5922,5928,5930,5934,5897,5906,6880,6882,6908,6866,5690,5693,5696,5681,5688,6685,6679,5955,6643,6644,6645,6655,6668,6851,6852,6861] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [2842,3139,1247,2828,3499,1246,3505,3506,1207,1208,1216,1217,1245,1267,1269,3507,3652,1233,3534,3563,3531,3532,3533,1230,1232,1237,2846,3138,3466,3469,3508,3129,1203,1204,3462,977,3463,2837,3498,3649,3679,3680,3565,4352,4354] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [7290,5708,5709,7300,5711,7965,7994,7996,7966,7967,7960,7961,7306,7308,7304,7305,7970,5695,5679,5682,5670,5692,5669,5678,5729,5438,5439,7968,7969,5665,7600,7601,5666,7591,7924,8025,8027,8114,5694,8800,8814,8141,7296,7299,7292,8142,8121,8111] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [4556,4557,4601,4602,4603,4965,4704,5542,5622,4718,4720,4564,4964,5099,5098,5100,5101,5102,5097,4549,5118,5120,5126,5543,5150,5157,4545,5123,5134,5142,5145,5514,5516,5519,5526,5614,5615,5619] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3803,3826,3485,3491,3821,2865,2893,2896,2557,2558,2892,2899,3825,2515,2541,3482,3474,2544,2539,2540,2543,3479,3724,3728,3730,3734,3774,3775,3847,2890,2927,3789,3786] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [8236,8265,8246,8248,8309,8196,7327,7352,8250,7019,7020,7389,8251,7354,7355,7953,7936,8287,8288,7941,7361,7009,7006,7947,8245,8192,7148,8186,8188,8237,8190] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [6639,6645,6653,6654,6655,6646,5883,6288,6291,6332,6330,5896,5897,5906,6297,6304,6302] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [354,358,359,365,366,1182,3172,3116,3173,3174,3175,348,351,331,332,334,3118] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5499,5510,5511,5515,5803,5804,6028,5171,5172,5173,5174,5518,5501,5503,5783,5799,5815,5816,5801,5802] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [320,311,337,291,292,294,570,572,3374,3377,3368,346,3336,3338,3337,3340] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1421,1826,2183,2184,2185,2192,2177,2191,2193,1870,1835,2178,1384,1444,1455,1435,1433,1434] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [5395,5430,5431,6963,6964,6965,6930,6932,5397,5399,6934,4904,5421] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [4233,4231,4198,4199,3748,3749,3750,3747,3759,3770,4168,4172] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [937,967,968,969,933,935,459,2502,2503,957,958,2438,959] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [6994,7004,6973,4909,7915,7923,7925,7926,7908,7909,7911,7912,7913,7914,4895,6993] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [1225,2416,2417,3543,2419,3573,3584,4030,4032,3539,3571,3583,3570] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [6892,8045,8046,8033,6881,5687,8494,6878] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [7836,7799,7800,5035,7839,4756,4808,5032,5034] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [3449,3450,3451,447,2532,2511,2936,2531,2542,3452] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [5090,4496,4498,4648,4684,4985,4987,4989,4986,4995,4996,4998] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        