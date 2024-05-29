
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
        
        load "data/3NCZ.pdb", protein
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
 
        load "data/3NCZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6934,9204,7591,9206,9208,7588,8032,7566,7956,9209,6936,6991,6992,7539,6938,7104,8031,7391,7392,7561,7543,6940,6943,9231,7940,8037,7119,6955,7121,8038,8040,6993,6954,7605,7929,7932,7589,7590,9212,9215] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [828,830,1248,702,1642,1739,1742,1733,1734,1101,1658,1270,1100,1252,643,649,652,701,647,2941,2943,2945,1273,813,1634,2968,1299,1631,1297,1298,1300,2930] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.490,0.902]
select surf_pocket3, protein and id [3282,3236,3278,3281,3285,3286,534,540,541,565,192,198,199,200,221,3204,544,3202,3289,3290,3291,3292,3293,3294,3295,185,186,123,191,3276,3277,3319,3350,3351,3318,3322,3329,3323,3200,3201,3211,557,550,587,588,746,752,3253,3255,3257,3256,757,761] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.349,0.702]
select surf_pocket4, protein and id [4860,4887,6063,4961,4968,4963,4527,3871,3873,3875,6061,6056,4475,4476,3928,3929,3930,4056,4962,4971,4041,4474,4480,4498,4503,3877,3880,3882,3883,3891] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.404,0.902]
select surf_pocket5, protein and id [11203,11127,11128,12405,12407,12403,10116,11100,11208,10299,11202,10717,10282,10766,10767,10768,10769,10783,11098,11101,10721,10739,10743,10744,10118,10112,11103,10121,10123,10124,11211,10297,10169,10170,10171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.278,0.702]
select surf_pocket6, protein and id [7120,8053,6963,8055,6955,6958,6962,7121,8038,8040,8039,8054,8056,8062,6993,8174,6954,7918,7940,8037,7901,8184,6946,7221,7238,7239,7222,6970,6972,7242,7240,7244,7137] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.404,0.361,0.902]
select surf_pocket7, protein and id [6385,6388,6350,6352,9668,12666,6324,6325,6327,6311,6318,10023,10026,6330,6334,6332,10215,10231,10230,10226,12664,12662,10221,12677,12680,12681,12683,6331,6333,6384,6354,12676,10607,10609,9995,10002,10003,10008,10009,10010,10019,10020,10056,10055,10057,6303,10013,10051,10054,10004] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.349,0.278,0.702]
select surf_pocket8, protein and id [681,664,667,671,1875,1756,1757,1759,1764,1876,947,948,949,951,953,679,846,1886,828,829,830,1642,1739,1740,1741,1742,1755,1603,1620,1619,930,931,682] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.490,0.361,0.902]
select surf_pocket9, protein and id [2014,9301,9279,9280,6565,6593,6604,6606,6607,6608,6574,6581,9361,9352,1997,1998,1999,2011,2013,9274,9276,9283,9289,9290,9294,9295,7472,7479,7470,1841,1993,1996,6597,6566,6568,6564] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.416,0.278,0.702]
select surf_pocket10, protein and id [10464,10298,11211,10297,10171,10418,10420,11344,11224,11225,11226,11227,11233,10148,10150,10422,10315,10133,10136,10140,10399,10400,11089,11347,11349,11072,11112,11111,11210,10299] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.576,0.361,0.902]
select surf_pocket11, protein and id [56,59,3762,3430,3431,6277,6278,6279,6281,3417,3418,71,69,34,70,72,73,6298,32,3349,3768,3769,3772,3778,6283,3432,3785,35,6294,6296,6297,6276,90,126,127,96,97,103,92,93,94,3424,3423,3453] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.482,0.278,0.702]
select surf_pocket12, protein and id [9453,9454,9530,9531,9532,6420,6421,9527,9528,9515,9517,9513,9529,9559,9560,9563,9564,9566,9555,9514,9490,9492,6837,6825,6831,6824,6826,6830,6835,9556,9557,6848,6841,6842,9437,6491,6490,6512,6482,6483,9589,9590,6878] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.663,0.361,0.902]
select surf_pocket13, protein and id [3882,3883,3891,3892,3895,4832,4987,4988,4993,4849,3907,3909,4179,4181,3899,4062,4074,3900,3914,4175,4176,4177,4986,4985,4158,4159,3930,4055,4056,4057,4969,4971,4970,4984,4871,4073] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.549,0.278,0.702]
select surf_pocket14, protein and id [8485,8497,8499,8611,8637,8638,8621,8635,8761,8762,8783,8782,8426,8428,8786,8650,8651] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.749,0.361,0.902]
select surf_pocket15, protein and id [12454,12455,12456,12480,12457,10347,10348,10349,10350,10321,10660,12481,12484,12488,12489,12492,12493,12475,10153,10156,10161,10162,10164,10306,10139,10143,10144,10320,10152,10671,10672,10673] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.616,0.278,0.702]
select surf_pocket16, protein and id [5064,5081,5082,5171,5170,4825,5094,5209,5172,5233,5234,5143,5006,5078,5083,5004,5169,5092,5085,4807,4809] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.835,0.361,0.902]
select surf_pocket17, protein and id [6385,6388,9690,9667,9668,9669,9660,9654,9655,12664,12662,6376,6412,6382,9661,6384,6354,12661,12680,12683,6383,6390] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.682,0.278,0.702]
select surf_pocket18, protein and id [9638,9640,12627,10473,10474,9639,9620,10483,10484,9633,9636,9675,9628,9629,10482,10514,10516,9613,10438,10439,10444,10446,6729] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.878]
select surf_pocket19, protein and id [3507,3506,3547,3548,3549,4409,4407,4406,6127,3516,3522,6193,6205,3518,6118,6124,6123,6145,6134,6138,6139,6152,6184,6196,3508,3509,3511] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.651]
select surf_pocket20, protein and id [3401,3382,3383,3402,438,3403,6235,451,453,440,3438,3392,6242,4205,3376,4233,4232,4241,4242,4243,4273,4197,4203,3381] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.792]
select surf_pocket21, protein and id [4542,4543,4863,4864,4847,5133,5134,5107,4540,5333,5334,5121,5123,5122,5375,5369] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.584]
select surf_pocket22, protein and id [6525,6554,9732,9884,9702,9703,9705,6501,9679,9701,9704,6523,6524,6526,6527,6530,6532,9369] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.706]
select surf_pocket23, protein and id [969,170,171,975,977,1005,1013,1015,1014,3188,151,159,160,163,164,169,206,3165,144,149,3190,3180,186] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.514]
select surf_pocket24, protein and id [12590,12509,12512,10647,10648,10649,10650,10657,9759,12581,12505,10653,9742,9743,12519,12508,9785,12536,12537,9786,9784,12530,12502,12503] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.620]
select surf_pocket25, protein and id [7613,9196,7610,7615,7616,7619,7620,7964,7621,7641,7653,7655,7579,9122,9123,9124,9109] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.447]
select surf_pocket26, protein and id [8211,8199,8438,8480,8210,7606,7933,7603,7924,8437,7627,8474,8439] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.533]
select surf_pocket27, protein and id [3041,3046,3056,3061,3068,3062,3047,3050,3057,3119,3116,3107,315,316,317,3075,274,284,290,3128,277,1179] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.380]
select surf_pocket28, protein and id [8657,8658,8695,8727,8729,8696,8647,8698,8452,8454,8754,8756,8426,8462] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.447]
select surf_pocket29, protein and id [11843,11922,11923,11924,11892,11894,11635,11891,11887,11955,11642,11609,11611] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.314]
select surf_pocket30, protein and id [9947,9978,9980,6503,6505,6469,9711,9689,9691,6467,6468,6376,6379,6411,6412,6466,6378,6504,9661,6388,9690] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.361]
select surf_pocket31, protein and id [11369,11371,11370,11660,11659,11356,11103,11621,11622,10784,11104,11381,11382,11655] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.314,0.278]
select surf_pocket32, protein and id [5321,5612,5643,5640,5323,5619,5639,5380,5392,5394,5532,5533,5506] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.447,0.361]
select surf_pocket33, protein and id [4556,4558,4557,4590,4592,4553,4591,4516,6053,4550,4579,4578,4580,5976,5979,5966,4895,4685,5964,4923] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.380,0.278]
select surf_pocket34, protein and id [10797,12308,12313,10831,10833,10757,11135,12318,12323,10788,10789,10791,12395,10765,10794] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.533,0.361]
select surf_pocket35, protein and id [4670,5940,5945,5947,4633,4634,4635,4668,5959,4626,4627,4630,4640,4632,4628,4659,5865,5853,5863,5854] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.447,0.278]
select surf_pocket36, protein and id [1396,1398,1400,2721,1429,2734,1401,2735,2718,2747,2733,2745,2825,1436,1438] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.620,0.361]
select surf_pocket37, protein and id [7695,8997,8998,9001,8984,7733,9083,9008,9010,9088,7724,7731,7689,7690,7691,7692,7693] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.514,0.278]
select surf_pocket38, protein and id [1912,1913,2155,2156,2157,2198,1635,1634,1314,1315,1901,1887] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.706,0.361]
select surf_pocket39, protein and id [10040,10039,10290,10669,10671,10673,10643,10691,10693,10179,10306] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.584,0.278]
select surf_pocket40, protein and id [1222,1224,570,571,1191,1189,1190,1174,837,1200,1202,1204,710] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.792,0.361]
select surf_pocket41, protein and id [11635,10858,11922,11892,11894,11887,11955,11601,10889,12154,12155,10861] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.651,0.278]
select surf_pocket42, protein and id [5215,5217,5220,5221,5251,5254,5708,5723,4749,5732,5738,5729,5730,4768] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.878,0.361]
select surf_pocket43, protein and id [6905,6906,7128,7001,6862,7513,7112,6883,6884,6861] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.682,0.702,0.278]
select surf_pocket44, protein and id [2144,2180,2170,2493,2429,2431,2378,2381,2430] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.835,0.902,0.361]
select surf_pocket45, protein and id [9413,7296,6477,6435] 
set surface_color,  pcol45, surf_pocket45 
   
        
        deselect
        
        orient
        