
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
        
        load "data/4FA6.pdb", protein
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
 
        load "data/4FA6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1115,1116,1118,1150,1111,1114,4914,4939,4971,4972,4973,4976,4974,4975,4999,5002,5112,5119,5114,5115,5003,5096,5135,5129,5132,4505,3452,464,467,1075,3390,3413,468,1072,1077,1088,1090,3387,3411,3422,3423,3424,3771,3410,3723,3773,4950,4951,3772,3693,3724,3725,3726,3727,3728,3729,4489,3444,3414,3694,4502,4499,4503,4504,959,5145,4998,5038,5039,5066,540,1138,1140,1141,1142,5078,538,548,1110,1101,1102,5004,5008,1076,5040,482,1103,1105,3391,494,496] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5864,4824,5784,5785,4682,5228,5252,5872,5769,5866,5867,5870,5871,5873,5862,5865,4614,4615,4616,4613,4660,4842,4843,4844,4626,5760,5288,5289,4622,5757,5266,5211,5223,5225,5137,5122,5205,5206,4907,4908,4910,4881,4823,5229,5231] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4007,1266,1268,4040,4014,3685,4004,4006,3715,4041,4467,4468,4469,4077,4038,969,4532,4533,4031,446,4510,4511,4508,4509,4513,447,448,965,968,3679,3680,3686,3687,3713,429,430,1239,1277,3681,3683] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3366,3158,497,498,3397,3398,495,496,3399,3159,3150,3145,3149,3152,4982,5015,5006,5007,5008,5009,6271,6247,6270,6272,6249,5047,3433,3435,3419,3420,3421,4985] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5711,5696,5702,6434,6435,6458,6459,5890,5891,5892,5895,5877,6338,4934,6314,6316,6346,6432,4901,6372,6370,6371,6380,6384,6394] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2650,6408,6409,6410,6322,2648,6353,3232,2910,3228,2909,2710,2711,3191,6295,3218,3229,3230,3231,3241,3243,3224,1606,2638,2644,2654,2639,2660,2671,2885,2640,2882,2874,2872,2873,2672,3193] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2317,2318,201,203,204,195,211,212,2146,2321,2331,2062,2058,2064,2083,2319,2320,235,236,194,189,3884,3885,3886,2322,183,3555,225,228] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2290,2032,2033,2235,3855,3824,4891,2242,2254,4872,6369,6374,6375,6378,2277,6376,6381,6350,2288,2289,2287,2276,4874,4902,6365,6368,6358,2282,3853,3506,3834,3835,3831] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [6804,6805,6806,5315,6760,6736,5280,5750,6775,6776,6778,6779,6780,6731,5374,5373,5740,5746,5758,5759,5754,5761,5760] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3694,978,4511,4504,4513,4514,448,957,959,974,965,3692,468] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1895,1898,1902,1892,2081,2118,2120,1886,1869,3262,2991,2990,2992,2961,2963,3257,3020,3022,3024,3274] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2266,2298,2299,1955,1561,1956,1654,1610,1631,1612,1591,1592,2294] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5075,1139,5076,5078,5077,5092,5584,1137,534,536,5569,5570,5611,5613,5615,5553,5572,5574] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4765,4764,4767,4771,4788,4725,4784,4523,4802,4793,4785,958,944,4524,948,949,4766,4758,4726] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [666,4749,4750,4756,4759,4748,4751,663,683,1202,4753,668,1188,1190,4743,4760,4763,4757] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3850,3858,2313,3894,3895,3521,3554,3891,2303,2320,3887] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        