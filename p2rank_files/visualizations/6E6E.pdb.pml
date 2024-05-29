
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
        
        load "data/6E6E.pdb", protein
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
 
        load "data/6E6E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8758,8759,8760,8762,8763,8766,8774,9660,8778,9842,9843,8776,9841,8767,9679,9671,9767,9674,9675,9766,9774,9643,9301,9304,9308,9309,9333,9695,9696,9280,8752,14952,8740,8746,8749,14921,14928,14926,9325,9672,10096,14930,9859,9860,9890,9658,14951,14924,9891,10149,8743,8797,8798,8894,9259,9277,9254,9054,9132,9133,9134,8909,8910,8761,8911,9025,8741,8796,8893,9237,9255,9240,9053,8903,8907,9275,9273,9271] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5392,5391,4467,4468,5375,5462,4974,4978,4981,5002,4594,4596,4938,4955,4611,4612,4941,4726,4972,4593,4595,4956,4834,4754,4755,4448,4450,4452,4453,4459,4462,4460,4461,4463,4464,4442,4444,4445,4441,4447,4598,4604,4497,4498,4499,4608,4610,5009,5010,5034,5005,5365,5367,5368,5370,5356] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [6615,7533,7620,7549,7550,7132,7136,7139,7160,6614,6742,7130,7113,7114,6992,7118,6755,6758,6882,6883,6912,6913,7099,6884,6595,6607,6581,6582,6583,6586,6585,6608,6609,6610,6611,6646,6644,6645,7528,7525,7526,7167,7168,7163,7192,7514,7529] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [10905,11812,11813,11454,11455,11479,11815,11816,11907,11836,11837,11450,11447,11426,10897,10898,10885,10886,10908,10909,10913,11820,11908,11053,11055,10943,11400,11401,11279,11200,11278,11280,10942,10944,10887,10889,11417,11419,11421,11040,11405,11423,11056,11057,11169,11170,11171,11199,11038,11383,11386,11039,11041,11043,11049] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [15691,15308,15668,15669,15321,15324,15323,15325,15437,15438,15439,15685,15687,15155,15157,15210,15211,15153,15159,15160,15161,15172,15173,15174,15212,15306,15307,15309,15311,15654,15317,15547,16191,16193,15467,15468,16104,16080,16083,15181,16172,16175,16176,16088,15694,16105,15715,15718,15722,15723,15154,15166,15176,15177,15180,15747,16081] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [13049,13085,13198,13196,13541,13084,13181,13546,13030,13564,13558,13560,13310,13312,13311,13028,13083,13026,13031,13046,13047,13527,13190,13194,13180,13179,13182,13184,13419,13421,13542,13420,13340,13341,13977,13978,13588,13591,13595,13567,13027,13956,13957,14048,13953,13048,13050,13054,13961,13039,13954,13596,13620] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [151,152,134,136,189,191,190,292,669,671,137,132,530,531,452,652,675,1168,160,423,153,155,156,308,1183,451,305,635,653,638,145,702,699,1095,1096,1097,133,678,1167,1075,159,1080,1164,706,707,1072,1073] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2860,3226,2306,2308,2343,2344,2345,2461,2293,2305,3321,3230,3318,2685,3229,3249,3250,3251,2449,2455,2459,2462,2789,2806,2807,2605,2606,2792,3322,2313,2314,2463,2575,2576,2577,2309,3234,3337,2823,2291,2290,2444,2445,2446,2447,2288,2811,2829,2856,2286,2287,2832,2853,2825] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [9024,8765,9021,9787,9788,9789,9790,8771,8772,8773,8775,8990,8992,9017,8993,8996,8762,8763,8774,9660,8778,8776,9830,9835,9839,9773,9774,9643,9795,9796,9797,9679] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [7497,7514,7714,4208,7526,7692,4238,4239,6792,4247,4248,4249,6616,6604,6609,6610,6611,6622,6795,6800,6624,6801,6623,6625,6626,7628,6614,7533] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [10922,11800,11801,10908,10909,10911,11799,11784,11820,17078,17079,11983,11984,11813,17048,17051,11471,12032] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [5354,5356,5555,5557,5368,5026,2057,5586,5587,2063,5792,2084,2054,2085] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [12057,12060,12104,12633,12634,12053,12087,12089,9731,9446,12090,9723,12618,12615,12626,12627,12613,12411,12410,9398,9447,9448,9449] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [8790,8810,4399,4408,8708,8711,8807,8918,8710,8916,8917,8922,8667,9232,9231,4416,9211,9212,4414] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3343,3344,3352,2323,2539,2538,2540,2541,2518,2519,2510,3342,2324,2325,2322,2576,2318,2319,2320,2321,2542,2573,2544] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [4464,4475,2094,2095,4469,4477,4476,4478,4479,5339,5469,5470,5492,4467,5375,5468,5356,5534,5368,2084,2085] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [1190,1198,171,165,166,167,168,169,170,419,1188,422,385,386,388,410,355,365,415] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [11062,11063,10856,10857,10953,11064,11376,10854,11068,10936,6549,6542,6543,6557,11357,11358,11378,11377,6555] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [14647,14866,14868,14937,14644,14936,9329,9330,9356,9357,9327,9331,9332,9360,9363,14704,14705,14674,14835,14834] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3990,3992,3991,4120,4122,3933,4156,4223,4224,4153,4155,3958,3961,3931,3934,7186,7189,7192,7190,7191,7216,7219,7188,7215,7222] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        